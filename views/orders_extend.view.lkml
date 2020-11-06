include: "/views/**/*.view"
view: orders_extend {
  extends: [orders_dt]
  sql_table_name:
         {% if date_granularity._parameter_value == 'odt' %}
       ${orders_dt.SQL_TABLE_NAME}
    {% elsif date_granularity._parameter_value == 'pdt' %}
       ${products_dt.SQL_TABLE_NAME}
    {% else %}
      ${orders.SQL_TABLE_NAME}
    {% endif %};;

  parameter: date_granularity {
    type: unquoted
    allowed_value: {
      label: "Choose Orders DT"
      value: "odt"
    }
    allowed_value: {
      label: "Choose Product DT"
      value: "pdt"
    }
  }

 }
