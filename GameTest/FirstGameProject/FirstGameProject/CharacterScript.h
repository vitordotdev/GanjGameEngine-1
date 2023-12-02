#pragma once
#include <string>

namespace first_game_project
{
	REGISTER_SCRIPT(character_script);

	class character_script : public GanjGameEngine::script::entity_script
	{
	public:
		constexpr explicit character_script(GanjGameEngine::game_entity::entity entity)
			: GanjGameEngine::script::entity_script(entity){ }

		void update(float dt) override;
	};
}