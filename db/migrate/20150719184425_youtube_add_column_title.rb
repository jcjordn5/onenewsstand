class YoutubeAddColumnTitle < ActiveRecord::Migration
  def change
    add_column :youtubes, :title, :string
  end
end
