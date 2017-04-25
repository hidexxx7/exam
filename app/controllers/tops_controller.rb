class TopsController < ApplicationController
  before_action :set_top, only: [:edit, :update, :destroy]
  
  def index
    @tops = Top.all
  end
  
  def new
    @top = Top.new
  end
  
  def confirm
  end
  
  def create
    @top = Top.new(tops_params)
    if @top.save
      redirect_to tops_path, notice: "つぶやきました！"
    else
      render 'new'
    end
  end
  
  def edit
    #@top = Top.find(params[:id])
  end
  
  def update
    #@top = Top.find(params[:id])
    if @top.update(tops_params)
      redirect_to tops_path, notice: "つぶやきを更新しました！"
    else
      render 'edit'
    end
  end
  
  def destroy
    #@top = Top.find(params[:id])
    @top.destroy
    redirect_to tops_path, notice: "つぶやきを削除しました！"
  end
  
  private
    def tops_params
      params.require(:top).permit(:content)
    end
    
    def set_top
      @top = Top.find(params[:id])
    end
  
end
