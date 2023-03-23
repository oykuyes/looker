# If necessary, uncomment the line below to include explore_source.

# include: "segment.model.lkml"

view: derived_user {
  derived_table: {
    explore_source: dim_user {
      column: user_id {}
      column: count { field: order_completed_cs.count }
    }
  }
  dimension: user_id {
    description: ""
  }
  dimension: count {
    description: ""
    type: number
  }
}
