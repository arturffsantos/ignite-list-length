defmodule ListLength do
  @moduledoc """
  Documentation for `ListLength`.
  """

  @doc """
  Returns length of the list.

  ## Examples

      iex> ListLength.call([])
      0

      iex> ListLength.call([5, 3])
      2

  """
  def call(list), do: count_list(list, 0)

  defp count_list([], counter), do: counter

  defp count_list([_head | tail], counter) do
    count_list(tail, counter + 1)
  end
end
