def square(n)
  1.upto(n) do | row |
    if row % 3 != 0
      puts "#{'*'}#{'#' * (n - 2)}#{'*'}"
    else
      puts "#{'*' * n}"
    end
  end
end

square(5)
puts "---------"
square(7)
