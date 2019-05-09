def square(n)
  begin
    if n.odd?
      1.upto(n) do | row |
        if row % 3 != 0
          puts "#{'*'} #{'= ' * (n - 2)}#{'*'}"
        else
          puts "#{'* ' * n}"
        end
      end
    else
      puts 'Must odd number!'
    end
  rescue
    puts 'Must integer number!'
  end
end

square(5)
puts "---------"
square(7)
puts "---------"
square(8)
puts "---------"
square(8.5)
puts "---------"
square('blabla')
puts "---------"
square("8")
