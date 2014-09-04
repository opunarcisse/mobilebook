class ConsultsController < ApplicationController
  before_action :set_consult, only: [:show, :edit, :update, :destroy]

  # GET /consults
  # GET /consults.json
  def index
@complain = find_complain
    @consults = @complain.consults
  end

  # GET /consults/1
  # GET /consults/1.json
  def show
  end

  # GET /consults/new
  def new
    @consult = Consult.new
  end

  # GET /consults/1/edit
  def edit
  end

  # POST /consults
  # POST /consults.json
  def create
@complain = find_complain
    @consult = @complain.consults.new(consult_params)

    respond_to do |format|
      if @consult.save
        format.html { redirect_to :id => nil, notice: 'Consult was successfully created.' }
        format.json { render :show, status: :created, location: @consult }
      else
        format.html { render :index }
        format.json { render json: @consult.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /consults/1
  # PATCH/PUT /consults/1.json
  def update
@complain = find_complain
    respond_to do |format| 
    
      if @consult = @complain.update(consult_params)
        format.html { redirect_to @consult, notice: 'Consult was successfully updated.' }
        format.json { render :show, status: :ok, location: @consult }
      else
        format.html { render :edit }
        format.json { render json: @consult.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /consults/1
  # DELETE /consults/1.json
  def destroy
    @consult.destroy
    respond_to do |format|
      format.html { redirect_to consults_url, notice: 'Consult was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_consult
      @consult = Consult.find(params[:id])
    end



    # Never trust parameters from the scary internet, only allow the white list through.
    def consult_params
      params.require(:consult).permit(:complain_of_patient, :diagnostic_of_doctor, :prescription_of_doctor, :drugs_delivered, :drugs_delivered_on, :drugs_delivered_by, :complain_id, :complain_type)
    end


private 

def find_complain
  params.each do |name, value|
    if name =~ /(.+)_id$/
      return $1.classify.constantize.find(value)
    end
  end
  nil

end
end

