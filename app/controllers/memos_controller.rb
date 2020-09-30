class MemosController < ApplicationController

  def index  # indexアクション
    @post = "これはコントローラーで定義したインスタンス変数を確認するための文字列です"
  end

  def new　# newアクション
  end

  def create #createアクション
  end
  
end
