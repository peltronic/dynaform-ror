class AddGuidToFormcomponents < ActiveRecord::Migration[5.2]
  def change
      add_column :formcomponents, :slug, :string, after: :id
      add_column :formcomponents, :guid, :string, after: :id
  end
end
