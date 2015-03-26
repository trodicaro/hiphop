class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|

      t.integer :song_id
      t.belongs_to :user
      t.integer :score
      t.timestamps 
      
    end
  end
end
