connection: "cdp"

# include all the views
include: "/views/**/*.view"

datagroup: segment_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: segment_default_datagroup

explore: order_completed_csview {}

explore: product_returned_csview {}

explore: product_cancelled_csview {}

explore: product_review_approved_csview {}
