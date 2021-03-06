defmodule ViaTelemetry.Ubx.Bytes do
  defmacro accel_x_mpss, do: -2
  defmacro accel_y_mpss, do: -2
  defmacro accel_z_mpss, do: -2
  defmacro actuator_scaled, do: -2
  defmacro agl_m(), do: -4
  defmacro airspeed_mps(), do: 2
  defmacro altitude_m(), do: -4
  defmacro altitude_rate_mps(), do: -2
  defmacro course_rad(), do: -2
  defmacro course_rate_rps(), do: -2
  defmacro deltayaw_rad(), do: -2
  defmacro dt_s(), do: 2
  defmacro groundspeed_mps(), do: 2
  defmacro gyro_x_rps(), do: -2
  defmacro gyro_y_rps(), do: -2
  defmacro gyro_z_rps(), do: -2
  defmacro latitude_rad(), do: -4
  defmacro message_class(), do: 1
  defmacro message_frequency_hz(), do: 1
  defmacro message_id(), do: 1
  defmacro pilot_control_level(), do: 1
  defmacro pitch_rad(), do: -2
  defmacro pitchrate_rps(), do: -2
  defmacro longitude_rad(), do: -4
  defmacro roll_rad(), do: -2
  defmacro rollrate_rps(), do: -2
  defmacro sideslip_rad(), do: -2
  defmacro throttle_scaled(), do: -2
  defmacro thrust_scaled(), do: 2
  defmacro yaw_rad(), do: 2
  defmacro yawrate_rps(), do: -2
  defmacro time_since_boot_s(), do: 4
  defmacro v_east_mps(), do: -2
  defmacro v_north_mps(), do: -2
  defmacro vehicle_id(), do: 1
  defmacro vertical_velocity_mps(), do: -2
end
