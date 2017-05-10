defmodule ThreeSidesSquareTest do
  use ExUnit.Case
  doctest ThreeSidesSquare

  test "count_valid_triangle" do
    nb = ThreeSidesSquare.count_valid_triangle("input_test.txt")
    assert nb == 4
  end

  test "read_line" do
    line = "  827  183   81"
    assert ThreeSidesSquare.read_line(line) == {827, 183, 81}
  end

  test "is_triangle_valid with valid triangle" do
    valid = {10, 10, 30}
    assert !ThreeSidesSquare.is_triangle_valid(valid)

    valid = {30, 10, 10}
    assert !ThreeSidesSquare.is_triangle_valid(valid)

    valid = {10, 30, 10}
    assert !ThreeSidesSquare.is_triangle_valid(valid)

    valid = {50, 30, 40}
    assert ThreeSidesSquare.is_triangle_valid(valid)
  end

  test "is_triangle_valid with non valid triangle" do
    not_valid = {5, 10, 25}
    assert !ThreeSidesSquare.is_triangle_valid(not_valid)
  end
end
