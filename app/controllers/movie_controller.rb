class MovieController < ApplicationController

    def form

    end

    def insert
        addmovie=Movie.new
        addmovie.name=params[:mname]
        addmovie.year=params[:myear]
        addmovie.director=params[:mdirector]
        addmovie.description=params[:mdesc]
        addmovie.rating=params[:mrating]
        addmovie.reviews=params[:mreviews]
         addmovie.save
        
       # redirect_to("/list")
        #flash[:alert]=" The Movie is added successfully"
        redirect_to list_path , alert:"Movie added successfully"

    end

    def list

        @movielist=Movie.all
    end

    def updateform

        @list=Movie.find(params[:id])
        
    end

    def update
        addmovie=Movie.find(params[:id])
        addmovie.name=params[:mname]
        addmovie.year=params[:myear]
        addmovie.director=params[:mdirector]
        addmovie.description=params[:mdesc]
        addmovie.rating=params[:mrating]
        addmovie.reviews=params[:mreviews]
        addmovie.save
        
       # redirect_to("/list")
        #flash[:notice]=" The Movie  Updates successfully"
        redirect_to list_path , alert:"Movie updated successfully"

    end
    def Delete

        Movie.destroy(params[:id])
        
       # redirect_to("/list")
       # flash[:alert]=" The Movie  Deleted successfully"
        redirect_to list_path , alert:"Movie updated successfully"
    end

    def review

        @reviews=Movie.all

    end

    def re

        @re=Movie.find_by(params[:name]) #currentlr this one is not working

        redirect_to("/reviews")
    end

end
