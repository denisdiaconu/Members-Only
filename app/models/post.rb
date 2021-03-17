class Post < ApplicationRecord
    validates :title, presence:true
    validates :post, presence: true
    belongs_to :user
end
