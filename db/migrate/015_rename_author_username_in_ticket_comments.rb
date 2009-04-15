class RenameAuthorUsernameInTicketComments < ActiveRecord::Migration
  def self.up
    remove_column :ticket_comments, :author_username
		add_column 		:ticket_comments, :person_id, :integer
  end

  def self.down
    remove_column :ticket_comments, :person_id
		add_column 		:ticket_comments, :author_username, :string
  end
end



