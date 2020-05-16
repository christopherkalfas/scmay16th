class CreateTrackers < ActiveRecord::Migration[6.0]
  def change
    create_table :trackers do |t|
      t.integer :sunday, default: 0
      t.integer :monday, default: 0
      t.integer :tuesday, default: 0
      t.integer :wednesday, default: 0
      t.integer :thursday, default: 0
      t.integer :friday, default: 0
      t.integer :saturday, default: 0
      t.references :user, null: false, foreign_key: true
      t.references :challenge, null: false, foreign_key: true

      t.timestamps
    end
  end
end
