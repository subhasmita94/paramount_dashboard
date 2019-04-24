view: tutorials_tbl {
  sql_table_name: paramountpoc1.tutorials_tbl ;;

  dimension_group: submission {
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
    sql: ${TABLE}.submission_date ;;
  }

  dimension: tutorial_author {
    type: string
    sql: ${TABLE}.tutorial_author ;;
  }

  dimension: tutorial_id {
    type: number
    sql: ${TABLE}.tutorial_id ;;
  }

  dimension: tutorial_title {
    type: string
    sql: ${TABLE}.tutorial_title ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
