defmodule ListFilterTest do
  use ExUnit.Case
  doctest ListFilter

  test "It filter every numeric element and return how much odd numbers exists in the list" do
    list = ["1", "3", "6", "43", "banana", "6", "abc"]

    assert ListFilter.call(list) == 3
  end
end
