class CreateChallenges < ActiveRecord::Migration[6.0]
  def change
    create_table :challenges do |t|
      t.string :name
      t.string :activity
      t.integer :activity_reps
      t.datetime :start
      t.datetime :end
      t.references :group, null: false, foreign_key: true

      t.timestamps
    end
  end
end
