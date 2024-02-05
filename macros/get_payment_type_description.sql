-- {#
-- THIS MACRO RETURNS THE DESCRIPTION OF THE payment_type
-- #}

-- {%   macro get_payment_type_description -%}

--         case((payment_type))
--             when 1 then 'Credit Card'
--             when 2 then 'Cash'
--             when 3 then 'No Charge'
--             when 4 then 'Dispute'
--             when 5 then 'unknown'
--             when 6 then 'Voided Trip'
--         end

-- {%- endmacro %}

{#
    This macro returns the description of the payment_type 
#}

{% macro get_payment_type_description(payment_type) -%}

    case {{ dbt.safe_cast("payment_type", api.Column.translate_type("integer")) }}  
        when 1 then 'Credit card'
        when 2 then 'Cash'
        when 3 then 'No charge'
        when 4 then 'Dispute'
        when 5 then 'Unknown'
        when 6 then 'Voided trip'
        else 'EMPTY'
    end

{%- endmacro %}