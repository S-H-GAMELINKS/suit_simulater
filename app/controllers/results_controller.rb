class ResultsController < ApplicationController
  # MAX_DISPLAY_RELATED_PRODUCTS = 3
  def result_suit
    @hope_suits = current_user.hope_suits.last
    case @hope_suits.suit_color
    when "ネイビー"
      @image = URI("/assets/navy1.jpg")
    when "グレー"
      @image = URI("/assets/right-gray1.jpg")
    when "ベージュ"
      @image = URI("/assets/beige1.jpg")
    when "ブラック"
      @image = URI("/assets/black1.jpg")
    when "チェック"
      @image = URI("/assets/check1.jpg")
    when "ウィンドウペン"
      @image = URI("/assets/windowp1.jpg")
    end

    if @hope_suits.suit_color == "チェック" || @hope_suits.suit_color == "ウィンドウペン"
      @shirt1 = "無地の白のシャツ"
      @shirt2 = "無地の青のシャツ"
      @shirt3 = "無地の黒のシャツ"
      @tie1 = "ストライプのネクタイ"
      @tie2 = "無地のネクタイ"
      @tie3 = "無地（同系色柄）のネクタイ"
      @shirt_img1 = URI("/assets/white_shirt.jpg")
      @shirt_img2 = URI("/assets/blue_shirt.jpg")
      @shirt_img3 = URI("https://www.llbean.co.jp/dw/image/v2/BCSL_PRD/on/demandware.static/-/Sites-llbean-master-catalog/ja_JP/dwcc34999e/images/Product/300554_38714_S.JPG?sw=240")
      @tie_img1 = URI("/assets/stripe_tie.jpg")
      @tie_img2 = URI("/assets/no_pattern_tie.jpg")
      @tie_img3 = URI("/assets/same_pattern_tie.jpg")
    else
      @shirt1 = "白のシャツ"
      @shirt2 = "青のシャツ"
      @shirt3 = "ストライプのシャツ"
      @tie1 = "ストライプのネクタイ"
      @tie2 = "ペイズリーのネクタイ"
      @tie3 = "ドットのネクタイ"
      @shirt_img1 = URI("/assets/white_shirt.jpg")
      @shirt_img2 = URI("/assets/blue_shirt.jpg")
      @shirt_img3 = URI("/assets/stripe_shirt.jpg")
      @tie_img1 = URI("/assets/stripe_tie.jpg")
      @tie_img2 = URI("/assets/paisley_tie.jpg")
      @tie_img3 = URI("/assets/dot_tie.jpg")
    end
  end

  def result_shirt
    @hope_shirts = current_user.hope_shirts.last
    case @hope_shirts.shirt_pattern
    when "白無地"
      @image = URI("/assets/white_shirt2.jpg")
    when "青無地"
      @image = URI("/assets/blue_shirt2.jpg")
    when "ストライプ"
      @image = URI("/assets/stripe_shirt2.jpg")
    end

    if @hope_shirts.shirt_pattern == "ストライプ"
      @suit1 = "無地のネイビースーツ"
      @suit2 = "無地のグレースーツ"
      @suit3 = "無地のブラックスーツ"
      @tie1 = "ストライプのネクタイ"
      @tie2 = "無地のネクタイ"
      @tie3 = "無地（同系色柄）のネクタイ"
      @suit_img1 = URI("/assets/navy1.jpg")
      @suit_img2 = URI("/assets/right-gray1.jpg")
      @suit_img3 = URI("/assets/black1.jpg")
      @tie_img1 = URI("/assets/stripe_tie.jpg")
      @tie_img2 = URI("/assets/no_pattern_tie.jpg")
      @tie_img3 = URI("/assets/same_pattern_tie.jpg")
    else
      @suit1 = "無地のネイビースーツ"
      @suit2 = "無地のグレースーツ"
      @suit3 = "柄ありのスーツ"
      @tie1 = "ストライプのネクタイ"
      @tie2 = "ペイズリーのネクタイ"
      @tie3 = "ドットのネクタイ"
      @suit_img1 = URI("/assets/navy1.jpg")
      @suit_img2 = URI("/assets/right-gray1.jpg")
      @suit_img3 = URI("/assets/windowp1.jpg")
      @tie_img1 = URI("/assets/stripe_tie.jpg")
      @tie_img2 = URI("/assets/paisley_tie.jpg")
      @tie_img3 = URI("/assets/dot_tie.jpg")
    end
  end

  def result_tie
    @hope_ties = current_user.hope_tie_patterns.last
    case @hope_ties.tie_pattern
    when "無地"
      @image = URI("/assets/no_pattern_tie.jpg")
    when "ドット"
      @image = URI("/assets/dot_tie.jpg")
    when "ストライプ"
      @image = URI("/assets/stripe_tie.jpg")
    when "同系色模様"
      @image = URI("/assets/same_pattern_tie.jpg")
    when "ペイズリー"
      @image = URI("/assets/paisley_tie.jpg")
    when "小紋"
      @image = URI("/assets/point_tie.jpg")
    end

    if @hope_ties.tie_pattern == "無地" || "同系色模様"
      @suit1 = "ウィンドウペンのスーツ"
      @suit2 = "チェックのスーツ"
      @suit3 = "無地のネイビースーツ"
      @shirt1 = "白無地のシャツ"
      @shirt2 = "青無地のシャツ"
      @shirt3 = "ストライプのシャツ"
      @suit_img1 = URI("/assets/windowp1.jpg")
      @suit_img2 = URI("/assets/check1.jpg")
      @suit_img3 = URI("/assets/navy1.jpg")
      @shirt_img1 = URI("/assets/white_shirt.jpg")
      @shirt_img2 = URI("/assets/blue_shirt.jpg")
      @shirt_img3 = URI("/assets/stripe_shirt.jpg")
    else
      @suit1 = "無地のネイビースーツ"
      @suit2 = "無地のグレースーツ"
      @suit3 = "無地のブラックスーツ"
      @shirt1 = "白無地のシャツ"
      @shirt2 = "青無地のシャツ"
      @shirt3 = "ストライプのシャツ"
      @suit_img1 = URI("/assets/navy1.jpg")
      @suit_img2 = URI("/assets/right-gray1.jpg")
      @suit_img3 = URI("/assets/windowp1.jpg")
      @shirt_img1 = URI("/assets/white_shirt.jpg")
      @shirt_img2 = URI("/assets/blue_shirt.jpg")
      @shirt_img3 = URI("/assets/stripe_shirt.jpg")
    end
  end
end
