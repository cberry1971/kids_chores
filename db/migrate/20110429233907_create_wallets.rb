class CreateWallets < ActiveRecord::Migration
  def self.up
    create_table :wallets do |t|
      t.integer :child_id, :null => false
      t.integer :chore_id, :null => false
      t.boolean :payment_status, :default => false

      t.timestamps
    end
  end

  def self.down
    drop_table :wallets
  end
end
