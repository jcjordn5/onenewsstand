class InstagramAddColumnTitle < ActiveRecord::Migration
  def change
    add_column :instagrams, :username, :string
    add_column :instagrams, :description, :string
  end
end
