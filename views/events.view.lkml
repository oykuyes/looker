view: events {
  derived_table: {

    sql: SELECT * FROM ciceksepeti-dwh.Looker.TracksCSView as events

            WHERE ({% condition events_event_text %} events.event_text {% endcondition %})



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
  filter: events_event_text {

    description: "events_event_text"

    type: string

    suggest_explore: events

    suggest_dimension: events.event_text

  }
  measure: event_name {
    type: string
    sql: ${event_text};;


  }



}
