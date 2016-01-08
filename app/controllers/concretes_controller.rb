class ConcretesController < ApplicationController
  def new
    @concrete = Concrete.new
    @new = true
  end

  def create
    @concrete = Concrete.new(concrete_params)
    render nothing: true
  end

  def edit
    @concrete = Concrete.find(params[:id])
  end

  def update
    @concrete = Concrete.find(params[:id])
    @concrete.update(concrete_params)
    render nothing: true
  end

  private
# Use callbacks to share common setup or constraints between actions.
def set_concrete
  @concrete = Concrete.find(params[:id])
end

# Never trust parameters from the scary internet, only allow the white list through.
def concrete_params
  params.require(:concrete).permit(:mix_type, :color, :psi, :cost_per_yard)
end

end
