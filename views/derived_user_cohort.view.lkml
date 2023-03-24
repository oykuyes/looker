view: derived_user_cohort {

  derived_table: {

    sql: SELECT DISTINCT users.id  AS user_id

                FROM  `ciceksepeti-dwh.Looker.DimUserView` AS dim_user

      LEFT JOIN `ciceksepeti-dwh.Looker.OrderCompletedCSView` AS order_completed_cs ON order_completed_cs.user_id = dim_user.UserId

      LEFT JOIN `ciceksepeti-dwh.Looker.ProductViewedCSView` AS product_viewed_cs ON product_viewed_cs.user_id = dim_user.UserId

      LEFT JOIN `ciceksepeti-dwh.Looker.FavoriteViewedCSView` AS favorite_viewed_cs ON favorite_viewed_cs.user_id = dim_user.UserId

      LEFT JOIN `ciceksepeti-dwh.Looker.ProductPurchasedCSView` AS product_purchased_cs ON product_purchased_cs.user_id = dim_user.UserId

      LEFT JOIN `ciceksepeti-dwh.Looker.PromotionClickedCSView` AS promotion_clicked_cs ON promotion_clicked_cs.user_id = dim_user.UserId

      WHERE ({% condition order_completed_cs_category_0 %} order_completed_cs.category_0 {% endcondition %})

      OR ({% condition product_viewed_cs_category_0 %} product_viewed_cs.category_0 {% endcondition %} )

      OR ({% condition favorite_viewed_cs_category_0 %} favorite_viewed_cs.category_0 {% endcondition %} )

      OR ({% condition product_purchased_cs_category_0 %} product_purchased_cs.category_0 {% endcondition %} )

      OR ({% condition promotion_clicked_cs_category_0 %} promotion_clicked_cs.category_0 {% endcondition %} )

      GROUP BY 1;;

  }



  dimension: user_id {

    hidden: yes

    description: "Unique ID for each user"

    type: number

    sql: ${TABLE}.user_id ;;

  }



  filter: order_completed_cs_category_0 {

    description: "order_completed_category_0 - filter on all users that ordered in this category"

    type: string

    suggest_explore: order_completed_cs

    suggest_dimension: order_completed_cs.category_0

  }



  filter: product_viewed_cs_category_0 {

    description: "product_viewed_cs_category_0 - filter on all users that viewed in this category"

    type: string

    suggest_explore: product_viewed_cs

    suggest_dimension: product_viewed_cs.category_0

  }

  filter: favorite_viewed_cs_category_0 {

    description: "favorite_viewed_cs_category_0 - filter on all users that favorite viewed in this category"

    type: string

    suggest_explore: favorite_viewed_cs

    suggest_dimension: favorite_viewed_cs.category_0

  }

  filter: product_purchased_cs_category_0 {

    description: "product_purchased_cs_category_0 - filter on all users that purchased in this category"

    type: string

    suggest_explore: product_purchased_cs

    suggest_dimension: product_purchased_cs.category_0

  }

  filter: promotion_clicked_cs_category_0 {

    description: "promotion_clicked_cs_category_0 - filter on all users that clicked in this category"

    type: string

    suggest_explore: promotion_clicked_cs

    suggest_dimension: promotion_clicked_cs.category_0

  }



}
