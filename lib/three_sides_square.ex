defmodule ThreeSidesSquare do

  def count_valid_triangle(file_name) do
    read_file(file_name)
    |> Enum.count(fn x -> is_triangle_valid(x) end)
  end

  def read_file(file_name) do
    File.read(file_name)
    |> elem(1)
    |> String.split("\n")
    |> Enum.map(fn x -> read_line(x) end)
    |> Enum.filter(fn x -> tuple_size(x) > 0 end)
  end

  def read_line(line) do
    line
    |> String.split(~r/\W/, trim: true)
    |> Enum.map(fn x -> String.to_integer(x) end)
    |> List.to_tuple
  end

  def is_triangle_valid({d1, d2, d3}) do
    d2 + d3 > d1 and d3 + d1 > d2 and d1 + d2 > d3
  end
end
