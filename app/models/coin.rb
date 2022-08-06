class Coin < ApplicationRecord
  belongs_to :consensus_mechanism # optional: true
end
