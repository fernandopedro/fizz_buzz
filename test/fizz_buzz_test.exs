defmodule FizzBuzzTest do
  use ExUnit.Case

  describe "build/1" do
    test "if user provide a valid file, then return is a converted list" do
      expected_response = {:ok, [1, 2, :fizz, 4, :buzz, :buzz, :fizzbuzz, :buzz]}
      assert FizzBuzz.build("numbers.txt") == expected_response
    end


    test "if user provide an invalid file, then return is an error" do
      expected_response = {:error, "Error reading the file: enoent"}
      assert FizzBuzz.build("invalid_file.txt") == expected_response
    end
  end
end
