class Post < ApplicationRecord
    belongs_to :user
    validates :user, presence: true
    has_many :comments, dependent: :destroy
    
end
