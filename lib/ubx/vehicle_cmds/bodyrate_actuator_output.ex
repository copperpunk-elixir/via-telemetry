defmodule ViaTelemetry.Ubx.VehicleCmds.BodyrateActuatorOutput do
  require ViaTelemetry.Ubx.ClassDefs, as: ClassDefs
  require ViaTelemetry.Ubx.VehicleCmds.MsgIds, as: MsgIds
  require ViaUtils.Shared.ActuatorNames, as: SAN
  defmacro class, do: ClassDefs.vehicle_cmds()
  defmacro id, do: MsgIds.bodyrate_actuator_output()
  defmacro bytes, do: [-2, -2, -2, -2]
  defmacro multipliers, do: [1.0e-4, 1.0e-4, 1.0e-4, 1.0e-4]
  defmacro keys, do: [SAN.aileron(), SAN.elevator(), SAN.rudder(), SAN.throttle()]

  def get_class(), do: class()
  def get_id(), do: id()
  def get_bytes(), do: bytes()
  def get_multipliers(), do: multipliers()
  def get_keys(), do: keys()
end
