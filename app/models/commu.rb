class Commu < ApplicationRecord
  belongs_to :user
  validates :title, length:{in:1..30}

  #def self.search(search)
    #if search
      #Commu.where(['content LIKE ?', "%#{search}%"])
    #else
      #Commu.all
    #end
  #end
end
