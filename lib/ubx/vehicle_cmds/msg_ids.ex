defmodule ViaTelemetry.Ubx.VehicleCmds.MsgIds do
  alias ViaTelemetry.Ubx.VehicleCmds, as: Cmds
  defmacro actuator_cmd_direct(), do: 0x99
  defmacro bodyrate_actuator_output(), do: 0x00
  defmacro bodyrate_thrust_cmd(), do: 0x01
  defmacro attitude_throttle_cmd(), do: 0x02
  defmacro speed_course_altitude_sideslip_cmd(), do: 0x03

  def get_module_for_id(id) do
    case id do
      actuator_cmd_direct() -> Cmds.ActuatorCmdDirect
      bodyrate_actuator_output() -> Cmds.BodyrateActuatorOutput
      bodyrate_thrust_cmd() -> Cmds.BodyrateThrustCmd
      attitude_throttle_cmd() -> Cmds.AttitudeThrottleCmd
      speed_course_altitude_sideslip_cmd() -> Cmds.SpeedCourseAltitudeSideslipCmd
    end
  end
end
