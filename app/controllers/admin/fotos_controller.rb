module Admin
  class FotosController < AdminController
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

    def new
      @foto = Foto.new
    end

    def create
      @foto = Foto.new(foto_params)

      respond_to do |format|
        if @foto.save
          format.html { redirect_to [:edit, :admin, @foto], notice: 'Foto was successfully created.' }
          format.json { render :show, status: :created, location: @foto }
        else
          format.html { render :new }
          format.json { render json: @foto.errors, status: :unprocessable_entity }
        end
      end
    end

    def destroy
      @foto = Foto.find(params[:id])
      @foto.destroy
      respond_to do |format|
        format.html { redirect_to admin_fotos_url, notice: 'Foto was successfully destroyed.' }
        format.json { head :no_content }
      end
    end

    def edit
      @foto = Foto.find(params[:id])
    end

    def update
     @foto = Foto.find(params[:id])
     respond_to do |format|
        if @foto.update(foto_params)
          format.html { redirect_to [:edit, :admin, @foto], notice: 'Foto was successfully updated.' }
          format.json { render :show, status: :ok, location: @foto }
        else
          format.html { render :edit }
          format.json { render json: @foto.errors, status: :unprocessable_entity }
        end
      end
    end

    private

    def set_foto
      @foto = Foto.find(params[:id])
    end

    def foto_params
      params.require(:foto).permit(:name, :file, :media_type, :remove_file)
    end
  end
end
