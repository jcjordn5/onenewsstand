class RemoveTimestampFromBing < ActiveRecord::Migration
  def change
    remove_column (:soundcs, :time_made, :datetime)
  end
end
