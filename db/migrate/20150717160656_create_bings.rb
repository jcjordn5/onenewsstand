class CreateBings < ActiveRecord::Migration
  def change
    create_table :bings do |t|
      t.string :title
      t.string :url
      t.string :source
      t.string :description
      t.string :date

      t.timestamps null: false
    end
  end
end
