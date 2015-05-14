class Admin::AnnoncesController < ApplicationController
  
  load_and_authorize_resource
  
  before_action :authenticate_user!
  
  def index
    if params[:approved] == "false"
    @annonces = Annonce.where(approved: false)
    else
    @annonces = Annonce.all
    end
  end
  
  def show
#     @annonce = Annonce.find(params[:id])
  end
  
  def new
  end
  
  def create
    @annonce = Annonce.new(annonce_params)
    @annonce.user_id = current_user.id
    
    @annonce.save
    redirect_to @annonce
  end
  
  def update
    @annonce = Annonce.find(params[:id])
     @annonce.update_attributes(annonce_params)
     
     redirect_to({ :action => 'index' })
  end
  
  def manage
    if params[:approved] == "false"
    @annonces = Annonce.where(approved: false)
    else
    @annonces = Annonce.all
    end
  end
  
  private
    def annonce_params
      params.require(:annonce).permit(:entreprise, :titre, :type_offre, :description, :duree, :date_debut, :moyen_contact, :user_id, :approved)
    end
end
