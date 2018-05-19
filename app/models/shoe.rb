class Shoe < ActiveRecord::Base
  belongs_to :user

# def self.search(search)
#   where("title LIKE ?", "%#{search}%") 
#   where("brand LIKE ?", "%#{search}%" )
#   where("description LIKE ?", "%#{search}%" )
# end

end
