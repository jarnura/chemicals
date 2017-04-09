ActiveAdmin.register_page "Dashboard" do
	
  menu priority: 1, label: proc{ "Db" }

    content title: proc{ "Dashboard" } do
		section "Recent Posts" do
			table_for Post.order('id desc').limit(10) do
				column :id
				column  :title do |post|
					link_to post.title,[:admin,post]
				end
				column :category,:sortable => :category
				column :created_at
			end
			strong (link_to "show all posts",admin_post_path(:id => ''))
		end
		
		section "Categories" do
			table_for Category.order('id desc').limit(10) do
				column :id
				column  :name do |category|
					link_to category.name,[:admin,category]
				end
				column :created_at
			end
			strong (link_to "show all categories",admin_category_path(:id => ''))
		end
    end 
end