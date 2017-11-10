class Paper < ActiveRecord::Base
    validates :venue, presence: true
end
