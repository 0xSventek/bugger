class CreateProjects < ActiveRecord::Migration
  def self.up
    create_table :projects do |t|
    t.column :name, :string
    t.column :description, :text
    t.column :date_founded, :date
    t.column :status_id, :integer
    t.column :status_date, :date
    end
  end

  def self.down
    drop_table :projects
  end
end
