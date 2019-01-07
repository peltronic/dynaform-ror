require 'test_helper'

class FormelementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    #@formelement = formelements(:one)
    #@formelement = { id: 1, fename: 'test FE 1' }
  end

  test "should create formelement" do
    post formelements_url, params: { formelement: { fename: 'test FE' } }, as: :json
    puts @response.body
    assert_response :success
  end

end
