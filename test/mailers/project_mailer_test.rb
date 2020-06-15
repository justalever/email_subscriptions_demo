require 'test_helper'

class ProjectMailerTest < ActionMailer::TestCase
  test "user_added_to_project" do
    mail = ProjectMailer.user_added_to_project
    assert_equal "User added to project", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
