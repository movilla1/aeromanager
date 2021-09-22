class AddInstructorFlagToClubMembers < ActiveRecord::Migration[6.1]
  def change
    add_column :aeromanager_models_club_members, :instructor, :bool
    add_column :aeromanager_models_users, :license, :string
    add_column :aeromanager_models_users, :license_type, :integer
  end
end
