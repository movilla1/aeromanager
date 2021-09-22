# Copyright (c) 2021 by Mario O. Villarroel - ElcanSoftware
class AddInstructorFlagToClubMembers < ::ActiveRecord::Migration[6.1]
  def change
    add_column(:club_members, :instructor, :bool)
    add_column(:users, :license, :string)
    add_column(:users, :license_type, :integer)
  end
end
