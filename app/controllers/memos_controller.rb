class MemosController < ApplicationController

  def index  # indexアクション
    @memos = Memo.all
  end

  def new # newアクション
  end

  def create #createアクション
    Memo.create(memo_params)
    redirect_to root_path
  end

   private
    def memo_params
    params.permit(:content)
    end
  
end
