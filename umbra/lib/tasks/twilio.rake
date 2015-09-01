require 'twilio-ruby' 


 	task :send_text => :environment do

		# counter
		@i = QCount.find(1)

 		# pull quote from database
		@quote = PosQuote.find(@i.q_count)
		
		# update counter
		@quote_pool = PosQuote.all

		if @i.q_count == @quote_pool.length
			@i.update(q_count: 1)
		else
			@i.update(q_count: @i.q_count + 1)
		end

		# put your own credentials here 
		account_sid = ENV['ACCOUNT_SID'] 
		auth_token = ENV['AUTH_TOKEN'] 
		 
		# set up a client to talk to the Twilio REST API 
		@client = Twilio::REST::Client.new account_sid, auth_token 
		 
		message = @client.account.messages.create({
			:body => @quote.quote + " - " + @quote.author,
			:from => "+15204418758",
			:to => "+19256396135"
		})
		puts message.to
		puts "send_text triggered."
		puts "quote id: " + @quote.id.to_s
		puts @i.q_count.to_s
	end