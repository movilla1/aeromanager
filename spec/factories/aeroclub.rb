# Copyright (c) 2021 by Mario O. Villarroel - ElcanSoftware
::FactoryBot.define do
  factory :aeroclub, class: "AeromanagerModels::Aeroclub" do
    name { "#{::Faker::Ancient.hero} Club" }
    phone { ::Faker::PhoneNumber.cell_phone_in_e164 }
    address { ::Faker::Address.street_address }
    lat { ::Faker::Address.latitude }
    long { ::Faker::Address.longitude }
    web { ::Faker::Internet.url }
    #  facebook   :string
  end
end
