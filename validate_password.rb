class ValidatePassword
  attr_reader :password

  def initialize(password)
    @password = password
  end

  def perform
    password_conditions = [
      (6..24).cover?(password.length),
      password =~ /[A-Z]/,
      password =~ /[a-z]/,
      password =~ /\d/,
      password =~ /[!@#\$%&\*\+=:;?<>]/,
      password !~ /(.)\1{2,}/
    ]

    password_conditions.all?
  end
end
