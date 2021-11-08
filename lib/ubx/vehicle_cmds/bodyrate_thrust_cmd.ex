defmodule ViaTelemetry.Ubx.VehicleCmds.BodyrateThrustCmd do
  require ViaTelemetry.Ubx.ClassDefs, as: ClassDefs
  require ViaTelemetry.Ubx.VehicleCmds.MsgIds, as: MsgIds

  defmacro class, do: ClassDefs.vehicle_cmds()
  defmacro id, do: MsgIds.bodyrate_thrust_cmd()
  defmacro bytes, do: [-2, -2, -2, 2]
  defmacro multipliers, do: [1.0e-3, 1.0e-3, 1.0e-3, 1.0e-4]
  defmacro keys, do: [:rollrate_rps, :pitchrate_rps, :yawrate_rps, :thrust_scaled]

  def get_class(), do: class()
  def get_id(), do: id()
  def get_bytes(), do: bytes()
  def get_multipliers(), do: multipliers()
  def get_keys(), do: keys()
end
