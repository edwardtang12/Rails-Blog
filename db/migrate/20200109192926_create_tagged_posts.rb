class CreateTaggedPosts < ActiveRecord::Migration[6.0]
  def change
    create_table :tagged_posts do |t|
      t.references :tag
      t.references :post

      t.timestamps
    end
  end
end
