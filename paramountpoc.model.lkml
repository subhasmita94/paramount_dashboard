connection: "paramount123"

# include all the views
include: "box_office.view"

datagroup: paramountpoc_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: paramountpoc_default_datagroup

explore: box_office {}
