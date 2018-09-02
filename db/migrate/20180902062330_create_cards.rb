class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
      t.string :name
      t.string :front_image
      t.text :short_meaning
      t.text :full_meaning
      t.string :up
      t.string :reverse

      t.timestamps
    end
  end
end
