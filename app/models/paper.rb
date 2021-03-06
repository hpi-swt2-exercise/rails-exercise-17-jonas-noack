class Paper < ActiveRecord::Base
    validates :title, presence: true
    validates :venue, presence: true
    validates :year, presence: true

    validates :year, numericality: { only_integer: true }

    scope :published_in, -> (year) { where(year: year) if year.present? }

    has_and_belongs_to_many :authors
end
