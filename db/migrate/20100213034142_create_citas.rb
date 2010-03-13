class CreateCitas < ActiveRecord::Migration
  def self.up
    create_table :citas do |t|
      t.integer :id
      t.integer :user_id
      t.string :asunto
      t.date :fecha
      t.time :hora

      t.timestamps
    end
  end

  def self.down
    drop_table :citas
  end
end
