class Dev < ActiveRecord::Base
    has_many :freebies
    has_many :companies, through: :freebies

    def received_one?(item_name)
        a = self.freebies.find_by(item_name: item_name)
        a ? true : false
    end

    def give_away(dev, freebie)
        a = self.freebies.find(freebie.id)
        a.update(dev_id: dev.id)
    end
end

