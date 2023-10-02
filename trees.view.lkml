#X# Conversion failed: failed to parse YAML.  Check for pipes on newlines


view: trees {
  derived_table: {
    sql: SELECT * FROM `default-project-376801.reports.Trees`;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension_group: plant_month {
    type: time
    sql: ${TABLE}.plant_month ;;
  }

  dimension: total_trees {
    type: number
    sql: ${TABLE}.total_trees ;;
  }

  dimension: species {
    type: string
    sql: ${TABLE}.species ;;
  }

  dimension: care_taker {
    type: string
    sql: ${TABLE}.care_taker ;;
  }

  dimension: address {
    type: string
    sql: ${TABLE}.address ;;
  }

  dimension: site_info {
    type: string
    sql: ${TABLE}.site_info ;;
  }

  set: detail {
    fields: [
        plant_month_time,
  total_trees,
  species,
  care_taker,
  address,
  site_info
    ]
  }
}
