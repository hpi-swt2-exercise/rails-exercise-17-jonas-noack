class Author < ActiveRecord::Base
    validates :last_name, presence: true

    def name
        if last_name?
            first_name + " " + last_name
        else
            first_name
       end 
    end
end
