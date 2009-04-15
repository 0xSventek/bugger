class RenameAssignedToInTickets < ActiveRecord::Migration
  def self.up
    remove_column :tickets, :assigned_to
		add_column 		:tickets, :assigned_person_id, :integer
  end

  def self.down
    remove_column :tickets, :assigned_person_id
		add_column 		:tickets, :assigned_to, :string
  end
end



