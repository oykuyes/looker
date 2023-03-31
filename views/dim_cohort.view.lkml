view: dim_cohort {
    sql_table_name: `ciceksepeti-dwh.Looker.DimCohortView`
      ;;

    dimension: id {
      primary_key: yes
      type: string
      sql: ${TABLE}.Id ;;
    }

    dimension: Value {
      type: string
      sql: ${TABLE}.Value ;;
    }

    dimension: AudienceName {
      type: string
      sql: ${TABLE}.AudienceName ;;
    }

    dimension: PartitionColumn {
      type: date
      sql: ${TABLE}.PartitionColumn ;;
    }
    measure: count {
      type: count
      drill_fields: []
    }
  }
