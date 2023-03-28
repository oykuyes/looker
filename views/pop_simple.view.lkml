include: "order_completed_cs.view.lkml"

view: pop_simple {
  extends: [order_completed_cs]

  parameter: choose_breakdown {
    label: "Choose Grouping (Rows)"
    view_label: "_PoP"
    type: unquoted
    default_value: "Month"
    allowed_value: {label: "Month Name" value:"Month"}
    allowed_value: {label: "Day of Year" value: "DOY"}
    allowed_value: {label: "Day of Month" value: "DOM"}
    allowed_value: {label: "Day of Week" value: "DOW"}
    allowed_value: {value: "Date"}
  }

  parameter: choose_comparison {
    label: "Choose Comparison (Pivot)"
    view_label: "_PoP"
    type: unquoted
    default_value: "Year"
    allowed_value: {value: "Year" }
    allowed_value: {value: "Month"}
    allowed_value: {value: "Week"}
  }

  dimension: pop_row  {
    view_label: "_PoP"
    label_from_parameter: choose_breakdown
    type: string
    order_by_field: timestamp_month # Important
    sql:
        {% if choose_breakdown._parameter_value == 'Month' %} ${timestamp_month_name}
        {% elsif choose_breakdown._parameter_value == 'DOY' %} ${timestamp_day_of_year}
        {% elsif choose_breakdown._parameter_value == 'DOM' %} ${timestamp_day_of_month}
        {% elsif choose_breakdown._parameter_value == 'DOW' %} ${timestamp_day_of_week}
        {% elsif choose_breakdown._parameter_value == 'Date' %} ${timestamp_date}
        {% else %}NULL{% endif %} ;;
  }

  dimension: pop_pivot {
    view_label: "_PoP"
    label_from_parameter: choose_comparison
    type: string
    order_by_field: timestamp_week_of_year # Important
    sql:
        {% if choose_comparison._parameter_value == 'Year' %} ${timestamp_year}
        {% elsif choose_comparison._parameter_value == 'Month' %} ${timestamp_month_name}
        {% elsif choose_comparison._parameter_value == 'Week' %} ${timestamp_week}
        {% else %}NULL{% endif %} ;;
  }

# These dimensions are just to make sure the dimensions sort correctly

  dimension: sort_by1 {
    hidden: yes
    type: number
    sql:
        {% if choose_breakdown._parameter_value == 'Month' %} ${timestamp_month_num}
        {% elsif choose_breakdown._parameter_value == 'DOY' %} ${timestamp_day_of_year}
        {% elsif choose_breakdown._parameter_value == 'DOM' %} ${timestamp_day_of_month}
        {% elsif choose_breakdown._parameter_value == 'DOW' %} ${timestamp_day_of_week_index}
        {% elsif choose_breakdown._parameter_value == 'Date' %} ${timestamp_date}
        {% else %}NULL{% endif %} ;;
  }

  dimension: sort_by2 {
    hidden: yes
    type: string
    sql:
        {% if choose_comparison._parameter_value == 'Year' %} ${timestamp_year}
        {% elsif choose_comparison._parameter_value == 'Month' %} ${timestamp_month_num}
        {% elsif choose_comparison._parameter_value == 'Week' %} ${timestamp_week}
        {% else %}NULL{% endif %} ;;
  }
}

  explore: pop_simple {
    label: "PoP Method 2: Allow users to choose periods with parameters"
    always_filter: {
      filters: [pop_simple.choose_comparison: "", pop_simple.choose_breakdown: ""]
  }
}
