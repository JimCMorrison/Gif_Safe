class CreateGifs < ActiveRecord::Migration
  def change
    create_table :gifs do |t|
      t.string :tag
      t.text :url
      t.text :description

      t.timestamps null: false
    end
  end
end
