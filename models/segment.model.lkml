connection: "cdp"

# include all the views
include: "/views/**/*.view"

datagroup: segment_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: segment_default_datagroup

explore: order_completed_cs {}

explore: dim_user {
  join: order_completed_cs {
    type: left_outer
    relationship: one_to_many
    sql_on: ${order_completed_cs.user_id} = ${dim_user.user_id} ;;
  }
  join: favorite_viewed_cs {
    type: left_outer
    relationship: one_to_many
    sql_on: ${favorite_viewed_cs.user_id} = ${dim_user.user_id} ;;
  }
  join: product_viewed_cs {
    type: left_outer
    relationship: one_to_many
    sql_on: ${product_viewed_cs.user_id} = ${dim_user.user_id} ;;
  }
  join: product_purchased_cs {
    type: left_outer
    relationship: one_to_many
    sql_on: ${product_purchased_cs.user_id} = ${dim_user.user_id} ;;
  }
  join: promotion_clicked_cs {
    type: left_outer
    relationship: one_to_many
    sql_on: ${promotion_clicked_cs.user_id} = ${dim_user.user_id} ;;
  }
  join: derived_user_cohort {
    type: inner
    relationship: one_to_one
    sql_on: ${derived_user_cohort.user_id} = ${dim_user.user_id} ;;
  }
}

explore: favorite_viewed_cs {}

explore: product_viewed_cs {}

explore: product_purchased_cs {}

explore: dim_date {
  join: order_completed_cs {
    type: left_outer
    relationship: one_to_many
    sql_on: ${order_completed_cs.timestamp_date} = ${dim_date.date_date} ;;
  }
  join: favorite_viewed_cs {
    type: left_outer
    relationship: one_to_many
    sql_on: ${favorite_viewed_cs.timestamp_date} = ${dim_date.date_date} ;;
  }
  join: product_viewed_cs {
    type: left_outer
    relationship: one_to_many
    sql_on: ${product_viewed_cs.timestamp_date} = ${dim_date.date_date} ;;
  }
  join: product_purchased_cs {
    type: left_outer
    relationship: one_to_many
    sql_on: ${product_purchased_cs.timestamp_date} = ${dim_date.date_date} ;;
  }
  join: promotion_clicked_cs {
    type: left_outer
    relationship: one_to_many
    sql_on: ${promotion_clicked_cs.timestamp_date} = ${dim_date.date_date} ;;
  }
}

explore: promotion_clicked_cs {}
