view: promotion_clicked_cs {
  sql_table_name: `ciceksepeti-dwh.Looker.PromotionClickedCSView`
    ;;

  dimension: channel {
    type: number
    sql: ${TABLE}.channel ;;
  }

  dimension: creative {
    type: string
    sql: ${TABLE}.creative ;;
  }

  dimension: main_selection {
    type: string
    sql: ${TABLE}.main_selection ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: page_type {
    type: string
    sql: ${TABLE}.page_type ;;
  }

  dimension: position {
    type: string
    sql: ${TABLE}.position ;;
  }

  dimension: promotion_creative {
    type: string
    sql: ${TABLE}.promotion_creative ;;
  }

  dimension: promotion_id {
    type: string
    sql: ${TABLE}.promotion_id ;;
  }

  dimension: promotion_name {
    type: string
    sql: ${TABLE}.promotion_name ;;
  }

  dimension: promotion_position {
    type: string
    sql: ${TABLE}.promotion_position ;;
  }

  dimension: promotion_promotion_id {
    type: string
    sql: ${TABLE}.promotion_promotion_id ;;
  }

  dimension: region_id {
    type: string
    sql: ${TABLE}.region_id ;;
  }

  dimension: target_url {
    type: string
    sql: ${TABLE}.target_url ;;
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

  measure: count {
    type: count
    drill_fields: [promotion_name, name]
  }

  measure: user_count {
    sql: ${user_id} ;;
    type: count_distinct
  }
}
