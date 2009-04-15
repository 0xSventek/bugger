class RenameResolutionIdInTickets < ActiveRecord::Migration
  def self.up
    rename_column :tickets, :resolution_id, :ticket_resolution_id
  end

  def self.down
    rename_column :tickets, :ticket_resolution_id, :resolution_id
  end
end