defmodule ViaTelemetry.Ubx.Custom.Companion.DtAccelGyro do
  require ViaTelemetry.Ubx.Custom.ClassDefs, as: ClassDefs
  require ViaTelemetry.Ubx.Custom.Bytes
  require ViaTelemetry.Ubx.Custom.Companion.MsgIds, as: MsgIds
  require ViaUtils.Constants, as: VC
  require ViaUtils.Shared.ValueNames, as: SVN
  defmacro class, do: ClassDefs.companion()
  defmacro id, do: MsgIds.dt_accel_gyro()
  defmacro bytes, do: [2, -2, -2, -2, -2, -2, -2]

  defmacro multipliers,
    do: [
      1.0e-6,
      VC.gravity() / 8192,
      VC.gravity() / 8192,
      VC.gravity() / 8192,
      VC.deg2rad() / 16.4,
      VC.deg2rad() / 16.4,
      VC.deg2rad() / 16.4
    ]

  defmacro keys(),
    do: [
      SVN.dt_s(),
      SVN.accel_x_mpss(),
      SVN.accel_y_mpss(),
      SVN.accel_z_mpss(),
      SVN.gyro_x_rps(),
      SVN.gyro_y_rps(),
      SVN.gyro_z_rps()
    ]
end
