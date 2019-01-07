class Formelement
  extend ActiveModel::Callbacks
  include ActiveModel::Model

  attr_accessor :slug, :fename, :formcomponent_id, :etype, :vrules, :gridwidth, :placeholder 

  def initialize(attributes)
    super(attributes)
    after_initialize
  end

  def after_initialize
    slugify_me
  end

  def slugify_me
    self.slug = (self.fename).parameterize
  end

end
