class CreateDesigns < ActiveRecord::Migration[5.1]
  def change
    create_table :designs do |t|
      t.string :image_url
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
