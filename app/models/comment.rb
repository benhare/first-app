class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :product

  def destroy
    @comment = Comment.find(params[:id])
    product = @comment.product
    @comment.destroy
    redirect_to product
  end
end

