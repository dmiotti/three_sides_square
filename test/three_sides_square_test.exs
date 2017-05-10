defmodule ThreeSidesSquareTest do
  use ExUnit.Case
  doctest ThreeSidesSquare

  test "count_valid_triangles" do
    nb = ThreeSidesSquare.count_valid_triangles("input_test.txt")
    assert nb == 4
  end

  # test "gen_triangles" do
  #   candidates = [
  #     {827, 183, 81},
  #     {10, 10, 30},
  #     {30, 10, 10},
  #     {10, 30, 10}
  #   ]
  #   triangles = ThreeSidesSquare.gen_triangles(candidates)
  #   assert candidates == [
  #     {827, 10, 81},
  #     {183, 10, 30},
  #     {81, 30, 10}
  #   ]
  # end

  test "transpose" do
    m = [ [1,1,1,1], [2,4,8,16], [2,4,8,16] ]
    res = ThreeSidesSquare.transpose(m)
    assert res == [[1,2,2], [1,4,4], [1,8,8], [1,16,16]]
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
