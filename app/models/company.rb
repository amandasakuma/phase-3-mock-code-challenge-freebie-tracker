class Company < ActiveRecord::Base
    has_many :freebies
    has_many :devs, through: :freebies

# Company#give_freebie(dev, item_name, value)
# takes a dev (an instance of the Dev class), an item_name (string), and a value as arguments, and creates a new Freebie instance associated with this company and the given 

    def self.give_freebie(dev, item_name, value)
        Freebie.create(item_name: item_name, dev: dev, value: value, company: self)
    end

#     Company.oldest_company
# returns the Company instance with the earliest founding year
    def self.oldest_company
        company.all.order(:founding_year).first
    end


end
