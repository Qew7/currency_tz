class ForcedRate < ApplicationRecord
  validates :last_to, :value, presence: true
end
