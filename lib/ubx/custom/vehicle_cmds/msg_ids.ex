defmodule ViaTelemetry.Ubx.Custom.VehicleCmds.MsgIds do
  alias ViaTelemetry.Ubx.Custom.VehicleCmds, as: Cmds
  defmacro actuator_cmd_direct(), do: 0x99
  defmacro controller_actuator_output(), do: 0x00
  defmacro bodyrate_throttle_cmd(), do: 0x01
  defmacro attitude_thrust_cmd(), do: 0x02
  defmacro speed_course_altitude_sideslip_cmd(), do: 0x03
  defmacro speed_courserate_altrate_sideslip_cmd(), do: 0x04

  def get_module_for_id(id) do
    case id do
      actuator_cmd_direct() -> Cmds.ActuatorCmdDirect
      controller_actuator_output() -> Cmds.ControllerActuatorOutput
      bodyrate_throttle_cmd() -> Cmds.BodyrateThrottleCmd
      attitude_thrust_cmd() -> Cmds.AttitudeThrustCmd
      speed_course_altitude_sideslip_cmd() -> Cmds.SpeedCourseAltitudeSideslipCmd
      speed_courserate_altrate_sideslip_cmd() -> Cmds.SpeedCourserateAltrateSideslipCmd
    end
  end
end
