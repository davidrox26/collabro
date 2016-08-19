class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :picture
      t.text :bio
      t.string :music_url

      t.timestamps null: false
    end
  end
end
