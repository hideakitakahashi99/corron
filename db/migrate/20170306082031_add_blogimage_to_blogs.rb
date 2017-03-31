class AddBlogimageToBlogs < ActiveRecord::Migration[5.0]
  def change
    add_column :blogs, :blogimage, :string
  end
end
