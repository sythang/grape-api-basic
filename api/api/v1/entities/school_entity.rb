module API::V1::Entities
	class SchoolEntity < ActiveRecordEntity
		root 'schools', 'school'
		expose :name
	end
end