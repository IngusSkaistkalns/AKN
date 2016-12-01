class FotosController < ApplicationController
  def index
    if params[:media_type]
      @fotos =  Foto.where(:media_type => params[:media_type])
    else
      @fotos = Foto.all
    end
  end

  def show
    @foto = Foto.find(params[:id])
  end
end
