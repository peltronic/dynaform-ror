class Formcomponent < ApplicationRecord

  include Sluggable, Guidable

  def sluggable_fields
    ['fcname']
  end

end
