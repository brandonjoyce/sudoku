defmodule Sudoku do
  @numbers = [1,2,3,4,5,6,7,8,9]
  defmodule Cell do
    defstruct [x: 0, y: 0, possible: @numbers]
  end

  def solve(puzzle) do
    puzzle
    |> map_rows_to_cells()
    |> solve_cells()
    |> map_cells_to_rows()
  end

  defp map_rows_to_cells(rows, cells \\ [])
  defp map_rows_to_cells([], cells), do: cells
  defp map_rows_to_cells([row | rows], cells) do
    y = 8 - Enum.count(rows)
    mapped_cells = Enum.map(0..8, fn(x) ->
      value = Enum.at(row, x)
      possible if value, do: [value], else: @numbers
      %Cell{x: x, y: y, possible: possible}
    end)
    map_rows_to_cells(rows, cells ++ mapped_cells)
  end

  defp map_cells_to_rows(cells) do
    cells
    |> Enum.map(fn(%Cell{possible: [value | _]}) -> value end)
    |> Enum.chunk_every(9)
  end

  defp solve_cells(cells) do
    cells
    |> check_rows()
  end

  defp check_rows(cells) do
    # TODO
  end
end
