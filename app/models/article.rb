class Article < ApplicationRecord
  # user here is singular becuase it is the one and articles is the many
  # #enforcing userid.

  belongs_to :user
  validates :title, presence:true, length:{minimum:3, maximum:50}
  validates :description, presence:true, length:{minimum:3, maximum:300}
  validates :user_id, presence: true


end