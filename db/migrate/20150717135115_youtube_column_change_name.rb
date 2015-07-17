class YoutubeColumnChangeName < ActiveRecord::Migration
  def change
    rename_column :youtubes, :embedhtml, :youtubeid
  end
end
