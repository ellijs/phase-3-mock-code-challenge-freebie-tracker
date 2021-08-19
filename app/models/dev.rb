class Dev < ActiveRecord::Base
    has_many :freebies
    has_many :companies, through: :freebies

    def received_one?(item_name)
        self.freebies.where(item_name: item_name).exists?
        # a = self.freebies.find_by(item_name: item_name)
        # a ? true : false
    end

    def give_away(dev, freebie)
        # a = self.freebies.find(freebie.id)
        # a.update(dev_id: dev.id)

        freebie.update(dev_id: dev.id)
    end
end

