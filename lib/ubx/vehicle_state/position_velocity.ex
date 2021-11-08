defmodule ViaTelemetry.Ubx.VehicleState.PositionVelocity do
  require ViaTelemetry.Ubx.ClassDefs, as: ClassDefs
  require ViaUtils.Shared.ValueNames, as: SVN
  require ViaTelemetry.Ubx.VehicleState.MsgIds, as: MsgIds
  defmacro class, do: ClassDefs.vehicle_state()
  defmacro id, do: MsgIds.position_velocity()
  defmacro bytes, do: [4, -4, -4, -4, -4, 2, -2, -2, -2]

  defmacro multipliers,
    do: [
      1.0e-3,
      1.0e-8,
      1.0e-8,
      1.0e-2,
      1.0e-2,
      1.0e-2,
      1.0e-2,
      1.0e-2,
      1.0e-2
    ]

  defmacro time_since_boot_s(), do: SVN.time_since_boot_s()
  defmacro latitude_rad(), do: SVN.latitude_rad()
  defmacro longitude_rad(), do: SVN.longitude_rad()
  defmacro altitude_m(), do: SVN.altitude_m()
  defmacro agl_m(), do: SVN.agl_m()
  defmacro airspeed_mps(), do: SVN.airspeed_mps()
  defmacro v_north_mps(), do: SVN.v_north_mps()
  defmacro v_east_mps(), do: SVN.v_east_mps()
  defmacro v_up_mps(), do: SVN.vertical_velocity_mps()

  defmacro keys,
    do: [
      time_since_boot_s(),
      latitude_rad(),
      longitude_rad(),
      altitude_m(),
      agl_m(),
      airspeed_mps(),
      v_north_mps(),
      v_east_mps(),
      v_up_mps()
    ]

  def get_keys(), do: keys()
  def get_class(), do: class()
  def get_id(), do: id()
  def get_bytes(), do: bytes()
  def get_multipliers(), do: multipliers()
end
