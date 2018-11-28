module Findable
  module ClassMethods

    def find_by_name(name)
      self.all.detect{|item| item.name == name}
    end

    # def self.find_by_name(name)
    #   @@artists.detect{|artist| artist.name == name}
    # end


  end
end
