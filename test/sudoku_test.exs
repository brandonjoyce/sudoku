defmodule SudokuTest do
  use ExUnit.Case
  doctest Sudoku

  test "solves already solved puzzles" do
    puzzle = [
      [1,2,3,4,5,6,7,8,9],
      [2,3,4,5,6,7,8,9,1],
      [3,4,5,6,7,8,9,1,2],
      [4,5,6,7,8,9,1,2,3],
      [5,6,7,8,9,1,2,3,4],
      [6,7,8,9,1,2,3,4,5],
      [7,8,9,1,2,3,4,5,6],
      [8,9,1,2,3,4,5,6,7],
      [9,1,2,3,4,5,6,7,8],
    ]

    assert Sudoku.solve(puzzle) == [
      [1,2,3,4,5,6,7,8,9],
      [2,3,4,5,6,7,8,9,1],
      [3,4,5,6,7,8,9,1,2],
      [4,5,6,7,8,9,1,2,3],
      [5,6,7,8,9,1,2,3,4],
      [6,7,8,9,1,2,3,4,5],
      [7,8,9,1,2,3,4,5,6],
      [8,9,1,2,3,4,5,6,7],
      [9,1,2,3,4,5,6,7,8],
    ]
  end

  test "solves based on row logic" do
    puzzle = [
      [nil,2,3,4,5,6,7,8,9],
      [2,3,4,5,6,nil,8,9,1],
      [3,nil,5,6,7,8,9,1,2],
      [4,5,6,7,8,9,1,nil,3],
      [5,6,7,8,9,1,2,3,4],
      [6,7,8,9,1,2,3,4,5],
      [7,8,9,1,2,3,4,nil,6],
      [8,9,1,2,nil,4,5,6,7],
      [9,nil,2,3,4,5,6,7,8],
    ]

    assert Sudoku.solve(puzzle) == [
      [1,2,3,4,5,6,7,8,9],
      [2,3,4,5,6,7,8,9,1],
      [3,4,5,6,7,8,9,1,2],
      [4,5,6,7,8,9,1,2,3],
      [5,6,7,8,9,1,2,3,4],
      [6,7,8,9,1,2,3,4,5],
      [7,8,9,1,2,3,4,5,6],
      [8,9,1,2,3,4,5,6,7],
      [9,1,2,3,4,5,6,7,8],
    ]
  end
end
