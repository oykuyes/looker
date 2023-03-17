view: product_cancelled_csview {
  sql_table_name: `Looker.ProductCancelledCSView`
    ;;

  dimension: additional_product_cancel_amount {
    type: number
    sql: ${TABLE}.additional_product_cancel_amount ;;
  }

  dimension: additional_product_id {
    type: string
    sql: ${TABLE}.additional_product_id ;;
  }

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }

  dimension: campaign_discount {
    type: number
    sql: ${TABLE}.campaign_discount ;;
  }

  dimension: campaign_id {
    type: string
    sql: ${TABLE}.campaign_id ;;
  }

  dimension: campaign_name {
    type: string
    sql: ${TABLE}.campaign_name ;;
  }

  dimension: campaign_type {
    type: string
    sql: ${TABLE}.campaign_type ;;
  }

  dimension: cancel_amount {
    type: number
    sql: ${TABLE}.cancel_amount ;;
  }

  dimension: cancel_reason {
    type: string
    sql: ${TABLE}.cancel_reason ;;
  }

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

  dimension: currency {
    type: string
    sql: ${TABLE}.currency ;;
  }

  dimension: deferred_fee {
    type: number
    sql: ${TABLE}.deferred_fee ;;
  }

  dimension: delivery_city_info {
    type: string
    sql: ${TABLE}.delivery_city_info ;;
  }

  dimension: delivery_schedule {
    type: string
    sql: ${TABLE}.delivery_schedule ;;
  }

  dimension: delivery_type {
    type: string
    sql: ${TABLE}.delivery_type ;;
  }

  dimension: gross_profit {
    type: number
    sql: ${TABLE}.gross_profit ;;
  }

  dimension: has_additional_product {
    type: yesno
    sql: ${TABLE}.has_additional_product ;;
  }

  dimension: is_abonelik {
    type: yesno
    sql: ${TABLE}.is_abonelik ;;
  }

  dimension: is_personalized {
    type: yesno
    sql: ${TABLE}.is_personalized ;;
  }

  dimension: is_quick_delivery {
    type: yesno
    sql: ${TABLE}.is_quick_delivery ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: order_id {
    type: string
    sql: ${TABLE}.order_id ;;
  }

  dimension: personalization_type {
    type: string
    sql: ${TABLE}.personalization_type ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}.price ;;
  }

  dimension: product_id {
    type: string
    sql: ${TABLE}.product_id ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}.quantity ;;
  }

  dimension: shipping {
    type: number
    sql: ${TABLE}.shipping ;;
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

  dimension: total_cancel_amount {
    type: number
    sql: ${TABLE}.total_cancel_amount ;;
  }

  dimension: user_id {
    type: string
    sql: ${TABLE}.user_id ;;
  }

  dimension: variant_body_size {
    type: string
    sql: ${TABLE}.variant_body_size ;;
  }

  dimension: variant_color {
    type: string
    sql: ${TABLE}.variant_color ;;
  }

  dimension: variant_id {
    type: string
    sql: ${TABLE}.variant_id ;;
  }

  dimension: variant_shoe_size {
    type: string
    sql: ${TABLE}.variant_shoe_size ;;
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
    drill_fields: [campaign_name, name]
  }
}
