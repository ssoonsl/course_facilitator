class Daily < ApplicationRecord

  validates :date, presence: true, uniqueness: true

end
