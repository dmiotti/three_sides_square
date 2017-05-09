defmodule ThreeSidesSquare do
  def is_triangle_valid({d1, d2, d3}) do
    d2 + d3 < d1 or d3 + d1 < d2 or d1 + d2 < d3
  end
end
