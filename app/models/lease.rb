class Lease < ApplicationRecord
  belongs_to :apartment
  belongs_to :tenant

  validates :rent, presence: true
  validates :apartment_id, presence: true, uniqueness: true
  validates :tenant_id, presence: true, uniqueness: true
end
