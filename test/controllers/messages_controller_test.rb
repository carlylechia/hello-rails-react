require 'test_helper'

class MessagesControllerTest < ActionDispatch::IntegrationTest
  test 'should get greetings' do
    get messages_greetings_url
    assert_response :success
  end
end
