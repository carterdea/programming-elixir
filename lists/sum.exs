defmodule MyList do
  def sum([], total), do: total
  def sum([head | tail], total), do: sum(tail, head + total)

  defp _sum([], total), do: total
  defp _sum([head | tail], total), do: _sum(tail, head + total)
end
