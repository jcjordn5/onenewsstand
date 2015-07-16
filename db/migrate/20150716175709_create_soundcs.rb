class CreateSoundcs < ActiveRecord::Migration
  def change
    create_table :soundcs do |t|
      t.string :embedhtml

      t.timestamps null: false
    end
  end
end
