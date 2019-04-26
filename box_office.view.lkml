view: box_office {
  sql_table_name: paramountpoc.box_office ;;

  dimension: box_office_id {
    type: number
    sql: ${TABLE}.box_office_id ;;
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
    fields: [box_office_id, movie_title, Year, collection]
  }
}
