class CreateTeamMembers < ActiveRecord::Migration
  def self.up
    create_table :team_members do |t|
    	t.column :person_id, :integer
    	t.column :role, :string
    	t.column :date_on, :date
    	t.column :date_off, :date
    	t.column :project_id, :integer
    end
  end

  def self.down
    drop_table :team_members
  end
end
