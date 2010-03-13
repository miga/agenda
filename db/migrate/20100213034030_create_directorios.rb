class CreateDirectorios < ActiveRecord::Migration
  def self.up
    create_table :directorios do |t|
      t.integer :user_id
      t.string :nombre
      t.string :mail
      t.integer :fono
      t.string :direccion

      t.timestamps
    end
  end

  def self.down
    drop_table :directorios
  end
end
