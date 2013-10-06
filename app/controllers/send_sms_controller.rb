class SendSmsController < ApplicationController

	def send_text_message
	    number_to_send_to = params[:number_to_send_to]
	    verify_number = params[:verify_number]
	 
	    twilio_sid = "ACe4ab3b6072e3ac59d1a8e5373a69a5bd"
	    twilio_token = "efb450e5fbe057e54a588d1400a2be79"
	    twilio_phone_number = "14087067138"
	 
	    @twilio_client = Twilio::REST::Client.new twilio_sid, twilio_token
	 
	    @twilio_client.account.sms.messages.create(
	      :from => "+1#{twilio_phone_number}",
	      :to => number_to_send_to,
	      :body => "This is an message. It gets sent to #{number_to_send_to}. Your verification number is: "
	    )
  end
end
