defmodule MyList do
  def square([]), do: []
  def square([head | tail]), do: [ head*head | square(tail) ]  

  def add_1([]), do: []
  def add_1([head | tail]), do: [head+1 | add_1(tail)]

  def map([], func), do: []
  def map([head | tail], func), do: [func.(head) | map(tail, func)]
end
