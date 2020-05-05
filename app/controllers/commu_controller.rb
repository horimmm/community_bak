class CommuController < ApplicationController
  def show
    @commu=Commu.find_by(id: params[:id])
    
  end

  def index
    #@commus=Commu.where()
    @commus=Commu.all
  end

  def new
    @commu=Commu.new
  end

  def create
    @commu=Commu.new(commu_params)
    if @commu.save
      redirect_to  commu_index_path
    else
      render action :new
    end

  end

  def search_form
    binding.pry
    @commus=Commu.where(['title LIKE ?', "%#{params[:title]}%"])
    
    #redirect_to commu_search_form_path
    #Commu.where('title like ?','%')
  end

  private
    def commu_params
      params.require(:commu).permit(:title,:caption).merge(user: current_user)
    end
end
