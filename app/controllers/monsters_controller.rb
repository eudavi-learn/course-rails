class MonstersController < ApplicationController
	before_action :set_monster, only: [:show, :destroy, :update]

	def new
		@monster = Monster.new
	end

	def index
		@monsters = Monster.all
	end

	def create
		@monster = Monster.new(monster_params)

		if @monster.save!
			redirect_to new_monster_path
		end
	end

	def show; end

	def destroy
		if @monster.destroy
			redirect_to root_path
		end
	end

	private

	def set_monster
		@monster = Monster.find(params[:id])
	end

	def monster_params
		params.require(:monster).permit(:image, :name, :defense, :attack, :mdef, :level, :race, :size, :hp, :sp, :speed, :hit, :flee)
	end
end
