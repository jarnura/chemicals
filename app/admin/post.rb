ActiveAdmin.register Post do
	controller do
		def permitted_params
			params.permit(:post => [:title, :body, :category_id, :author_id])
		end
	end
end
