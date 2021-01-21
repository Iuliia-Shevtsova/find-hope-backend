class Organization < ApplicationRecord
  has_and_belongs_to_many :categories
  has_many :reviews

  # validation
  validates_presence_of :name
  validates_presence_of :address
  validates_presence_of :zipCode

  # validates :zipCode, numericality: { only_integer: true }

  def as_json(options={})
    options[:methods] = [:avg_score, ]
    super
  end

  def avg_score
    return 0 unless reviews.count.positive?
    reviews.average(:score).round(2).to_f
  end

  # def reviews_list
  #   return 0 unless reviews.count.positive?
  #   reviews
  # end
end
