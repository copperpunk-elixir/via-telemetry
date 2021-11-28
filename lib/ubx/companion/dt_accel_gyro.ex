defmodule ViaTelemetry.Ubx.Companion.DtAccelGyro do
  require ViaTelemetry.Ubx.MsgClasses, as: MsgClasses
  require ViaTelemetry.Ubx.Bytes
  require ViaTelemetry.Ubx.Companion.MsgIds, as: MsgIds
  require ViaUtils.Constants, as: VC
  require ViaUtils.Shared.ValueNames, as: SVN
  defmacro class, do: MsgClasses.companion()
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

  def get_class(), do: class()
  def get_id(), do: id()
  def get_bytes(), do: bytes()
  def get_multipliers(), do: multipliers()
  def get_keys(), do: keys()
end
