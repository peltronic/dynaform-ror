module Sluggable
  extend ActiveSupport::Concern

  included do
    before_create -> { create_slug }
  end

  def create_slug
    field = self::sluggable_fields.pop # %TODO: use multiple fields, for now just use 1
    self.slug = (self[field]).parameterize
  end

end

# %TODO: how to genereate unique when duplicates exist?

# see https://stackoverflow.com/questions/1302022/best-way-to-generate-slugs-human-readable-ids-in-rails
# https://api.rubyonrails.org/classes/ActiveSupport/Inflector.html#method-i-parameterize
