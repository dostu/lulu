class AddPurchaseCountToVideos < ActiveRecord::Migration
  def change
    add_column :videos, :purchase_count, :integer, :default => 0
  end
end
