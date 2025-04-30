class ItemsController < ApplicationController
  def index
    @list_of_items = Item.all

    render({ :template => "item_templates/list" })
  end

  def new_input
    render({:template=>"item_templates/entry"})
  end

  def insert
    new_item = Item.new
    new_item.link_url = params.fetch("link_url")
    new_item.link_description =params.fetch("link_desc")
    new_item.thumbnail_url =params.fetch("link_thumbnail")
    new_item.save
    redirect_to("/")
  end

end
