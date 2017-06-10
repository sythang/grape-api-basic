module API::V1
	class UserApi < Base

		resources :users do
			
			desc "API for get all users"
			params do
				optional :page, type: Integer
				optional :per_page, type: Integer
	    end
	    get do
	    	present User.all, with: API::V1::Entities::UserEntity
	    end

	    desc "GET User by ID"
	    get ":id" do
	    	user = User.find(params[:id])
	    	present user, with: API::V1::Entities::UserDetailEntity
	    end

	   desc "Create user"
	   params do
	   	requires :email, type: String
	   	requires :password, type: String
	   end
	   post do
	   	user = User.new(email: params[:email], password: params[:password])
	   		if user.save
	   			user
	   		else
	   			user.errors
	   		end
	   end

		end
	end
end