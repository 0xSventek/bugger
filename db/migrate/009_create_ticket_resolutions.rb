class CreateTicketResolutions < ActiveRecord::Migration
  def self.up
    create_table :ticket_resolutions do |t|
    	t.column :resolution, :string
    end
  end

  def self.down
    drop_table :ticket_resolutions
  end
end
