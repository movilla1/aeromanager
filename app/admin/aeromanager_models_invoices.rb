ActiveAdmin.register AeromanagerModels::Invoice, as: "Invoice" do

  permit_params :user_id, :creator_id, :description

end
