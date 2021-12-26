class PriceRecord < ApplicationRecord
  scope :last_30_days, -> { where("captured_at > ?", 30.days.ago) } 
end
