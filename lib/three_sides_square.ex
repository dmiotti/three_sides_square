defmodule ThreeSidesSquare do

  def count_valid_triangles(file_name) do
    read_file(file_name)
    |> Enum.map(fn x -> read_line(x) end)
    |> transpose()
    |> Enum.count(fn x -> is_triangle_valid(x) end)
  end

  def read_file(file_name) do
    File.read(file_name)
    |> elem(1)
    |> String.split("\n")
  end

  def read_line(line) do
    line
    |> String.split(~r/\W/, trim: true)
    |> Enum.map(fn x -> String.to_integer(x) end)
    |> List.to_tuple
  end

  def transpose([a, b, c | rest]) do
    if length(rest) >= 3 do
      List.zip([a, b, c]) ++ transpose(rest)
    else
      List.zip([a, b, c])
    end
  end

  def is_triangle_valid({d1, d2, d3}) do
    d2 + d3 > d1 and d3 + d1 > d2 and d1 + d2 > d3
  end
end
