class HopesTieController < ApplicationController
  def select_tie
    @hope_ties = HopeTie.new
  end

  def create
    @hope_tie = current_user.hope_tie.new(ties_params)
    unless ties_params[:tie_pattern].present?
      flash.now[:notice] = "エラー：色を選んで下さい"
      render 'select_tie' and return
    end
    @hope_tie.save
    flash[:success] = "こちらです！"
    redirect_to result_tie_user_path
  end

  private
  def ties_params
    params.require(:hope_shirt).permit(:tie_pattern)
  end
end