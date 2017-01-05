defmodule Converter do
  def to_nearest_tenth(val) do
    Float.ceil(val, 1)
  end

  def meters_to_km(meters), do: meters / 1000
  def km_to_meters(km), do: km * 1000

  def seconds_to_hours(val)  when is_integer(val) or is_float(val) do
    val / 3600 |> to_nearest_tenth
  end

  def hours_to_seconds(val)  when is_integer(val) or is_float(val) do
    val * 3600
  end

  def round_to(val, precision) when is_float(val) do
    Float.round(val, precision)
  end
end
