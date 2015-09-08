# Setup Twilio

require 'twilio-ruby'

account_sid = "ACf88f682ed2162906cdefe270c4f1cb33"
auth_token = "6b1375e4c592bfa5584791b181bf6196"

@client = Twilio::REST::Client.new(account_sid, auth_token)

# Get the user to ask the magic 8 ball their question then promptly ignore their answer

puts "What is your question?:"
gets.strip

# Generate a random number between 1 and 20 and select the corresponding magic 8 ball response

prng = Random.new(1234)
random_number = prng.rand(1..20)

case random_number
when 1
	magic_8_response = "It is certain"
when 2
	magic_8_response = "It is decidedly so"
when 3
	magic_8_response = "Without a doubt"
when 4
	magic_8_response = "Yes definitely"
when 5
	magic_8_response = "You may rely on it"
when 6
	magic_8_response = "As I see it, yes"
when 7
	magic_8_response = "Most likely"
when 8
	magic_8_response = "Outlook good"
when 9
	magic_8_response = "Yes"
when 10
	magic_8_response = "Signs point to yes"
when 11
	magic_8_response = "Reply hazy try again"
when 12
	magic_8_response = "Ask again later"
when 13
	magic_8_response = "Better not tell you now"
when 14
	magic_8_response = "Cannot predict now"
when 15
	magic_8_response = "Concentrate and ask again"
when 16
	magic_8_response = "Don't count on it"
when 17
	magic_8_response = "My reply is no"
when 18
	magic_8_response = "My sources say no"
when 19
	magic_8_response = "Outlook not so good"
when 20
	magic_8_response = "Very doubtful"
end

# Send the magic 8 ball response via SMS

message = @client.account.messages.create(
	:from => "+441274288490",
	:to => "+447812811545",
	:body => "#{magic_8_response}"
)

puts message.to
