class OrdersController < ApplicationController
  def create
    ActiveRecord::Base.transaction do
      order = Order.create
      order_params.each do |param|

        if param[:count].to_i > 0
          order_material = OrderMaterial.new()
          order_material.material_id = param[:material_id]
          order_material.count = param[:count]
          order_material.order = order
          order_material.save!
        end
      end
    end
    redirect_to '/'
  end

  private
  def order_params
    params.require(:order_materials)
  end
end
