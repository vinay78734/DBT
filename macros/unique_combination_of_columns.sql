{% macro unique_combination_of_columns(relation, column_names) %}
    {% set column_list = column_names | join(', ') %}
    {% set sql %}
        SELECT COUNT(*) = COUNT(DISTINCT {{ column_list }})
        FROM {{ relation }}
    {% endset %}
    {{ return(sql) }}
{% endmacro %}
