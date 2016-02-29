class RemoveCommentFromArticle < ActiveRecord::Migration
  def change
    remove_column :articles, :comment, :string
  end
end
