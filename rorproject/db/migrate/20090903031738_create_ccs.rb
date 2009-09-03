class CreateCcs < ActiveRecord::Migration
  def self.up
    create_table :ccs do |t|
      t.string :name
      t.string :description
      t.text :ingredient
      t.text :direction
      t.string :email
      t.string :tag
      t.string :img_file

      t.timestamps
    end
  end

  def self.down
    drop_table :ccs
  end
end
