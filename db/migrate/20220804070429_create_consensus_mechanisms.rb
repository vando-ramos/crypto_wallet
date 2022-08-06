class CreateConsensusMechanisms < ActiveRecord::Migration[5.2]
  def change
    create_table :consensus_mechanisms do |t|
      t.string :description
      t.string :acronym

      t.timestamps
    end
  end
end
