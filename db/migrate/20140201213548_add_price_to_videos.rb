class AddPriceToVideos < ActiveRecord::Migration
  def change
    add_column :videos, :price, :decimal, :precision => 8, :scale => 2
  end
end
