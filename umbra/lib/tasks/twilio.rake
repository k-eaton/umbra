require 'twilio-ruby' 

 	task :send_text do
		# put your own credentials here 
		account_sid = ENV['ACCOUNT_SID'] 
		auth_token = ENV['AUTH_TOKEN'] 
		 
		# set up a client to talk to the Twilio REST API 
		@client = Twilio::REST::Client.new account_sid, auth_token 
		 
		message = @client.account.messages.create({
			:body => "The concept of commercialism in the fashion and art world is looked down upon. You know, just to think, 'What amount of creativity does it take to make something that masses of people like?' And, 'How does creativity apply across the board?' - Kanye West",
			:from => "+15204418758",
			:to => "+19256396135"
		})
		puts message.to
		puts "send_text triggered."
	end