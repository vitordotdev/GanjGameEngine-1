/*
 Developed by Vitor Felipe Ramos Mello - Copyright � GanjGameStudio - 2023
*/


#include "Common.h"
#include "CommonHeaders.h"
#include "Id.h"
#include "../GanjGameEngine/Components/Entity.h"
#include "../GanjGameEngine/Components/Transform.h"

using namespace GanjGameEngine;

namespace
{

	struct transform_component
	{
		f32 position[3];
		f32 rotation[3];
		f32 scale[3];

		transform::init_info to_init_info()
		{
			using namespace DirectX;
			transform::init_info info{};
			memcpy(&info.position[0], &position[0], sizeof(f32) * _countof(position));
			memcpy(&info.scale[0], &scale[0], sizeof(f32) * _countof(scale));
			XMFLOAT3A rot{ &rotation[0] };
			XMVECTOR quat{ XMQuaternionRotationRollPitchYawFromVector(XMLoadFloat3A(&rot)) }; // Converts Quaternion representation to EulerAngles																						    representation: rotation[4] --> rotation.EulerAngles();
			XMFLOAT4A rot_quat{};
			XMStoreFloat4A(&rot_quat, quat);
			memcpy(&info.rotation[0], &rot_quat.x, sizeof(f32) * _countof(info.rotation));

			return info;


		}
		/// XMQuaternionRotationRollPitchYawFromVector()
		/// XMQuaternionRotationRollPitchYawToVector()
	};

	struct game_entity_descriptor
	{
		transform_component transform;
	};

	game_entity::entity entity_from_id(id::id_type id)
	{
		return game_entity::entity{ game_entity::entity_id{id} };
	}
} // Anonymous namespace

EDITOR_INTERFACE
id::id_type CreateGameEntity(game_entity_descriptor* e)
{
	assert(e);
	game_entity_descriptor& desc{ *e };
	transform::init_info transform_info{ desc.transform.to_init_info() };

	game_entity::entity_info entity_info
	{
		&transform_info,
	};

	return game_entity::create(entity_info).get_id();
}


EDITOR_INTERFACE
void RemoveGameEntity(id::id_type id)
{
	assert(id::is_valid(id));
	game_entity::remove(game_entity::entity_id{ id });
}