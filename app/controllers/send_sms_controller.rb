class SendSmsController < ApplicationController

	def form_send_message

	end

	def send_text_message
		number_to_send_to = params[:number_to_send_to]
		 
	    twilio_sid = "ACe4ab3b6072e3ac59d1a8e5373a69a5bd"
	    twilio_token = "efb450e5fbe057e54a588d1400a2be79"
	    twilio_phone_number = "14087067138"
	 	
	 	rand_gen = Random.new
	 	@rand_number = rand_gen.rand(1000..9999).to_s
	 	
	 	x = current_user
	 	x.verification_string = @rand_number
	 	x.save

	    @twilio_client = Twilio::REST::Client.new twilio_sid, twilio_token
	 
	    @twilio_client.account.sms.messages.create(
	      :from => "+1#{twilio_phone_number}",
	      :to => number_to_send_to,
	      :body => "This is an message. It gets sent to #{number_to_send_to}. Your verification number is: #{@rand_number}"
	    )
	end
end
