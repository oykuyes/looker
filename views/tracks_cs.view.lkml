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

 }
