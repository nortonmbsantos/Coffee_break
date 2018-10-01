class CoffeeTimesController < ApplicationController
  before_action :set_coffee_time, only: [:show, :edit, :update, :destroy]

  def index
    @coffee_times = CoffeeTime.all
  end

  def new
    @coffee_time = CoffeeTime.new
    @workers = @coffee_time.get_workers
    @coffees = @coffee_time.get_coffees
  end

  def create
    @coffee_time = CoffeeTime.new(coffee_time_params)
    @workers = @coffee_time.get_workers
    @coffees = @coffee_time.get_coffees

    if !@coffee_time.coffee_permission(coffee_time_params[:worker_id], coffee_time_params[:coffee_type_id]).empty?
      if @coffee_time.save 
        redirect_to coffee_times_path, flash: { notice: 'O café que você pegou foi adicionado!'}
      else
        flash.now[:error] = 'Existem erros no formulário!'
        render :new
      end
    else
      flash.now[:error] = 'Você não tem permissão para este café!'
      render :new
    end
  end

  private

    def set_coffee_time
      @coffee_time = CoffeeTime.find(params[:id])
    end

    def coffee_time_params
      params.require(:coffee_time).permit(:worker_id, :coffee_type_id)
    end
end
