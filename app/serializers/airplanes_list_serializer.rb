class AirplanesListSerializer
  include FastJsonapi::ObjectSerializer
  attribute :identifier do |obj|
    "#{obj.model} #{obj.designation}"
  end
  attribute :id
end
