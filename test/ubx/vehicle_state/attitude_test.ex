defmodule ViaTelemetryUbx.VehicleState.AttitudeTest do
  use ExUnit.Case
  require Logger
  require ViaUtils.Shared.ValueNames, as: SVN
  require ViaTelemetry.Ubx.VehicleState.AttitudeAttrateVal, as: Attitude
  require ViaTelemetry.Ubx.MsgClasses, as: MsgClasses
  alias ViaUtils.Math, as: M

  test "Construct Attitude msg" do
    time_s = 123_456.12345
    roll_deg = 2.345
    pitch_deg = -1.2345
    yaw_deg = 355.9876
    rollrate_dps = 2000.123
    pitchrate_dps = -2000.123
    yawrate_dps = 1000.2345

    ubx = UbxInterpreter.new()

    values = %{
      Attitude.time_since_boot_s() => time_s,
      Attitude.roll_rad() => M.deg2rad(roll_deg),
      Attitude.pitch_rad() => M.deg2rad(pitch_deg),
      Attitude.yaw_rad() => M.deg2rad(yaw_deg),
      Attitude.bodyrate_x_rps() => M.deg2rad(rollrate_dps),
      Attitude.bodyrate_y_rps() => M.deg2rad(pitchrate_dps),
      Attitude.bodyrate_z_rps() => M.deg2rad(yawrate_dps)
    }

    ubx_message =
      UbxInterpreter.construct_message_from_map(
        MsgClasses.vehicle_state(),
        Attitude.id(),
        Attitude.bytes(),
        Attitude.multipliers(),
        Attitude.keys(),
        values
      )

    {_ubx, payload} = UbxInterpreter.check_for_new_message(ubx, :binary.bin_to_list(ubx_message))

    values_rx =
      UbxInterpreter.deconstruct_message_to_map(
        Attitude.bytes(),
        Attitude.multipliers(),
        Attitude.keys(),
        payload
      )

    Logger.debug("values: #{ViaUtils.Format.eftb_map_deg(values, 4)}")

    Logger.debug("values_rx: #{ViaUtils.Format.eftb_map_deg(values_rx, 4)}")
    Enum.each(Enum.zip(Attitude.keys(), Attitude.multipliers()), fn {key, mult} ->
      value = Map.get(values,key)
      value_rx = Map.get(values_rx, key)
      assert_in_delta(value, value_rx, mult)
    end)
    Process.sleep(100)
  end
end
