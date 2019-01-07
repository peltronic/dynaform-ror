require 'test_helper'

class FormcomponentTest < ActiveSupport::TestCase

  test "new formcomponent must have guid" do
    fc = Formcomponent.new(fcname: 'Test Guy')
    fc.save
    #puts fc.guid, fc.fcname
    assert_not_empty(fc.fcname)
    assert_not_nil(fc.fcname)
    assert_not_empty(fc.guid)
    assert_not_nil(fc.guid)
  end

  test "new formcomponent must have slug" do
    fc = Formcomponent.new(fcname: 'Test Guy')
    fc.save
    #puts fc.slug, fc.fcname
    assert_not_empty(fc.fcname)
    assert_not_nil(fc.fcname)
    assert_not_empty(fc.slug)
    assert_not_nil(fc.slug)
  end

  # test "the truth" do
  #   assert true
  # end
end
