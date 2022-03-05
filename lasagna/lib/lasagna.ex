defmodule Lasagna do
  # 'expected_minutes_in_oven/0' function
  def expected_minutes_in_oven(), do: 40

  # 'remaining_minutes_in_oven/1' function
  def remaining_minutes_in_oven(actual_minutes) do
    expected_minutes_in_oven() - actual_minutes
  end

  # 'preparation_time_in_minutes/1' function
  def preparation_time_in_minutes(layers) do
    layers * 2
  end

  # 'total_time_in_minutes/2' function
  def total_time_in_minutes(layers, actual_minutes) do
    preparation_time_in_minutes(layers) + actual_minutes
  end

  # 'alarm/0' function
  def alarm(), do: "Ding!"
end
