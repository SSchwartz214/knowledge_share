class SmsTextMessenger
  attr_reader :message,
              :number

  def initialize(message, number)
    @message = message
    @number = number
  end

  def call
    client = Twilio::REST::Client.new
    client.messages.create({
      from: ENV['PHONE_NUMBER'],
      to: number,
      body: message
    })
  end
end
