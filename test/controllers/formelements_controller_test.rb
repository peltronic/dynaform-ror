require 'test_helper'

class FormelementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @formelement = formelements(:one)
  end

  test "should get index" do
    get formelements_url, as: :json
    assert_response :success
  end

  test "should create formelement" do
    assert_difference('Formelement.count') do
      post formelements_url, params: { formelement: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show formelement" do
    get formelement_url(@formelement), as: :json
    assert_response :success
  end

  test "should update formelement" do
    patch formelement_url(@formelement), params: { formelement: {  } }, as: :json
    assert_response 200
  end

  test "should destroy formelement" do
    assert_difference('Formelement.count', -1) do
      delete formelement_url(@formelement), as: :json
    end

    assert_response 204
  end
end
