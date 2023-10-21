using System;
using System.Collections.Generic;
using System.Numerics;
using System.Runtime.Serialization;
using System.Text;

namespace GGE_EDITOR.Components
{
    [DataContract]
    class Transform : Component
    {
        // Transform.position
        private Vector3 _Position;
        [DataMember] public Vector3 Position { get => _Position; set { if (_Position != value) { _Position = value; OnPropertyChanged(nameof(Position)); } } }


        // Transform.rotation
        private Vector3 _Rotation;
        [DataMember] public Vector3 Rotation { get => _Rotation; set { if (_Rotation != value) { _Rotation = value; OnPropertyChanged(nameof(Rotation)); } } }

        // Transform.scale

        private Vector3 _Scale;
        [DataMember] public Vector3 Scale { get => _Scale; set { if (_Scale != value) { _Scale = value; OnPropertyChanged(nameof(Scale)); } } }

        public Transform(GameEntity owner) : base(owner)
        {

        }
    }
}
