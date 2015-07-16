class CreateGuardians < ActiveRecord::Migration
  def change
    create_table :guardians do |t|
      t.string :weburl
      t.string :webtitle
      t.string :webPublicationDate

      t.timestamps null: false
    end
  end
end
