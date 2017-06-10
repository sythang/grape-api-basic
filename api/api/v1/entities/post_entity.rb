module API::V1::Entities
	class PostEntity < ActiveRecordEntity
		root 'posts', 'post'
		expose :content
	end
end