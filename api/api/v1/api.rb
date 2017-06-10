module API::V1
	class Api < Grape::API
		version 'v1', using: :path
    format :json
    prefix :api

    mount API::V1::UserApi

  end
	#/api/users?version=v1
end