class MemosController < ApplicationController

  def index  # indexアクション
    @memos = Memo.all.order("created_at DESC")
  end

  def new # newアクション
    require "date"
    @daytime = Date.today
    @time = @daytime.to_time
  end

  def create #createアクション
    Memo.create(memo_params)
    redirect_to root_path

  end

  def show #showアクション
  end

  def edit
    @memo = Memo.find(params[:id])
  end

  def update
    @memo = Memo.find(params[:id])
    @memo.update(memo_params)
    redirect_to root_path
  end

  def destroy
    @memo = Memo.find(params[:id])
    @memo.destroy
    redirect_to root_path
  end

   private
    def memo_params
    params.permit(:content)
    end
  
end
