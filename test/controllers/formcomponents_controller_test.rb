require 'test_helper'

class FormcomponentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @formcomponent = formcomponents(:one)
  end

  test "should get index" do
    get formcomponents_url, as: :json
    assert_response :success
  end

  test "should create formcomponent" do
    assert_difference('Formcomponent.count') do
      post formcomponents_url, params: { formcomponent: { fcname: @formcomponent.fcname } }, as: :json
    end

    assert_response 201
  end

  test "should show formcomponent" do
    get formcomponent_url(@formcomponent), as: :json
    assert_response :success
  end

  test "should update formcomponent" do
    patch formcomponent_url(@formcomponent), params: { formcomponent: { fcname: @formcomponent.fcname } }, as: :json
    assert_response 200
  end

  test "should destroy formcomponent" do
    assert_difference('Formcomponent.count', -1) do
      delete formcomponent_url(@formcomponent), as: :json
    end

    assert_response 204
  end
end
