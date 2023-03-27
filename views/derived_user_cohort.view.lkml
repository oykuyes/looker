view: derived_user_cohort {

  derived_table: {

    sql: SELECT DISTINCT dim_user.UserId  AS user_id

         FROM  `ciceksepeti-dwh.Looker.DimUserView` AS dim_user

      LEFT JOIN (SELECT DISTINCT user_id,COUNT(*) as order_completed_event_count FROM `ciceksepeti-dwh.Looker.OrderCompletedCSView` oc WHERE ({% condition order_completed_cs_category_0 %} oc.category_0 {% endcondition %}) GROUP BY user_id)
      AS order_completed_cs ON order_completed_cs.user_id = dim_user.UserId

      LEFT JOIN (SELECT DISTINCT user_id,COUNT(*) as product_viewed_event_count FROM `ciceksepeti-dwh.Looker.ProductViewedCSView` pv WHERE ({% condition product_viewed_cs_category_0 %} pv.category_0 {% endcondition %}) GROUP BY user_id)
      AS product_viewed_cs ON product_viewed_cs.user_id = dim_user.UserId

      LEFT JOIN (SELECT DISTINCT user_id,COUNT(*) as favorite_viewed_event_count FROM `ciceksepeti-dwh.Looker.FavoriteViewedCSView` fv WHERE ({% condition favorite_viewed_cs_category_0 %} fv.category_0 {% endcondition %}) GROUP BY user_id)
      AS favorite_viewed_cs ON favorite_viewed_cs.user_id = dim_user.UserId

      LEFT JOIN (SELECT DISTINCT user_id,COUNT(*) as product_purchased_event_count FROM `ciceksepeti-dwh.Looker.ProductPurchasedCSView` pp WHERE ({% condition product_purchased_cs_category_0 %} pp.category_0 {% endcondition %}) GROUP BY user_id)
      AS product_purchased_cs ON product_purchased_cs.user_id = dim_user.UserId

      LEFT JOIN (SELECT DISTINCT user_id,COUNT(*) as promotion_clicked_event_count FROM `ciceksepeti-dwh.Looker.PromotionClickedCSView` pc WHERE ({% condition promotion_clicked_cs_category_0 %} pc.category_0 {% endcondition %}) GROUP BY user_id)
      AS promotion_clicked_cs ON promotion_clicked_cs.user_id = dim_user.UserId

      WHERE ({% condition order_completed_event_count %} order_completed_cs.order_completed_event_count {% endcondition %})

      OR ({% condition product_viewed_event_count %} product_viewed_cs.product_viewed_event_count {% endcondition %} )

      OR ({% condition favorite_viewed_event_count %} favorite_viewed_cs.favorite_viewed_event_count {% endcondition %} )

      OR ({% condition product_purchased_event_count %} product_purchased_cs.product_purchased_event_count {% endcondition %} )

      OR ({% condition promotion_clicked_event_count %} promotion_clicked_cs.promotion_clicked_event_count {% endcondition %} )
      ;;

  }



  dimension: user_id {

    primary_key: yes

    hidden: yes

    description: "Unique ID for each user"

    type: number

    sql: ${TABLE}.user_id ;;

  }

  filter: order_completed_event_count {

    description: "Unique ID for each user"

    type: number

    suggest_explore: order_completed_cs

    suggest_dimension: order_completed_cs.order_completed_event_count

  }

  filter: product_viewed_event_count {

    description: "Unique ID for each user"

    type: number

    suggest_explore: product_viewed_cs

    suggest_dimension: product_viewed_cs.product_viewed_event_count

  }

  filter: favorite_viewed_event_count {


    description: "Unique ID for each user"

    type: number

    suggest_explore: favorite_viewed_cs

    suggest_dimension: favorite_viewed_cs.favorite_viewed_event_count

  }

  filter: product_purchased_event_count {


    description: "Unique ID for each user"

    type: number

    suggest_explore: product_purchased_cs

    suggest_dimension: product_purchased_cs.product_purchased_event_count

  }

  filter: promotion_clicked_event_count {

    description: "Unique ID for each user"

    type: number

    suggest_explore: promotion_clicked_cs

    suggest_dimension: promotion_clicked_cs.promotion_clicked_event_count

  }



  filter: order_completed_cs_category_0 {

    description: "order_completed_category_0 - filter on all users that ordered in this category"

    type: string

    suggest_explore: order_completed_cs

    suggest_dimension: oc.category_0

  }



  filter: product_viewed_cs_category_0 {

    description: "product_viewed_cs_category_0 - filter on all users that viewed in this category"

    type: string

    suggest_explore: product_viewed_cs

    suggest_dimension: pv.category_0

  }

  filter: favorite_viewed_cs_category_0 {

    description: "favorite_viewed_cs_category_0 - filter on all users that favorite viewed in this category"

    type: string

    suggest_explore: favorite_viewed_cs

    suggest_dimension: fv.category_0

  }

  filter: product_purchased_cs_category_0 {

    description: "product_purchased_cs_category_0 - filter on all users that purchased in this category"

    type: string

    suggest_explore: product_purchased_cs

    suggest_dimension: pp.category_0

  }

  filter: promotion_clicked_cs_category_0 {

    description: "promotion_clicked_cs_category_0 - filter on all users that clicked in this category"

    type: string

    suggest_explore: promotion_clicked_cs

    suggest_dimension: pc.category_0

  }



}
