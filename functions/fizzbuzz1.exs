fizzbuzz1 = fn
  (0, 0, _) -> "Fizzbuzz"
  (0, _, _) -> "Fizz"
  (_, 0, _) -> "Buzz"
  (_, _, n) -> n
end

IO.puts fizzbuzz1.(0,0,5)
IO.puts fizzbuzz1.(0,5,5)
IO.puts fizzbuzz1.(3,0,2)
IO.puts fizzbuzz1.(3,3,4)

fizzbuzz2 = fn n -> 
  IO.puts fizzbuzz1.(rem(n, 3), rem(n, 5), n)
end

# [fizzbuzz2.(10), fizzbuzz2.(11), fizzbuzz2.(12), fizzbuzz2.(13),fizzbuzz2.(14),fizzbuzz2.(15),fizzbuzz2.(16),fizzbuzz2.(17)]
Enum.each (10..17), fn x -> fizzbuzz2.(x) end