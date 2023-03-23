view: product_viewed_cs {
  sql_table_name: `ciceksepeti-dwh.Looker.ProductViewedCSView`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }

  dimension: cart_discount_applied {
    type: yesno
    sql: ${TABLE}.cart_discount_applied ;;
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

  dimension: context_device_id {
    type: string
    sql: ${TABLE}.context_device_id ;;
  }

  dimension: context_device_type {
    type: string
    sql: ${TABLE}.context_device_type ;;
  }

  dimension: context_library_name {
    type: string
    sql: ${TABLE}.context_library_name ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}.currency ;;
  }

  dimension: is_free_delivery {
    type: string
    sql: ${TABLE}.is_free_delivery ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: pre_sale_percent_label {
    type: number
    sql: ${TABLE}.pre_sale_percent_label ;;
  }

  dimension: pre_sale_price {
    type: number
    sql: ${TABLE}.pre_sale_price ;;
  }

  dimension: pre_sale_price_decrease {
    type: number
    sql: ${TABLE}.pre_sale_price_decrease ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}.price ;;
  }

  dimension: product_id {
    type: string
    sql: ${TABLE}.product_id ;;
  }

  dimension: product_rating {
    type: number
    sql: ${TABLE}.product_rating ;;
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

  measure: count {
    type: count
    drill_fields: [id, context_library_name, name]
  }

  measure: user_count {
    sql: ${user_id} ;;
    type: count_distinct
  }
}
