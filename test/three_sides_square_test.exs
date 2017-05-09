defmodule ThreeSidesSquareTest do
  use ExUnit.Case
  doctest ThreeSidesSquare

  test "is_triangle_valid with valid triangle" do
    valid = {10, 10, 30}
    assert ThreeSidesSquare.is_triangle_valid(valid)

    valid = {30, 10, 10}
    assert ThreeSidesSquare.is_triangle_valid(valid)

    valid = {10, 30, 10}
    assert ThreeSidesSquare.is_triangle_valid(valid)
  end

  test "is_triangle_valid with non valid triangle" do
    not_valid = {5, 5, 5}
    assert !ThreeSidesSquare.is_triangle_valid(not_valid)
  end
end
