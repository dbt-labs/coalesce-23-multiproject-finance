select
    *
from
    {{ ref('core_platform', 'fct_orders') }}