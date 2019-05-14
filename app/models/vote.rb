class Vote < ApplicationRecord
  belongs_to :election
  belongs_to :candidate
  belongs_to :user
  belongs_to :vote
end
