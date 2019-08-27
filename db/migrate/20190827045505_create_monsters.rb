class CreateMonsters < ActiveRecord::Migration[5.2]
  def change
    create_table :monsters do |t|
      t.string :image
      t.string :name
      t.string :defense
      t.string :attack
      t.string :mdef
      t.string :level
      t.string :race
      t.string :size
      t.string :hp
      t.string :sp
      t.string :speed
      t.string :hit
      t.string :flee

      t.timestamps
    end
  end
end
