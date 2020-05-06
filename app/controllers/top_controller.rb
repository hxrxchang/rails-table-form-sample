class TopController < ApplicationController
  def index
    materials = Material.all
    @order_materials = []
    materials.each do |material|
      order_material = OrderMaterial.new(material: material)
      @order_materials.push(order_material)
    end
  end
end
