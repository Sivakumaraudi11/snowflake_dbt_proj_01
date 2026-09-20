-- This config tells dbt to build a physical table (instead of a view)


select
    employee_id,
    employee_name,
    salary
from {{ ref('employees') }} -- This references the table we made in Method 1
where salary > 90000
