view: dim_user{
  sql_table_name: `ciceksepeti-dwh.Looker.DimUserView`
    ;;

  dimension: user_id {
    type: string
    sql: ${TABLE}.UserId ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
