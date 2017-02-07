class MakeReviewAsAJoinTable < ActiveRecord::Migration[5.0]
  def up #Wird verwendet bei Migrate
  	Review.delete_all
  	remove_column :reviews, :title
  	remove_column :reviews, :stars
  	remove_column :reviews, :comment
  	add_column :reviews, :user_id, :integer
  end

  def down #Wird verwendet bei Rollback
  	Review.delete_all
  	add_column :reviews, :title, :string
  	add_column :reviews, :stars, :string
  	add_column :reviews, :comment, :string
  	remove_column :reviews, :user_id
  end
end
