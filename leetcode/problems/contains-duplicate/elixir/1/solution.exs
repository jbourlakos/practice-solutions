defmodule Solution do

    @moduledoc """
        Task URL: https://leetcode.com/problems/contains-duplicate
        
        Method 1: Sort first then search for adjacent duplicates
        
        Time submitted: 11/16/2022 09:45
        Runtime:        489 ms < 90% Elixir
        Memory:         71.1 MB < 66.67% Elixir
    """

  @spec contains_duplicate(nums :: [integer]) :: boolean

  def contains_duplicate(nums) do
    nums
    |> Enum.sort()
    |> _contains_duplicate_sorted()
  end

  #

  @spec _contains_duplicate_sorted(nums :: [integer]) :: boolean

  defp _contains_duplicate_sorted([]), do: false
  defp _contains_duplicate_sorted([x]), do: false
  defp _contains_duplicate_sorted([x,x|_rest]), do: true
  defp _contains_duplicate_sorted([_head|rest]), do: _contains_duplicate_sorted(rest)

end
