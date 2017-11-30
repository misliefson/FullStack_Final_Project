class OrdersController < InheritedResources::Base

  private

    def order_params
      params.require(:order).permit(:amount, :gst, :pst, :hst, :customer_id)
    end
end

