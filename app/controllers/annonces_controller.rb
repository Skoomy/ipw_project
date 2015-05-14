class AnnoncesController < ApplicationController
  
  load_and_authorize_resource
  
  before_action :authenticate_user!
  
  def index
    @annonces = Annonce.all
    @entreprises = Annonce.select("entreprise")
    @offres = Annonce.select("type_offre")
    puts @offres
  end
  
  def show
    @annonce = Annonce.find(params[:id])
  end
  
  def new
    puts params
  end
  
  def filter
    if defined?(params[:type_offre])
      @annonces = Annonce.where(type_offre: params[:type_offre])
      respond_to do |format|
        format.js
      end
    else
    end
  end
  
  def create
    @annonce = Annonce.new(annonce_params)
    @annonce.user_id = current_user.id
    
    @annonce.save
    redirect_to @annonce
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
      params.require(:annonce).permit(:entreprise, :titre, :type_offre, :description, :duree, :date_debut, :moyen_contact, :user_id)
    end
end
