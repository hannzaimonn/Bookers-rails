class PostImage < ApplicationRecord
	attachment :image

	validates :body,presence: true, uniqueness: true,
	          length: {maximum: 200}
end
