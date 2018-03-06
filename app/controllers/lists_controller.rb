class ListsController < ApplicationController
  def index
    @lists = Supplier.find(params[:supplier_id]).lists
  end

  def new
    @list = List.new()
  end

  def create
    puts(params)
    puts("<---------------------")
    @list = List.new(list_params)
    if @list.save
      flash[:notice] = 'Se creó la lista exitosamente'
      redirect_to supplier_lists_path(current_supplier)
    else
      render :new
    end
  end

  def edit
    @list = List.find(params[:id])
  end

  def update
    @list = List.find(params[:id])
    if @list.update(list_params)
      redirect_to supplier_lists_path(current_supplier)
    else
      render :edit
    end
  end

  def destroy
    @List = List.find(params[:id])
    @List.destroy

    redirect_to request.referrer
  end

  private

    def list_params
      params.require(:list).permit(:title, :supplier_id, :free_shipping, :promotion, :quantity, :price, :q1, :q2, :q3, :q4, :p_q1, :p_q2, :p_q3, :p_q4, :p1, :p2, :p3, :p4, :p_p1, :p_p2, :p_p3, :p_p4, :sq1, :sq2, :sq3, :sq4, :sp_q1, :sp_q2, :sp_q3, :sp_q4, :sp1, :sp2, :sp3, :sp4, :sp_p1, :sp_p2, :sp_p3, :sp_p4)
    end
end
