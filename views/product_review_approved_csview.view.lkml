view: product_review_approved_csview {
  sql_table_name: `Looker.ProductReviewApprovedCSView`
    ;;

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension: category_0 {
    type: string
    sql: ${TABLE}.category_0 ;;
  }

  dimension: category_1 {
    type: string
    sql: ${TABLE}.category_1 ;;
  }

  dimension: category_2 {
    type: string
    sql: ${TABLE}.category_2 ;;
  }

  dimension: category_3 {
    type: string
    sql: ${TABLE}.category_3 ;;
  }

  dimension: category_4 {
    type: string
    sql: ${TABLE}.category_4 ;;
  }

  dimension: category_5 {
    type: string
    sql: ${TABLE}.category_5 ;;
  }

  dimension: delivery_type {
    type: string
    sql: ${TABLE}.delivery_type ;;
  }

  dimension: has_comment {
    type: yesno
    sql: ${TABLE}.has_comment ;;
  }

  dimension: has_ticket {
    type: yesno
    sql: ${TABLE}.has_ticket ;;
  }

  dimension: order_id {
    type: string
    sql: ${TABLE}.order_id ;;
  }

  dimension: product_id {
    type: string
    sql: ${TABLE}.product_id ;;
  }

  dimension: rating {
    type: number
    sql: ${TABLE}.rating ;;
  }

  dimension: suborder_id {
    type: string
    sql: ${TABLE}.suborder_id ;;
  }

  dimension_group: timestamp {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.timestamp ;;
  }

  dimension: user_id {
    type: string
    sql: ${TABLE}.user_id ;;
  }

  dimension: variant_id {
    type: string
    sql: ${TABLE}.variant_id ;;
  }

  dimension: vendor_id {
    type: string
    sql: ${TABLE}.vendor_id ;;
  }

  dimension: vendor_type {
    type: string
    sql: ${TABLE}.vendor_type ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
