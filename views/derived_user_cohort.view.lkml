view: derived_user_cohort {

  derived_table: {

    sql: SELECT DISTINCT dim_user.UserId  AS user_id
         ,order_completed_event_count
         ,product_viewed_event_count
         ,favorite_viewed_event_count
         ,product_purchased_event_count
         ,promotion_clicked_event_count

         FROM  `ciceksepeti-dwh.Looker.DimUserView` AS dim_user

      LEFT JOIN (SELECT DISTINCT user_id,COUNT(*) as order_completed_event_count FROM `ciceksepeti-dwh.Looker.OrderCompletedCSView` WHERE ({% condition order_completed_cs_category_0 %} order_completed_cs.category_0 {% endcondition %}) GROUP BY user_id)
      AS order_completed_cs ON order_completed_cs.user_id = dim_user.UserId

      LEFT JOIN (SELECT DISTINCT user_id,COUNT(*) as product_viewed_event_count FROM `ciceksepeti-dwh.Looker.ProductViewedCSView` WHERE ({% condition product_viewed_cs_category_0 %} product_viewed_cs.category_0 {% endcondition %}) GROUP BY user_id)
      AS product_viewed_cs ON product_viewed_cs.user_id = dim_user.UserId

      LEFT JOIN (SELECT DISTINCT user_id,COUNT(*) as favorite_viewed_event_count FROM `ciceksepeti-dwh.Looker.FavoriteViewedCSView` WHERE ({% condition favorite_viewed_cs_category_0 %} favorite_viewed_cs.category_0 {% endcondition %}) GROUP BY user_id)
      AS favorite_viewed_cs ON favorite_viewed_cs.user_id = dim_user.UserId

      LEFT JOIN (SELECT DISTINCT user_id,COUNT(*) as product_purchased_event_count FROM `ciceksepeti-dwh.Looker.ProductPurchasedCSView` WHERE ({% condition product_purchased_cs_category_0 %} product_purchased_cs.category_0 {% endcondition %}) GROUP BY user_id)
      AS product_purchased_cs ON product_purchased_cs.user_id = dim_user.UserId

      LEFT JOIN (SELECT DISTINCT user_id,COUNT(*) as promotion_clicked_event_count FROM `ciceksepeti-dwh.Looker.PromotionClickedCSView` WHERE ({% condition promotion_clicked_cs_category_0 %} promotion_clicked_cs.category_0 {% endcondition %}) GROUP BY user_id)
      AS promotion_clicked_cs ON promotion_clicked_cs.user_id = dim_user.UserId

      WHERE 1=1


      GROUP BY 1;;

  }



  dimension: user_id {

    primary_key: yes

    hidden: yes

    description: "Unique ID for each user"

    type: number

    sql: ${TABLE}.user_id ;;

  }

  dimension: order_completed_event_count {

    primary_key: yes

    hidden: yes

    description: "Unique ID for each user"

    type: number

    sql: ${TABLE}.order_completed_event_count ;;

  }

  dimension: product_viewed_event_count {

    primary_key: yes

    hidden: yes

    description: "Unique ID for each user"

    type: number

    sql: ${TABLE}.product_viewed_event_count ;;

  }

  dimension: favorite_viewed_event_count {

    primary_key: yes

    hidden: yes

    description: "Unique ID for each user"

    type: number

    sql: ${TABLE}.favorite_viewed_event_count ;;

  }

  dimension: product_purchased_event_count {

    primary_key: yes

    hidden: yes

    description: "Unique ID for each user"

    type: number

    sql: ${TABLE}.product_purchased_event_count ;;

  }

  dimension: promotion_clicked_event_count {

    primary_key: yes

    hidden: yes

    description: "Unique ID for each user"

    type: number

    sql: ${TABLE}.promotion_clicked_event_count ;;

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
