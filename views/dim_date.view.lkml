view: dim_date {
  sql_table_name: `ciceksepeti-dwh.Looker.DimDateView`
    ;;

  dimension_group: date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Date ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
