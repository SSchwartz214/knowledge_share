require 'twilio-ruby'

account_sid = 'ACb9d805ab1ed460dd1ada840a18fd9885'
auth_token = '64f99eee71b4cc46b0face1a68165351'
client = Twilio::REST::Client.new(account_sid, auth_token)

from = '+17866611491' # Your Twilio number
to = '+15166591396' # Your mobile phone number

client.messages.create(
from: from,
to: to,
body: "Hey friend!"
)
