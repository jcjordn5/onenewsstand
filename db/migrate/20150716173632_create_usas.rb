class CreateUsas < ActiveRecord::Migration
  def change
    create_table :usas do |t|
      t.string :link
      t.string :title
      t.string :description

      t.timestamps null: false
    end
  end
end
