class Review < ApplicationRecord
  belongs_to :organization

  validates_presence_of :title
  validates_presence_of :description
  validates_presence_of :score
  validates_presence_of :date
  validates_presence_of :organization_id
end
