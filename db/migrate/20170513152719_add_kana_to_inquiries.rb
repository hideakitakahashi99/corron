class AddKanaToInquiries < ActiveRecord::Migration[5.0]
  def change
    add_column :inquiries, :kana, :string
  end
end
