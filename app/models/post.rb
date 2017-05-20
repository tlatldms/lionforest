class Post < ActiveRecord::Base
    has_many :comments
    belongs_to :category
    
    def self.search(search)
        if search
          where('title LIKE ?', "%#{search}%") && where('body LIKE ?', "%#{search}%") && where('username LIKE ?', "%#{search}%")
        else
          all
        end
    end
end

