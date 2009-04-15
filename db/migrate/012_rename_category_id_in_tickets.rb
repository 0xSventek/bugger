class RenameCategoryIdInTickets < ActiveRecord::Migration
  def self.up
    rename_column :tickets, :category_id, :ticket_category_id
  end

  def self.down
    rename_column :tickets, :ticket_category_id, :category_id
  end
end