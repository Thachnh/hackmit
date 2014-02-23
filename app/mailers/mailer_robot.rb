class MailerRobot < ActionMailer::Base
  default :from => "\"Tour Starter Notification\" <tourstarter.notification@tourstarter.com>"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.mailer_robot.book_notification.subject
  #
  def book_notification booking
    @booking = booking
    @first_name = booking.first_name == nil ? "" : booking.first_name
    @greeting = "Hi, #{@first_name}. You successfully book the tour #{booking.scheduled_tour.tour.name} at #{booking.scheduled_tour.start_time}"
    mail :to => booking.email, :subject => "Tourstarter Confirmation"
  end
end
