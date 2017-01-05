defmodule Physics.RocketryTest do
  use ExUnit.Case
  doctest Physics.Rocketry

  import Physics.Rocketry

  test "escape velocity of earth is correct" do
    ev = escape_velocity(:earth)
    assert ev == 11.2
  end

  test "escape velocity of the moon is correct" do
    ev = escape_velocity(:moon)
    assert ev == 2.4
  end

  test "escape velocity of planet X is correct" do
    ev = %{mass: 4.0e22, radius: 6.21e6}
      |> escape_velocity

    assert ev == 1.0
  end

  test "orbital acceleration for height of 100km above earth" do
    x = orbital_acceleration(100)
    assert x == 9.512678810620692
  end

  test "orbital term for 100km above earth" do
    term = orbital_term(7000)
    assert_in_delta term, 4.5, 0.5
  end

  test "orbital height in km for 4 hour duration" do
    assert orbital_height(4) == 6419
  end
end
