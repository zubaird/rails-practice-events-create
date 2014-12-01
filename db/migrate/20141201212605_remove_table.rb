class RemoveTable < ActiveRecord::Migration
  def change
    drop_table :events
    drop_table :table_events
    
  end
end
