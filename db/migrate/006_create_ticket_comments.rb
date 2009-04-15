class CreateTicketComments < ActiveRecord::Migration
  def self.up
    create_table :ticket_comments do |t|
    	t.column :author_username, :string
    	t.column :comment, :text
    	t.column :date_posted, :datetime
    	t.column :ticket_id, :integer
    end
  end

  def self.down
    drop_table :ticket_comments
  end
end
