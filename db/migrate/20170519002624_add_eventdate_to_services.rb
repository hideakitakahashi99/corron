class AddEventdateToServices < ActiveRecord::Migration[5.0]
  def change
    add_column :services, :eventdate, :datetime, default: -> { 'NOW()' }
  end
end
