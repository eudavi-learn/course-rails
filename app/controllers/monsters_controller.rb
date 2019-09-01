class MonstersController < ApplicationController
  before_action :set_monster, only: [:show, :destroy, :update, :edit]

  def new
    @monster = Monster.new
  end

  def index
    @q = Monster.ransack(params[:q])
    @monsters = @q.result(distinct: true)
  end

  def create
    @monster = Monster.new(monster_params)

    if @monster.save!
      redirect_to new_monster_path
    end
  end

  def update
    if @monster.update_attributes(monster_params)
       redirect_to root_path
    end
  end

  def destroy
    if @monster.destroy
      redirect_to root_path
    end
  end

  def edit; end
  def show; end

  private

  def set_monster
    @monster = Monster.find(params[:id])
  end

  def monster_params
    params.require(:monster).permit(:image, :name, :defense, :attack, :mdef, :level, :race, :size, :hp, :sp, :speed, :hit, :flee)
  end
end
