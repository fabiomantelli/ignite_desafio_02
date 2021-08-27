defmodule ListFilter do
  def call(list) do
    number_list =
      Enum.flat_map(list, fn element ->
        case Integer.parse(element) do
          {int, _rest} -> [int]
          :error -> []
        end
      end)

    odd_list = Enum.filter(number_list, fn element -> rem(element, 2) != 0 end)
    sum_odd_list = Enum.count(odd_list)
    sum_odd_list
  end
end
