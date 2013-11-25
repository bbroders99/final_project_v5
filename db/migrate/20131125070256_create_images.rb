class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :url
      t.integer :idea_id
      t.integer :artist_id
    end
  end
end
