view: order_completed_cs {
  sql_table_name: `ciceksepeti-dwh.Looker.OrderCompletedCSView`
    ;;

  dimension: authentication {
    type: string
    sql: ${TABLE}.authentication ;;
  }

  dimension: cart_campaign_id {
    type: string
    sql: ${TABLE}.cart_campaign_id ;;
  }

  dimension: cart_campaign_name {
    type: string
    sql: ${TABLE}.cart_campaign_name ;;
  }

  dimension: cart_campaign_type {
    type: string
    sql: ${TABLE}.cart_campaign_type ;;
  }

  dimension: cart_discount {
    type: number
    sql: ${TABLE}.cart_discount ;;
  }

  dimension: category_0 {
    type: string
    sql: ${TABLE}.category_0 ;;
  }

  dimension: channel {
    type: number
    sql: ${TABLE}.channel ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}.currency ;;
  }

  dimension: deferred_fee {
    type: number
    sql: ${TABLE}.deferred_fee ;;
  }

  dimension: deposit_amount_to_wallet {
    type: number
    sql: ${TABLE}.deposit_amount_to_wallet ;;
  }

  dimension: earned_wallet_points {
    type: number
    sql: ${TABLE}.earned_wallet_points ;;
  }

  dimension: installment {
    type: number
    sql: ${TABLE}.installment ;;
  }

  dimension: is_3ds_verified {
    type: yesno
    sql: ${TABLE}.is_3ds_verified ;;
  }

  dimension: is_first_cs_app_order {
    type: yesno
    sql: ${TABLE}.is_first_cs_app_order ;;
  }

  dimension: is_first_cs_order {
    type: yesno
    sql: ${TABLE}.is_first_cs_order ;;
  }

  dimension: is_first_market_app_order {
    type: yesno
    sql: ${TABLE}.is_first_market_app_order ;;
  }

  dimension: is_first_market_order {
    type: yesno
    sql: ${TABLE}.is_first_market_order ;;
  }

  dimension: is_first_varvar_order {
    type: yesno
    sql: ${TABLE}.is_first_varvar_order ;;
  }

  dimension: is_new_customer {
    type: yesno
    sql: ${TABLE}.is_new_customer ;;
  }

  dimension: is_saved_card {
    type: yesno
    sql: ${TABLE}.is_saved_card ;;
  }

  dimension: membership_type {
    type: number
    sql: ${TABLE}.membership_type ;;
  }

  dimension: order_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.order_id ;;
  }

  dimension: pay_type {
    type: string
    sql: ${TABLE}.pay_type ;;
  }

  dimension: payment_bank_info {
    type: string
    sql: ${TABLE}.payment_bank_info ;;
  }

  dimension: products {
    type: string
    sql: ${TABLE}.products ;;
  }

  dimension: redeemed_wallet_points {
    type: number
    sql: ${TABLE}.redeemed_wallet_points ;;
  }

  dimension: revenue {
    type: number
    sql: ${TABLE}.revenue ;;
  }

  dimension: send_to {
    type: string
    sql: ${TABLE}.send_to ;;
  }

  dimension: shipping {
    type: number
    sql: ${TABLE}.shipping ;;
  }

  dimension: subtotal {
    type: number
    sql: ${TABLE}.subtotal ;;
  }

  dimension: tax {
    type: number
    sql: ${TABLE}.tax ;;
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

  dimension: total {
    type: number
    sql: ${TABLE}.total ;;
  }

  dimension: total_discount {
    type: number
    sql: ${TABLE}.total_discount ;;
  }

  dimension: total_gross_profit {
    type: number
    sql: ${TABLE}.total_gross_profit ;;
  }

  dimension: user_id {
    type: string
    sql: ${TABLE}.user_id ;;
  }

  measure: count {
    type: count

  }

  measure: user_count {
    sql: ${user_id} ;;
    type: count_distinct
  }

  measure: order_id_count {
    sql: ${order_id}
    type: count_distinct;;
  }

  measure: sum_toal {
    sql: ${total}
    type: sum ;;
  }

  measure: sum_toal_discount {
    sql: ${total_discount}
    type: sum ;;
  }
}