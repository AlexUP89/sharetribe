class AddInstallationFee < ActiveRecord::Migration[5.2]
  def change
    add_column :listing_shapes, :installation_enabled, :boolean, null: true, default: false, after: :shipping_enabled
    add_column :listings, :installation_enabled, :boolean, default: false
    add_money :listings, :installation_price, currency: { present: false }, default: nil
  end
end
