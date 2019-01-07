module Guidable
  extend ActiveSupport::Concern

  included do
    before_create -> { create_guid }
  end

  def create_guid
    self.guid = Guid.gcreate(true)
  end
end
