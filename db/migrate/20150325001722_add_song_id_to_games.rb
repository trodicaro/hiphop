class AddSongIdToGames < ActiveRecord::Migration
  def change
    add_column :games, :song_id, :string
    add_column :games, :integer, :string
  end
end
