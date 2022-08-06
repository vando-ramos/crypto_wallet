class AddConsensusMechanismToCoins < ActiveRecord::Migration[5.2]
  def change
    add_reference :coins, :consensus_mechanism, foreign_key: true
  end
end
