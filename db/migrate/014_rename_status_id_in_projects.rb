class RenameStatusIdInProjects < ActiveRecord::Migration
  def self.up
    rename_column :projects, :status_id, :project_status_id
  end

  def self.down
    rename_column :projects, :project_status_id, :status_id
  end
end