class Company < ActiveRecord::Base
    has_many :freebies
    has_many :devs, through: :freebies
def give_freebie(dev, item_name, value)
    #createa new Freebie instance
    Freebie.create(item_name:item_name, value:value, dev:dev, company:self)

end
def self.oldest_company
self.all.order(founding_year: :ASC).first
end
end
