defmodule ViaTelemetry.Ubx.ClassDefs do
  defmacro nav, do: 0x01
  defmacro accel_gyro, do: 0x11
  defmacro vehicle_cmds, do: 0x12
  defmacro vehicle_state, do: 0x50
end
