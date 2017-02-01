class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :url
      t.string :location

      t.timestamps null: false
    end
  end
end
