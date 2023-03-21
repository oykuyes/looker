connection: "cdp"

# include all the views
include: "/views/**/*.view"

datagroup: segment_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: segment_default_datagroup

explore: order_completed_cs {}

explore: dim_user {}

explore: favorite_viewed_cs {}

explore: product_viewed_cs {}

explore: product_purchased_cs {}

explore: dim_date {}

explore: promotion_clicked_cs {}
