class MemosController < ApplicationController
  before_action :set_post, only: [:edit, :update, :destroy]

  def index  # indexアクション
    @memos = Memo.all.order("created_at DESC")
  end

  def new # newアクション
    require "date"
    @daytime = Date.today
    @time = @daytime.to_time
  end

  def create #createアクション
    @memo = Memo.create(memo_params)
    if @memo.save
      flash[:notice] = "投稿できました"
      redirect_to root_path
    else
      flash[:alert] = "文字を入力してください"
      redirect_to new_memo_path
    end
  end

  def show #showアクション
  end

  def edit
  end

  def update
   if @memo.update(memo_params)
    flash[:notice] = "投稿できました"
    redirect_to root_path
   else
    flash[:alert] = "文字を入力してください"
    redirect_to edit_memo_path(@post.id)
   end
  end

  def destroy
    if @memo.destroy
      flash[:delete] = "削除しました"
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

   private

    def set_post
      @memo = Memo.find(params[:id])
    end

    def memo_params
     params.permit(:content)
    end
  
end
