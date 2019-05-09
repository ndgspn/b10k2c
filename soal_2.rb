class Register
  attr_accessor :username, :password

  def initialize(username, password)
    @username   = username
    @password   = password
  end

  def call
    register_user
  end

  def register_user
   if validate_user && validate_password
     true
   else
     false
   end
  end

  def validate_user
    if username == nil || username.length < 8
      false
    else
      true
    end
  end

  def validate_password
    return true if password.length >= 8
  end
end

reg1 = Register.new('john', '12345678').call
reg2 = Register.new('naruto123', '123').call
reg3 = Register.new('naruto123', '12345678').call
reg4 = Register.new('', 'pass').call
reg5 = Register.new('nano12345', 'pass#*@$%').call

puts reg1
puts reg2
puts reg3
puts reg4
puts reg5
