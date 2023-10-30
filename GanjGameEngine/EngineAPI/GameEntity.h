/*
 Developed by Vitor Felipe Ramos Mello - Copyright © GanjGameStudio - 2023
*/
#pragma once
#include "../Components/ComponentsCommon.h"
#include "TransformComponent.h"
#include "ScriptComponent.h"

namespace GanjGameEngine
{
	namespace game_entity
	{
		DEFINE_TYPED_ID(entity_id);

		class entity
		{
		public:
			constexpr explicit entity(entity_id id) : _id{ id } { }
			constexpr entity() : _id{ id::invalid_id } { }
			constexpr entity_id get_id() const { return _id; }
			constexpr bool is_valid() const { return id::is_valid(_id); }

			transform::component transform() const;
			script::component script() const;
		private:
			entity_id _id;
		};
	} // Namespace Entity


	namespace script
	{
		// MonoBehaviour
		class entity_script : public game_entity::entity
		{
		public:
			virtual ~entity_script() = default;
			virtual void begin_play() { } // private void Awake();
			virtual void update(float) { } // private void Update();

		protected:
			constexpr explicit entity_script(game_entity::entity entity)
				: game_entity::entity{ entity.get_id() } {}
		};
		/*
		class my_player_character : public entity_script
		{
			public:
			void update (float dt) override
			{
				// Do player character update
			}
		};
		*/
		namespace detail
		{
			using script_ptr = std::unique_ptr<entity_script>;
			using script_creator = script_ptr(*)( game_entity::entity entity );

			template<class script_class>
			script_ptr create_script(game_entity::entity entity)
			{
				assert(entity.is_valid());
				// create an instance of the script and return a pointer to the script
				return std::make_unique<script_class>(entity);
			}
		} // Namespace detail

	} // Namespace Script

}
