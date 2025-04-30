class ItemsController < ApplicationController
  def index
    @list_of_items = Item.all

    render({ :template => "item_templates/list" })
  end

  def new_input
    render({:template=>"item_templates/entry"})
  end

end
