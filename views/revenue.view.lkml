# The name of this view in Looker is "Revenue"
view: revenue {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `default-project-376801.reports.revenue` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Actual" in Explore.

  dimension: actual {
    type: number
    sql: ${TABLE}.Actual ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_actual {
    type: sum
    sql: ${actual} ;;  }
  measure: average_actual {
    type: average
    sql: ${actual} ;;  }

  dimension: budget {
    type: number
    sql: ${TABLE}.Budget ;;
  }

  dimension: churnrate {
    type: number
    sql: ${TABLE}.Churnrate ;;
  }

  dimension: donation {
    type: number
    sql: ${TABLE}.donation ;;
  }

  dimension: eps {
    type: number
    sql: ${TABLE}.eps ;;
  }

  dimension: epsper {
    type: number
    sql: ${TABLE}.epsper ;;
  }

  dimension: expense {
    type: number
    sql: ${TABLE}.Expense ;;
  }

  dimension: gbi {
    type: number
    sql: ${TABLE}.GBI ;;
  }

  dimension: goal {
    type: number
    sql: ${TABLE}.Goal ;;
  }

  dimension: goalperc {
    type: number
    sql: ${TABLE}.Goalperc ;;
  }

  dimension: grossloan {
    type: number
    sql: ${TABLE}.grossloan ;;
  }

  dimension: grossloanper {
    type: number
    sql: ${TABLE}.grossloanper ;;
  }

  dimension: growth {
    type: number
    sql: ${TABLE}.Growth ;;
  }

  dimension: hoursvol {
    type: number
    sql: ${TABLE}.hoursvol ;;
  }

  dimension: netinterestincome {
    type: number
    sql: ${TABLE}.netinterestincome ;;
  }

  dimension: netinterestincomeper {
    type: number
    sql: ${TABLE}.netinterestincomeper ;;
  }

  dimension: netinterestmargin {
    type: number
    sql: ${TABLE}.netinterestmargin ;;
  }

  dimension: netinterestper {
    type: number
    sql: ${TABLE}.netinterestper ;;
  }

  dimension: pbt {
    type: number
    sql: ${TABLE}.pbt ;;
  }

  dimension: pbtper {
    type: number
    sql: ${TABLE}.pbtper ;;
  }

  dimension: quarter {
    type: number
    sql: ${TABLE}.quarter ;;
  }

  dimension: renewenergy {
    type: number
    sql: ${TABLE}.renewenergy ;;
  }

  dimension: revper {
    type: number
    sql: ${TABLE}.revper ;;
  }

  dimension: sus_index {
    type: number
    sql: ${TABLE}.susIndex ;;
  }

  dimension: training {
    type: number
    sql: ${TABLE}.training ;;
  }

  dimension: traininghour {
    type: number
    sql: ${TABLE}.traininghour ;;
  }

  dimension: trees {
    type: number
    sql: ${TABLE}.trees ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.year ;;
  }
  measure: count {
    type: count
  }
}
