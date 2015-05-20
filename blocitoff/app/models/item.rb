class Item < ActiveRecord::Base
  belongs_to :user

  def day_left
    (DateTime.now.to_date - created_at.to_date).to_i
  end
end
