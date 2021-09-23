class InstructorUsersSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :license 

  attribute :identifier do |row|
    row.name
  end
end
