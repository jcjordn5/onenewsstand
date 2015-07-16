class CreateYoutubes < ActiveRecord::Migration
  def change
    create_table :youtubes do |t|
      t.string :embedhtml

      t.timestamps null: false
    end
  end
end
