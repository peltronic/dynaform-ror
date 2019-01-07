require 'test_helper'

class FormelementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    #@formelement = formelements(:one)
    #@formelement = { id: 1, fename: 'test FE 1' }
  end

  test "should create formelement" do
    post formelements_url, as: :json, params: { formelement: { fename: 'test FE' } }
    puts @response.body
    assert_response :success
    #assert_redirected_to formelement_url(Formelement.last)
  end

end
