class EntriesController < ApplicationController

    def index
      @entries = Entry.all
    end

    def show
      @entry = Entry.find(params[:id])
      @pictures = Picture.where(entry_id: @entry.id)
    end

    def new
      @entry = Entry.new
    end

    def edit
      @entry = Entry.find(params[:id])
    end

    def create
      @entry = Entry.new(entry_params)
      if @entry.save

        redirect_to entries_path
      else
        render :new
      end
    end

    def update
      @entry = Entry.find(params[:id])
      if @entry.update(entry_params)
        redirect_to entries_path
      else
        render :edit
      end
    end

    def destroy
      @entry = Entry.find(params[:id])
      @entry.destroy
      redirect_to entries_path
    end


    private
        def entry_params
          params.require(:entry).permit(:title, :story)
        end

  end
