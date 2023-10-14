class KokkyosController < ApplicationController
 
    before_action :authenticate_user!, only: [:new, :create]
  
  def index
    if params[:search] != nil && params[:search] != ''
      search = params[:search]
      @kokkyos = Kokkyo.where("title LIKE ? OR country LIKE ? OR issue LIKE ? OR project LIKE ? OR point LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")
    else
      @kokkyos = Kokkyo.all
    end
  end

  def new
    @kokkyo = Kokkyo.new
  end
 
  def create
    kokkyo = Kokkyo.new(kokkyo_params)
    kokkyo.user_id = current_user.id

    if kokkyo.save
        redirect_to :action => "index"
    else
        redirect_to :action => "new"
    end
  end

  def show
    @kokkyo = Kokkyo.find(params[:id])
    @comments = @kokkyo.comments
    @comment = Comment.new
  end

  def edit
    @kokkyo = Kokkyo.find(params[:id])
  end

  def update
    kokkyo = Kokkyo.find(params[:id])
    if kokkyo.update(kokkyo_params)
      redirect_to :action => "show", :id => kokkyo.id
    else
      redirect_to :action => "new"
    end
  end

  def destroy
    kokkyo = Kokkyo.find(params[:id])
    kokkyo.destroy
    redirect_to action: :index
  end

  def question
  end

  private
  def kokkyo_params
    params.require(:kokkyo).permit(:title, :country, :issue, :project, :point, :image, :video)
  end

end
