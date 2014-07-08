class UserMailer < ActionMailer::Base
  default from: "morethancoffeewebapp@gmail.com"

  def contact_email(sender, receiver, event)
  	@sender = sender
  	@receiver = receiver
  	@event = event

  	puts @receiver.email

  	mail(to: @receiver.email, subject: "Someone wants to get more than coffee with you!")
  end

end
