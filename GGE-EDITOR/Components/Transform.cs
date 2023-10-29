using GGE_EDITOR.Utilities;
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
        public override IMSComponent GetMultiselectionComponent(MSEntity msEntity) => new MSTransform(msEntity);

        public Transform(GameEntity owner) : base(owner)
        {

        }

    }

    sealed class MSTransform : MSComponent<Transform>
    {
        #region POSITION (X,Y,Z)
        // ---- X --- //
        private float? _posX;
        public float? PosX { get => _posX; set { if (!_posX.IsTheSameAs(value)) { _posX = value; OnPropertyChanged(nameof(PosX)); } } }
        // ---------- //

        // ---- Y --- //
        private float? _posY;
        public float? PosY { get => _posY; set { if (!_posY.IsTheSameAs(value)) { _posY = value; OnPropertyChanged(nameof(PosY)); } } }
        // ---------- //

        // ---- Z --- //
        private float? _posZ;
        public float? PosZ { get => _posZ; set { if (!_posZ.IsTheSameAs(value)) { _posZ = value; OnPropertyChanged(nameof(PosZ)); } } }
        // ---------- //
        #endregion

        #region ROTATION (X,Y,Z)
        // ---- X --- //
        private float? _rotX;
        public float? RotX { get => _rotX; set { if (!_rotX.IsTheSameAs(value)) { _rotX = value; OnPropertyChanged(nameof(RotX)); } } }
        // ---------- //

        // ---- Y --- //
        private float? _rotY;
        public float? RotY { get => _rotY; set { if (!_rotY.IsTheSameAs(value)) { _rotY = value; OnPropertyChanged(nameof(RotY)); } } }
        // ---------- //

        // ---- Z --- //
        private float? _rotZ;
        public float? RotZ { get => _rotZ; set { if (!_rotZ.IsTheSameAs(value)) { _rotZ = value; OnPropertyChanged(nameof(RotZ)); } } }
        // ---------- //
        #endregion

        #region SCALE (X,Y,Z)
        // ---- X --- //
        private float? _scaleX;
        public float? ScaleX { get => _scaleX; set { if (!_scaleX.IsTheSameAs(value)) { _scaleX = value; OnPropertyChanged(nameof(ScaleX)); } } }
        // ---------- //

        // ---- Y --- //
        private float? _scaleY;
        public float? ScaleY { get => _scaleY; set { if (!_scaleY.IsTheSameAs(value)) { _scaleY = value; OnPropertyChanged(nameof(ScaleY)); } } }
        // ---------- //

        // ---- Z --- //
        private float? _scaleZ;
        public float? ScaleZ { get => _scaleZ; set { if (!_scaleZ.IsTheSameAs(value)) { _scaleZ = value; OnPropertyChanged(nameof(ScaleZ)); } } }
        // ---------- //
        #endregion



        protected override bool UpdateComponents(string propertyName)
        {
            switch (propertyName)
            {
                case nameof(PosX):
                case nameof(PosY):
                case nameof(PosZ):
                    SelectedComponents.ForEach(c => c.Position = new Vector3(_posX ?? c.Position.X, _posY ?? c.Position.Y, _posZ ?? c.Position.Z));
                    return true;

                case nameof(RotX):
                case nameof(RotY):
                case nameof(RotZ):
                    SelectedComponents.ForEach(c => c.Rotation = new Vector3(_rotX ?? c.Rotation.X, _rotY ?? c.Rotation.Y, _rotX ?? c.Rotation.Z));
                    return true;

                case nameof(ScaleX):
                case nameof(ScaleY):
                case nameof(ScaleZ):
                    SelectedComponents.ForEach(c => c.Scale = new Vector3(_scaleX ?? c.Scale.X, _scaleY ?? c.Scale.Y, _scaleZ ?? c.Scale.Z));
                    return true;
            }

            return false;
        }

        protected override bool UpdateMSComponents()
        {
            PosX = MSEntity.GetMixedValue(SelectedComponents, new Func<Transform, float>(x => x.Position.X));
            PosY = MSEntity.GetMixedValue(SelectedComponents, new Func<Transform, float>(x => x.Position.Y));
            PosZ = MSEntity.GetMixedValue(SelectedComponents, new Func<Transform, float>(x => x.Position.Z));

            RotX = MSEntity.GetMixedValue(SelectedComponents, new Func<Transform, float>(x => x.Rotation.X));
            RotY = MSEntity.GetMixedValue(SelectedComponents, new Func<Transform, float>(x => x.Rotation.Y));
            RotZ = MSEntity.GetMixedValue(SelectedComponents, new Func<Transform, float>(x => x.Rotation.Z));

            ScaleX = MSEntity.GetMixedValue(SelectedComponents, new Func<Transform, float>(x => x.Scale.X));
            ScaleY = MSEntity.GetMixedValue(SelectedComponents, new Func<Transform, float>(x => x.Scale.Y));
            ScaleZ = MSEntity.GetMixedValue(SelectedComponents, new Func<Transform, float>(x => x.Scale.Z));

            return true;
        }

        public MSTransform(MSEntity msEntity) : base(msEntity)
        {
            Refresh();
        }
    }
}
