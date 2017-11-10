class Author < ActiveRecord::Base
  validates :last_name, presence: true

  has_and_belongs_to_many :papers

  def name
    if last_name?
      first_name + " " + last_name
    end
  end
end
