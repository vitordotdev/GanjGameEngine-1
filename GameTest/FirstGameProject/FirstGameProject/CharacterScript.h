#pragma once
namespace first_game_project
{
	class character_script : public GanjGameEngine::script::entity_script
	{
	public:
		constexpr explicit character_script(GanjGameEngine::game_entity::entity entity)
			: GanjGameEngine::script::entity_script(entity){ }

		void update(float dt) override;
	};
}