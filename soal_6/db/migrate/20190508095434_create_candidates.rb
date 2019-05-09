class CreateCandidates < ActiveRecord::Migration[5.2]
  def change
    create_table :candidates do |t|
      t.string :name
      t.integer :earned_vote

      t.timestamps
    end
  end
end
