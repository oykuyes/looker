view: dim_user{
  sql_table_name: `ciceksepeti-dwh.Looker.DimUserView`
    ;;

  dimension: user_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.UserId ;;
    tags: ["braze_id"]
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
