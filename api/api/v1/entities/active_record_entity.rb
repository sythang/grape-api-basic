module API::V1::Entities
	class ActiveRecordEntity < Grape::Entity
		expose :id, :created_at
	end
end