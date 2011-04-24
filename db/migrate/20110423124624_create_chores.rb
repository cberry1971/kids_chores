class CreateChores < ActiveRecord::Migration
  def self.up
    create_table :chores do |t|
      t.string :title
      t.text :description
      t.string :image_url
      t.decimal :value, :precision => 8, :scale => 2

      t.timestamps
    end
  end

  def self.down
    drop_table :chores
  end
end
