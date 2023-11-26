#pragma once
#include <string>

namespace first_game_project
{
	class character_script;
	namespace
	{
		u8 _reg_character_script
		{
			register_script(std::hash<std::string>()( "character_script" ), &GanjGameEngine::script::detail::create_script<character_script>)
		};
	}

	class character_script : public GanjGameEngine::script::entity_script
	{
	public:
		constexpr explicit character_script(GanjGameEngine::game_entity::entity entity)
			: GanjGameEngine::script::entity_script(entity){ }

		void update(float dt) override;
	};
}