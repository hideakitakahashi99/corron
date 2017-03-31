class AddImageToServices < ActiveRecord::Migration[5.0]
  def change
    add_column :services, :service_image, :string
  end
end
