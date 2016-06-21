class Messenger

  def initialize(number, body)
    @number = number
    @body = body
    @user = User.find_by(phone: @number)
  end

  
end
