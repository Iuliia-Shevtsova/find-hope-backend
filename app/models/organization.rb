class Organization < ApplicationRecord
  has_and_belongs_to_many :categories
  has_many :reviews

  # validation
  validates_presence_of :name
  validates_presence_of :address
  validates_presence_of :zipCode

  # validates :zipCode, numericality: { only_integer: true }

  def avg_score
    reviews.average(:score).round(2).to_f
  end
end
