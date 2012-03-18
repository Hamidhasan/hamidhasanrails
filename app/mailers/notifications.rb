class Notifications < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifications.new_flight.subject
  #
  def new_flight(flight)
    @flight = flight
    @greeting = "Hello from Travel Recorder"

    mail to: flight.passenger.email
  end
end
