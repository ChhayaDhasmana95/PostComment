class Reply < ApplicationRecord
belongs_to :comment
has_many :likes,as: :likeable, dependent: :destroy
end 
