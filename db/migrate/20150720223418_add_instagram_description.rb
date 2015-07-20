class AddInstagramDescription < ActiveRecord::Migration
  def change
    add_column :instagrams, :tags, :string
  end
end
