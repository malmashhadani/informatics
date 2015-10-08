class AboutusController < ApplicationController

	before_action :set_member, only: [:show, :edit, :update, :destroy]
	def index
		@members = Aboutu.all
	end
	def new
		@member = Aboutu.new
	end
	def show
		
	end
	def edit
		
	end
	def create
		@member = Aboutu.new(member_params)
		respond_to do |format|
			if @member.save
				format.html {redirect_to @member, notice: 'Memmber was added successfully. '}
				format.json {render :show, status: :created, location: @member}
			else
				format.html {render :new}
				format.json { render json: @member.errors, status: :unprocessable_entity }
			end
		end
	end
	def update
		respond_to do |format|
			if @member.update(member_params)
				format.html {redirect_to @member, notice: 'Member was updated successfully. '}
				format.json {render :show, status: :ok, location: @member}
			else
				format.html {render :edit}
				format.json { render json: @member.errors, status: :unprocessable_entity }
			end
		end
	end
	def destroy
		@member.destroy
		respond_to do |format|
			format.html { redirect_to aboutus_url, notice: 'Member was successfully destroyed.' }
			format.json { head :no_content }
		end
	end

	private
		def set_member
			@member = Aboutu.find(params[:id])
		end
		def member_params
			params.require(:aboutu).permit(:name, :field, :degree, :bio, :photo)
		end
end
