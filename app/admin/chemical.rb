ActiveAdmin.register Chemical do
controller do
		def permitted_params
			params.permit(:chemical => [:name, :chemical_name, :category_id, :cas, :description, :manufacture_id, :melting_point, :boiling_point, :molecular_weight, :hazardous_level, :safety_description, :transport_info, :place, :production, :state_id])
		end
	end
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end


end
