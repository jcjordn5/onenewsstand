class CreateNyts < ActiveRecord::Migration
  def change
    create_table :nyts do |t|
      t.string :url
      t.string :title
      t.string :abstract
      t.string :published_date

      t.timestamps null: false
    end
  end
end
