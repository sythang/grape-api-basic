module API::V1::Entities
	class UserEntity < ActiveRecordEntity
		root 'users', 'user'
		expose :email
	end
end