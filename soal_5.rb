class RandomString

  def generate(n)
    ran_arr = []
    while ran_arr.length < n do
      key = random(32, alphabet + numbers)
      ran_arr << key
      ran_arr.uniq
    end
    ran_arr
  end

  private

  def random(length, charset)
    Array.new(length) { charset.sample }.flatten.join
  end

  def alphabet
    @alphabet ||= Array('A'..'Z') + Array('a'..'z')
  end

  def numbers
    @numbers ||= Array(0..9)
  end
end

r = RandomString.new
p r.generate(3)
p r.generate(5)

