# The name of this view in Looker is "Findemo"
view: findemo {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `default-project-376801.reports.findemo` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Branch" in Explore.

  dimension: branch {
    type: string
    sql: ${TABLE}.branch ;;
  }

  dimension: customer {
    type: string
    sql: ${TABLE}.Customer ;;
  }

  dimension: foreginper {
    type: number
    sql: ${TABLE}.foreginper ;;
  }

  dimension: foreignfund {
    type: string
    sql: ${TABLE}.foreignfund ;;
  }

  dimension: fund {
    type: string
    sql: ${TABLE}.fund ;;
  }

  dimension: loan {
    type: number
    sql: ${TABLE}.Loan ;;
  }

  dimension: nav {
    type: number
    sql: ${TABLE}.nav ;;
  }

  dimension: percentage {
    type: number
    sql: ${TABLE}.percentage ;;
  }

  dimension: revenue {
    type: number
    sql: ${TABLE}.revenue ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_revenue {
    type: sum
    sql: ${revenue} ;;  }
  measure: average_revenue {
    type: average
    sql: ${revenue} ;;  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.year ;;
  }

  dimension: ytdreturn {
    type: number
    sql: ${TABLE}.ytdreturn ;;
  }
  measure: count {
    type: count
  }
}
