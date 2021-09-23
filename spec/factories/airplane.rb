# Copyright (c) 2021 by Mario O. Villarroel - ElcanSoftware
::FactoryBot.define do
  factory :airplane, class: "AeromanagerModels::Airplane" do
    association :aeroclub, factory: :aeroclub
    purchased_date { 3.years.ago }
    designation { "LV-#{::Faker::Beer.brand[0, 3]}" }
    make { ::Faker::Science.element }
    model { ::Faker::Science.element_state }
  end
end
