# customizing rating helper
module RatingHelper
  def show_rating(rate_star)
    rate_star = rate_star.round(0) if rate_star.present?
    content_tag :span, '', class: 'star', 'data-rating' => rate_star,
                                         'data-readonly' => true,
                                         'data-star-count'=> 5,
                                         'data-star-path' => '/assets',
                                         'data-star-on' => 'star-on.png',
                                         'data-star-off' => 'star-off.png'
  end
end
