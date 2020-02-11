class RemoteNotNullFromPost < ActiveRecord::Migration[6.0]
  def change
    remove_reference :posts, :user, null: false, foreign_key: true
    remove_reference :posts, :category, null: false,  foreign_key: true
  end
end
