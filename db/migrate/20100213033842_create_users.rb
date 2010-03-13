class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.integer :id
      t.string :login
      t.string :pass
      t.string :nombres
      t.string :apellidos
      t.string :direccion
      t.string :fono
      t.string :mail
      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
