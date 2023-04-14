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
  join: dim_cohort {
    type: inner
    relationship: one_to_one
    sql_on: ${dim_cohort.user_id} = ${dim_user.user_id} ;;
  }
  join: dim_cohort {
    type: left_outer
    relationship: one_to_many
    sql_on: ${dim_cohort.id} = ${dim_user.user_id} ;;
  }
}

explore: favorite_viewed_cs {}

explore: product_viewed_cs {}

explore: product_purchased_cs {}

explore: dim_cohort {}

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

explore: tracks_cs {
  join: order_completed_cs {
    type: left_outer
    relationship: one_to_one
    sql_on: ${order_completed_cs.event_id} = ${tracks_cs.event_id} ;;
  }
  join: favorite_viewed_cs {
    type: left_outer
    relationship: one_to_one
    sql_on: ${favorite_viewed_cs.event_id} = ${tracks_cs.event_id} ;;
  }
  join: product_viewed_cs {
    type: left_outer
    relationship: one_to_one
    sql_on: ${product_viewed_cs.event_id} = ${tracks_cs.event_id} ;;
  }
  join: product_purchased_cs {
    type: left_outer
    relationship: one_to_one
    sql_on: ${product_purchased_cs.event_id} = ${tracks_cs.event_id} ;;
  }
  join: promotion_clicked_cs {
    type: left_outer
    relationship: one_to_one
    sql_on: ${promotion_clicked_cs.event_id} = ${tracks_cs.event_id} ;;
  }
}
