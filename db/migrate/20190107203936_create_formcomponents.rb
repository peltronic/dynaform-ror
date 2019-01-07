class CreateFormcomponents < ActiveRecord::Migration[5.2]
  def change
    create_table :formcomponents do |t|
      t.string :fcname

      t.timestamps
    end
  end
end
