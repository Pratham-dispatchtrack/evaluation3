class CreateAllmatches < ActiveRecord::Migration[7.1]
  def change
    create_table :allmatches do |t|
      t.string :date
      t.string :,
      t.string :location
      t.string :,
      t.integer :team1_id
      t.string :,
      t.integer :team2_id
      t.string :,
      t.integer :score_team1
      t.string :,
      t.integer :score_team2

      t.timestamps
    end
  end
end
