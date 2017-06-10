module API::V1::Entities
	class UserDetailEntity < UserEntity
		expose :full_name
		expose :posts, using: PostEntity
		expose :school, using: SchoolEntity
	end
end