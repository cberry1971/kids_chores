class AddQuantityToWallets < ActiveRecord::Migration
  def self.up
    add_column :wallets, :quantity, :integer, :default => 1
  end

  def self.down
    remove_column :wallets, :quantity
  end
end
