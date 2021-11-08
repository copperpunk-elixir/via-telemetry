defmodule ViaTelemetry.Ubx.VehicleState.Attitude do
  require ViaTelemetry.Ubx.ClassDefs, as: ClassDefs
  require ViaUtils.Shared.ValueNames, as: SVN
  require ViaTelemetry.Ubx.VehicleState.MsgIds, as: MsgIds
  defmacro class, do: ClassDefs.vehicle_state()
  defmacro id, do: MsgIds.attitude()
  defmacro bytes, do: [4, -2, -2, 2, -2, -2, -2]

  defmacro multipliers,
    do: [
      1.0e-3,
      1.0e-4,
      1.0e-4,
      1.0e-4,
      1.0e-2,
      1.0e-2,
      1.0e-2
    ]

  # defmacro time_since_boot_s(), do: SVN.time_since_boot_s()
  # defmacro roll_rad(), do: SVN.roll_rad()
  # defmacro pitch_rad(), do: SVN.pitch_rad()
  # defmacro yaw_rad(), do: SVN.yaw_rad()
  # defmacro rollrate_rps(), do: SVN.rollrate_rps()
  # defmacro pitchrate_rps(), do: SVN.pitchrate_rps()
  # defmacro yawrate_rps(), do: SVN.yawrate_rps()

  defmacro keys,
    do: [
      SVN.time_since_boot_s(),
      SVN.roll_rad(),
      SVN.pitch_rad(),
      SVN.yaw_rad(),
      SVN.rollrate_rps(),
      SVN.pitchrate_rps(),
      SVN.yawrate_rps()
    ]

  def get_keys(), do: keys()
  def get_class(), do: class()
  def get_id(), do: id()
  def get_bytes(), do: bytes()
  def get_multipliers(), do: multipliers()
end
