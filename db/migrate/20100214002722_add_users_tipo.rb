class AddUsersTipo < ActiveRecord::Migration
  def self.up
    # Creao un valor por defecto, primero con first accedo al primer elemento del array
    # e ingreso a otro array dentro y con last accedo al ultimo elemento de este array
    add_column :users, :tipo, :string, :default => User::TIPOS.first.last
  end

  def self.down
    remove_column :users, :tipos
  end
end
