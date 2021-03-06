class HopesTiePatternsController < ApplicationController
  def select_tie
    @hope_ties = HopeTiePattern.new
  end

  def create
    @hope_ties = current_user.hope_tie_patterns.new(ties_params)
    unless ties_params[:tie_pattern].present?
      flash.now[:notice] = "エラー：色を選んで下さい"
      render 'select_tie' and return
    end
    @hope_ties.save
    flash[:success] = "こちらです！"
    redirect_to result_tie_user_path
  end

  private
  def ties_params
    params.require(:hope_tie_pattern).permit(:tie_pattern)
  end
end
