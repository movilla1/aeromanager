ActiveAdmin.register AeromanagerModels::Price, as: 'Price' do
  permit_params :amount, :name, :active, :date_deactivated

end
