defmodule ViaTelemetry.Ubx.Custom.Multipliers do
  require ViaUtils.Constants, as: VC
  defmacro accel_x_mpss(), do: VC.gravity() / 8192
  defmacro accel_y_mpss(), do: VC.gravity() / 8192
  defmacro accel_z_mpss(), do: VC.gravity() / 8192
  defmacro actuator_scaled(), do: 1.0e-4
  defmacro agl_m(), do: 1.0e-2
  defmacro airspeed_mps(), do: 1.0e-2
  defmacro altitude_m(), do: 1.0e-2
  defmacro altitude_rate_mps(), do: 1.0e-2
  defmacro course_rad(), do: 1.0e-4
  defmacro course_rate_rps(), do: 1.0e-4
  defmacro deltayaw_rad(), do: 1.0e-4
  defmacro groundspeed_mps(), do: 1.0e-2
  defmacro gyro_x_rps(), do: VC.deg2rad() / 16.4
  defmacro gyro_y_rps(), do: VC.deg2rad() / 16.4
  defmacro gyro_z_rps(), do: VC.deg2rad() / 16.4
  defmacro latitude_rad(), do: 1.0e-8
  defmacro pilot_control_level(), do: 1
  defmacro pitch_rad(), do: 1.0e-4
  defmacro pitchrate_rps(), do: 1.0e-2
  defmacro longitude_rad(), do: 1.0e-8
  defmacro roll_rad(), do: 1.0e-4
  defmacro rollrate_rps(), do: 1.0e-2
  defmacro sideslip_rad(), do: 1.0e-4
  defmacro throttle_scaled(), do: 1.0e-4
  defmacro thrust_scaled(), do: 1.0e-4
  defmacro yaw_rad(), do: 1.0e-4
  defmacro yawrate_rps(), do: 1.0e-2
  defmacro time_since_boot_s(), do: 1.0e-3
  defmacro v_east_mps(), do: 1.0e-2
  defmacro v_north_mps(), do: 1.0e-2
  defmacro vehicle_id(), do: 1
  defmacro vertical_velocity_mps(), do: 1.0e-2
end
