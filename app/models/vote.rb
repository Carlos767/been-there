class Vote < ApplicationRecord
  belongs_to :user
  belongs_to :article
  
  def up_vote?
     value == 1
   end
 
   def down_vote?
     value == -1
   end

  def update_post
    post.update_rank
  end

  def update_rank
    age_in_days = (created_at - Time.new(1970,1,1)) / (60 * 60 * 24) 
    new_rank = points + age_in_days
 
    update_attribute(:rank, new_rank)
  end
end
