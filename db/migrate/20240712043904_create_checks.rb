class CreateChecks < ActiveRecord::Migration[7.1]
  def change
    create_table :checks do |t|
      t.string :name

      t.timestamps
    end
  end
end
