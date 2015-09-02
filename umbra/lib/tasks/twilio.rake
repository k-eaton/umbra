require 'twilio-ruby'


 	task :send_text => :environment do

 		@users = User.where(subscribed: true)

 		@users.each do |user|

			# counter
			i = user.q_count

	 		# pull pos quote from database, update count.
			if user.preference == "pos"
				@quote = PosQuote.find(i)
				@quote_pool = PosQuote.all
				if i == @quote_pool.length
					user.q_count = 1
					user.save
				else
					user.q_count = 2
					user.save
				end
	 		# pull neg quote from database, update count.
			else
				@quote = NegQuote.find(i)
				@quote_pool = NegQuote.all
				if i == @quote_pool.length
					user.update_attributes(q_count: 1)
				else
					user.update_attributes(q_count: i + 1)
				end
			end

		# put your own credentials here 
		# account_sid = ENV['ACCOUNT_SID'] 
		# auth_token = ENV['AUTH_TOKEN'] 
		 
		# # set up a client to talk to the Twilio REST API 
		# @client = Twilio::REST::Client.new account_sid, auth_token 
		 
		# message = @client.account.messages.create({
		# 	:body => @quote.quote + " - " + @quote.author,
		# 	:from => "+15204418758",
		# 	:to => "+19256396135"
		# })
		# puts message.to
		puts "send_text triggered."
		puts "quote id: " + @quote.id.to_s
		puts user.q_count.to_s
		end
	end