class Membership < ApplicationRecord
    validates :client, uniqueness: { scope: :gym }
    # you can add customized msg if you want
    
    belongs_to :gym 
    belongs_to :client
end
