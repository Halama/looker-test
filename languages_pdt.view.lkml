view: languages_pdt {
    # Or, you could make this view a derived table, like this:
   derived_table: {
     sql: SELECT "id" FROM "languages" ;;
     persist_for: "1 hour"
   }

  dimension: id {
    type: number
    primary_key: yes
    sql: ${TABLE}."id" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }

}
