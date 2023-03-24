view: product_purchased_cs {
  sql_table_name: `ciceksepeti-dwh.Looker.ProductPurchasedCSView`
    ;;

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }

  dimension: campaign_discount {
    type: string
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

  dimension: currency {
    type: string
    sql: ${TABLE}.currency ;;
  }

  dimension: delivery_city_info {
    type: string
    sql: ${TABLE}.delivery_city_info ;;
  }

  dimension: delivery_type {
    type: string
    sql: ${TABLE}.delivery_type ;;
  }

  dimension: gross_profit {
    type: string
    sql: ${TABLE}.gross_profit ;;
  }

  dimension: is_abonelik {
    type: string
    sql: ${TABLE}.is_abonelik ;;
  }

  dimension: is_main_product {
    type: string
    sql: ${TABLE}.is_main_product ;;
  }

  dimension: is_quick_delivery {
    type: string
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

  dimension: position {
    type: string
    sql: ${TABLE}.position ;;
  }

  dimension: pre_sale_percent_label {
    type: string
    sql: ${TABLE}.pre_sale_percent_label ;;
  }

  dimension: pre_sale_price {
    type: string
    sql: ${TABLE}.pre_sale_price ;;
  }

  dimension: pre_sale_price_decrease {
    type: string
    sql: ${TABLE}.pre_sale_price_decrease ;;
  }

  dimension: price {
    type: string
    sql: ${TABLE}.price ;;
  }

  dimension: product_id {
    type: string
    sql: ${TABLE}.product_id ;;
  }

  dimension: quantity {
    type: string
    sql: ${TABLE}.quantity ;;
  }

  dimension: selected_currency {
    type: string
    sql: ${TABLE}.selected_currency ;;
  }

  dimension: shipping {
    type: string
    sql: ${TABLE}.shipping ;;
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

  dimension: vendor_type {
    type: string
    sql: ${TABLE}.vendor_type ;;
  }

  measure: user_count {
    sql: ${user_id} ;;
    type: count_distinct
  }

  measure: count {
    type: count
  }
}
