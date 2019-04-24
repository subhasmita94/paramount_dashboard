view: box_office {
  sql_table_name: paramountpoc1.boxOffice ;;

  dimension: box_id {
    type: number
    sql: ${TABLE}.bo_id ;;
  }

  dimension: movie_title {
    type: string
    sql: ${TABLE}.Movie_title ;;
  }

  dimension: Year {
    type: string
    sql: ${TABLE}.Week ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  measure: collection {
    type: sum
    sql: ${TABLE}.Collection ;;
    drill_fields: [detail*]
    value_format_name: usd_0
  }

  measure: avg_collection {
    type: average
    sql: ${TABLE}.Collection ;;
    drill_fields: [detail*]
    value_format_name: usd_0
  }

  set: detail {
    fields: [box_id, movie_title, Year, collection]
  }
}
