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
  measure: event_name {
    type: string
    sql: ${event_text};;
    drill_fields: [ordercompleteddetail*,productpurchaseddetail*,productvieweddetail*]
    link: {
      label: "Order Completed Details"
    }
    link: {
      label: "Product Purchased Details"
    }
    }
    set: ordercompleteddetail {
      fields: [order_completed_cs.event_id,order_completed_cs.order_id,order_completed_cs.user_id,order_completed_cs.currency,order_completed_cs.cart_campaign_id,order_completed_cs.cart_campaign_name,order_completed_cs.cart_campaign_type,order_completed_cs.cart_discount,order_completed_cs.revenue,order_completed_cs.shipping,order_completed_cs.subtotal,order_completed_cs.tax,order_completed_cs.total,order_completed_cs.total_gross_profit,order_completed_cs.installment,order_completed_cs.pay_type,order_completed_cs.is_saved_card,order_completed_cs.deferred_fee,order_completed_cs.send_to,order_completed_cs.payment_bank_info,order_completed_cs.authentication,order_completed_cs.membership_type,order_completed_cs.products,order_completed_cs.is_new_customer,order_completed_cs.is_first_cs_order,order_completed_cs.is_first_varvar_order,order_completed_cs.channel,order_completed_cs.category_0,order_completed_cs.is_3ds_verified,order_completed_cs.earned_wallet_points,order_completed_cs.deposit_amount_to_wallet,order_completed_cs.redeemed_wallet_points,order_completed_cs.total_discount,order_completed_cs.is_first_cs_app_order,order_completed_cs.is_first_market_order,order_completed_cs.is_first_market_app_order]
    }
    set: productpurchaseddetail {
    fields: [product_purchased_cs.event_id,product_purchased_cs.user_id,product_purchased_cs.campaign_discount,product_purchased_cs.campaign_id,product_purchased_cs.campaign_name,product_purchased_cs.campaign_type,product_purchased_cs.brand,product_purchased_cs.category,product_purchased_cs.category_0,product_purchased_cs.category_1,product_purchased_cs.category_2,product_purchased_cs.category_3,product_purchased_cs.category_4,product_purchased_cs.currency,product_purchased_cs.delivery_city_info,product_purchased_cs.delivery_type,product_purchased_cs.gross_profit,product_purchased_cs.is_abonelik,product_purchased_cs.is_main_product,product_purchased_cs.is_quick_delivery,product_purchased_cs.name,product_purchased_cs.order_id,product_purchased_cs.position,product_purchased_cs.pre_sale_percent_label,product_purchased_cs.pre_sale_price,product_purchased_cs.pre_sale_price_decrease,product_purchased_cs.price,product_purchased_cs.product_id,product_purchased_cs.quantity,product_purchased_cs.selected_currency,product_purchased_cs.shipping,product_purchased_cs.variant_body_size,product_purchased_cs.variant_color,product_purchased_cs.variant_id,product_purchased_cs.vendor_id,product_purchased_cs.vendor_type]
    }
    set: productvieweddetail {
    fields: [product_viewed_cs.event_id,product_viewed_cs.user_id,product_viewed_cs.brand,product_viewed_cs.cart_discount_applied,product_viewed_cs.currency,product_viewed_cs.is_free_delivery,product_viewed_cs.category,product_viewed_cs.category_0,  product_viewed_cs.category_1, product_viewed_cs.category_2, product_viewed_cs.category_3,product_viewed_cs.category_4,  product_viewed_cs.category_5,product_viewed_cs.name,product_viewed_cs.pre_sale_percent_label,product_viewed_cs.pre_sale_price,    product_viewed_cs.pre_sale_price_decrease,    product_viewed_cs.price,product_viewed_cs.product_id,product_viewed_cs.product_rating,product_viewed_cs.variant_id,product_viewed_cs.vendor_id,product_viewed_cs.vendor_type]
  }


 }
