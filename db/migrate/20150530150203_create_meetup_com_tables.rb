class CreateMeetupComTables < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :meetup_id
      t.string :name
      t.text :description
      t.datetime :time
      t.string :url
      t.string :status
      t.string :address
      t.timestamps null: false
    end

    create_table :participants do |t|
      t.integer :event_id
      t.string :meetup_id
      t.string :name
      t.string :image_url
      t.string :status
      t.timestamps null: false
    end
  end
end
