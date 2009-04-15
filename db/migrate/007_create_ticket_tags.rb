class CreateTicketTags < ActiveRecord::Migration
  def self.up
    create_table :ticket_tags do |t|
    	t.column :tag, :string
    	t.column :ticket_id, :integer
    end
  end

  def self.down
    drop_table :ticket_tags
  end
end
