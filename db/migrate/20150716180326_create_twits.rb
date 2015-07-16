class CreateTwits < ActiveRecord::Migration
  def change
    create_table :twits do |t|
      t.string :url
      t.string :name

      t.timestamps null: false
    end
  end
end
