# frozen_string_literal: true

class HousesController < ApplicationController
  # this is a collection route, as it gathers a clooection of all the houses
  # # localhost:3000/houses
  # GET /houses
  # GET /                                  / is just root
  def index
        #fetches all houses
    #@houses = House.order(:name)
    @houses = House.includes(:students,:teachers).order(:name)     #### MUST BE PLURALIZED. House has mant StudentS and many TeacherS
  end
  # NOTE   Instance variables like @houses are shared with the view. SO IN THIS CASE    index.html.erb


  # localhost:3000/gouses/:id              any id provided will 'show' the item
  # GET /houses/:id
  # in PHP POST and GET go into SuperGlobals [POST] and [GET]. In rails both GET/POST go to a params var. 'params[]'
  def show
        #fetches a single house by primary key coming from the param hash
    # @house = House.find(params[:id])
    @house = House.find(params[:id])
  end
  # NOTE the @house Instance var will also be shared with the show view just like with the index
end
