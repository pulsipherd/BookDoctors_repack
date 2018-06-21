class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.text :blurb
      t.string :difficulty
      t.string :topics
      t.string :healings

      t.timestamps
    end
  end
end
