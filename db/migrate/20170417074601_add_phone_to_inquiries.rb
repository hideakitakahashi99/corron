class AddPhoneToInquiries < ActiveRecord::Migration[5.0]
  def change
    add_column :inquiries, :phone, :string
  end
end
