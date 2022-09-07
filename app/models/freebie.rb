class Freebie < ActiveRecord::Base
    belongs_to :dev  
    belongs_to :company

    def print_details
        "#{dev} owns a #{freebie.item_name} from #{company.name}"
    end
end
