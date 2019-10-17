class ProfilesController < ApplicationController
  before_action :set_profile, only: [:show, :edit, :update, :destroy]

  # GET /profiles
  # GET /profiles.json
  def index
    @profiles = Profile.all
  end

  # GET /profiles/1
  # GET /profiles/1.json
  def show
      #getting all the links from the profiles section
      links = @profile.links
      if links
          @links = links.split('\n')
          puts(@links)
          count = 0
          #storing just the names of the links
          @names = []
          #iterating over each link to find the name of the link
          @links.each do |link|
              #when the link starts with www.
              start_index = link.index('www.')
              if start_index
                  start_index += 5
                else
                start_index = link.index('https://')
                if start_index
                    #when the link starts with https://
                    start_index += 8
                else
                #when the link starts with http://
                    start_index = 7
                end
            end

              end_index = link.index('.', (start_index - 1)) - 1
              @names[count] = link[start_index .. end_index].titleize
              count += 1
          end
          else
          @links = []
        end
      
  end

  # GET /profiles/1/edit
  def edit
  end
  # PATCH/PUT /profiles/1
  # PATCH/PUT /profiles/1.json
  def update
    respond_to do |format|
      if @profile.update(profile_params)
        format.html { redirect_to @profile, notice: 'Profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @profile }
      else
        format.html { render :edit }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profile
        @profile = Profile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def profile_params
        params.require(:profile).permit(:name, :details, :contact, :email, :links)
    end
end
