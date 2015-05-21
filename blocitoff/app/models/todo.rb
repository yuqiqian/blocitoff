class Todo < ActiveRecord::Base
  validates :description, length: {minimum: 1}, presence: true
end
