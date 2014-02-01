class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :title
      t.text :description
      t.date :date
      t.time :duration

      t.timestamps
    end
  end
end
