class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :authors
      t.string :publisher
      t.string :published_date
      t.text :description
      t.string :image
      t.string :main_category

      t.timestamps
    end
  end
end
