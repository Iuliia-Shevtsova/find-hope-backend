class Organization < ApplicationRecord
    has_and_belongs_to_many :categories

    # validation
    validates_presence_of :name
    validates_presence_of :address
    validates_presence_of :zipCode

    # validates :zipCode, numericality: { only_integer: true }
end
