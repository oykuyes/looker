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
    drill_fields: [order_completed_detail*, product_purchased_detail*]

  }
  set: order_completed_detail {
    fields: [order_completed_cs.timestamp, order_completed_cs.order_id]
  }
  set: product_purchased_detail {
    fields: [product_purchased_cs.timestamp, product_purchased_cs.product_id]
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
