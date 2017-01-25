require 'test_helper'

class LeadMagnetMailerTest < ActionMailer::TestCase
  test "send_playbook" do
    mail = LeadMagnetMailer.send_playbook
    assert_equal "Send playbook", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
