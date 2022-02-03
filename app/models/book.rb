class Book < ApplicationRecord
	validates :title, :author, :price, :date_published, presence: true
end
