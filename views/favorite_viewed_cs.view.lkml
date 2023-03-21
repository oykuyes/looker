view: favorite_viewed_cs {
  sql_table_name: `ciceksepeti-dwh.Looker.FavoriteViewedCSView`
    ;;

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

  dimension: channel {
    type: number
    sql: ${TABLE}.channel ;;
  }

  dimension: main_selection {
    type: string
    sql: ${TABLE}.main_selection ;;
  }

  dimension: pagination {
    type: number
    sql: ${TABLE}.pagination ;;
  }

  dimension: product_id {
    type: string
    sql: ${TABLE}.product_id ;;
  }

  dimension: products {
    type: string
    sql: ${TABLE}.products ;;
  }

  dimension: region_id {
    type: string
    sql: ${TABLE}.region_id ;;
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
    drill_fields: []
  }
}
