# Copyright (c) 2021 by Mario O. Villarroel - ElcanSoftware
# == Schema Information
#
# Table name: airplanes
#
#  id             :bigint           not null, primary key
#  designation    :string
#  make           :string
#  model          :string
#  purchased_date :date
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  aeroclub_id    :bigint
#
# Indexes
#
#  index_airplanes_on_aeroclub_id  (aeroclub_id)
#
class Airplane < ApplicationRecord
  belongs_to :aeroclub, class_name: "Aeroclub", optional: false
  validates :designation, presence: true, length: { minimum: 2, maximum: 10 }

  # assembles unique identifier to show
  def identifier
    "#{model} #{designation}"
  end

  # display name for aa
  def display_name
    identifier
  end
end
