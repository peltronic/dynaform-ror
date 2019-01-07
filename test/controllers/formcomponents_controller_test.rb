require 'test_helper'

class FormcomponentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @formcomponent = formcomponents(:one)
  end

  test "should get index" do
    get formcomponents_url
    assert_response :success
  end

  test "should get new" do
    get new_formcomponent_url
    assert_response :success
  end

  test "should create formcomponent" do
    assert_difference('Formcomponent.count') do
      post formcomponents_url, params: { formcomponent: { fcname: @formcomponent.fcname } }
    end

    assert_redirected_to formcomponent_url(Formcomponent.last)
  end

  test "should show formcomponent" do
    get formcomponent_url(@formcomponent)
    assert_response :success
  end

  test "should get edit" do
    get edit_formcomponent_url(@formcomponent)
    assert_response :success
  end

  test "should update formcomponent" do
    patch formcomponent_url(@formcomponent), params: { formcomponent: { fcname: @formcomponent.fcname } }
    assert_redirected_to formcomponent_url(@formcomponent)
  end

  test "should destroy formcomponent" do
    assert_difference('Formcomponent.count', -1) do
      delete formcomponent_url(@formcomponent)
    end

    assert_redirected_to formcomponents_url
  end
end
