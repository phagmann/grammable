class Picture < ActiveRecord::Base
    belongs_to :gram
    belongs_to :user
    
end
