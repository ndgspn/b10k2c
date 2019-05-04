# Referensi algoritma
# https://medium.com/@limichelle21/read-it-learn-it-build-it-sorting-algorithms-in-ruby-ead04b04baa6
# Untuk kode ini menggunakan metode `Insertion Sort`, 
# masih coba dipahami karena biasanya langsung pakai method .sort bawaan Ruby

def sort_array(data)
  (data.length).times do |j|
    while j > 0
      if data[j-1].length > data[j].length
        data[j], data[j-1] = data[j-1], data[j]
      else
        break
      end
      j -= 1
    end
  end

  data = data.each do|d|
    p ('a'..'z').to_a & d
  end
end


data1 = [['a','c','b','e','d'],['g','e','f']]
data2 = [['g','h','i','j'],['a','c','b','e','d'],['g','e','f']]
sort_array(data1)
puts "==========="
sort_array(data2)
