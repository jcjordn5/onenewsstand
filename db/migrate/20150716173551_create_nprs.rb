class CreateNprs < ActiveRecord::Migration
  def change
    create_table :nprs do |t|
      t.string :link
      t.string :title
      t.string :teaser

      t.timestamps null: false
    end
  end
end
