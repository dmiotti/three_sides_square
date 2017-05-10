defmodule ThreeSidesSquare do

  def read_line(line) do
    line
    |> String.split(~r/\W/, trim: true)
    |> Enum.map(fn x -> String.to_integer(x) end)
    |> List.to_tuple
  end

  def is_triangle_valid({d1, d2, d3}) do
    d2 + d3 < d1 or d3 + d1 < d2 or d1 + d2 < d3
  end
end
