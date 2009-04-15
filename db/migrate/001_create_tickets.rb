class CreateTickets < ActiveRecord::Migration
  def self.up
    create_table :tickets do |t|
    	t.column :category_id,		:integer
    	t.column :description, 		:text
    	t.column :project_id, 		:integer
    	t.column :priority, 			:integer
    	t.column :assigned_to,		:string
    	t.column :date_assigned, 	:datetime
    	t.column :submitted_by,		:string
    	t.column :date_submitted, :datetime
    	t.column :date_resolved,	:datetime
    	t.column :resolution_id,	:string
    	t.column :parent_bug_id,	:integer
    end
  end

  def self.down
    drop_table :tickets
  end
end
