require 'test_helper'

class NotificationsTest < ActionMailer::TestCase
  test "new_flight" do
    mail = Notifications.new_flight
    assert_equal "New flight", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "A new flight has been added.", mail.body.encoded
  end

end
