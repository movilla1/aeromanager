# == Schema Information
#
# Table name: aeromanager_models_prices
#
#  id               :bigint           not null, primary key
#  active           :boolean          default(TRUE)
#  amount           :float
#  date_deactivated :datetime
#  name             :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
class Price < ApplicationRecord
end
