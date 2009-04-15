class CreateTicketCategories < ActiveRecord::Migration
  def self.up
    create_table :ticket_categories do |t|
    	t.column :category, :string
    end
  end

  def self.down
    drop_table :ticket_categories
  end
end
