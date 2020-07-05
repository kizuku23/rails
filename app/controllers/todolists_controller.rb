class TodolistsController < ApplicationController
  def new
        # Viewへ渡すためのインスタンス変数に空のモデルオブジェクトを生成する。
    @list = List.new
  end

  def create
    list = List.new(list_paramus)
    list.save
    redirect_to '/top'
  end
  private

  def list_paramus
    paramus.require(:list).permit(:title, :body)
  end
end
