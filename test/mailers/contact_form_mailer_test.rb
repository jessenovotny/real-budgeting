require 'test_helper'

class ContactFormMailerTest < ActionMailer::TestCase
  test "notify_admin" do
    mail = ContactFormMailer.notify_admin
    assert_equal "Notify admin", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
