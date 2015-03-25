class RemoveSongIdFromGames < ActiveRecord::Migration
  def change
    remove_column :games, :song_id, :string
    remove_column :games, :integer, :string
  end
end
