view: tracks_cs {
  derived_table: {

    sql: SELECT * FROM ciceksepeti-dwh.Looker.TracksCSView as tracks_cs

      WHERE tracks_cs.PartitionColumn BETWEEN DATE_SUB(DATE({% date_start events_date %}),INTERVAL 7 DAY)
                               AND DATE({% date_start events_date %})



      ;;

  }

  dimension: event_id {

    primary_key: yes

    description: "Event ID for each event"

    type: string

    sql: ${TABLE}.event_id ;;

  }

  dimension: event_text {

    description: "Unique ID for each event"

    type: string

    sql: ${TABLE}.event_text ;;
    drill_fields: [order_completed_detail*]

  }
  set: order_completed_detail {
    fields: [order_completed_cs.event_id,order_completed_cs.order_id,order_completed_cs.user_id,order_completed_cs.currency,order_completed_cs.cart_campaign_id,order_completed_cs.cart_campaign_name,order_completed_cs.cart_campaign_type,order_completed_cs.cart_discount,order_completed_cs.revenue,order_completed_cs.shipping,order_completed_cs.subtotal,order_completed_cs.tax,order_completed_cs.total,order_completed_cs.total_gross_profit,order_completed_cs.installment,order_completed_cs.pay_type,order_completed_cs.is_saved_card,order_completed_cs.deferred_fee,order_completed_cs.send_to,order_completed_cs.payment_bank_info,order_completed_cs.authentication,order_completed_cs.membership_type,order_completed_cs.products,order_completed_cs.is_new_customer,order_completed_cs.is_first_cs_order,order_completed_cs.is_first_varvar_order,order_completed_cs.channel,order_completed_cs.category_0,order_completed_cs.is_3ds_verified,order_completed_cs.earned_wallet_points,order_completed_cs.deposit_amount_to_wallet,order_completed_cs.redeemed_wallet_points,order_completed_cs.total_discount,order_completed_cs.timestamp,order_completed_cs.is_first_cs_app_order,order_completed_cs.is_first_market_order,order_completed_cs.is_first_market_app_order]
  }

  dimension: user_id {

    description: "Unique ID for each event"

    type: string

    sql: ${TABLE}.user_id ;;

  }
  dimension: timestamp {

    description: "Unique ID for each event"

    type: date_time

    sql: ${TABLE}.timestamp ;;

  }
  filter: events_date {

    description: "Unique ID for each event"

    type: date

  }

 }
