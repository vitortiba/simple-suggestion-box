class SuggestionsController < ApplicationController
	def index
		@suggestions = Suggestion.all
	end

	def create
		@suggestion = Suggestion.new(suggestion_params)

		if @suggestion.save
      redirect_to suggestions_url
    else
      render 'new'
    end
	end

	def new
		@suggestion = Suggestion.new
	end

	def destroy
		@suggestion = Suggestion.find(params[:id])
		@suggestion.destroy
		
		redirect_to suggestions_url
	end
	
	private

	def suggestion_params
    params.require(:suggestion).permit(:description)
	end

end
