class Photo < ApplicationRecord
    has_one_attached :photo 
    validates :name, :photo, :desc, presence: true
end
