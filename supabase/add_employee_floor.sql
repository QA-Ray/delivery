alter table public.employees
  add column if not exists floor text;

-- Assign existing employees after confirming the roster.
-- Use the same value for everyone on a floor (for example, '3F').
-- Unassigned employees (NULL or blank) are excluded from draws.
--
-- update public.employees
-- set floor = '3F'
-- where lower(name) in ('employee_name')
-- returning name, floor;
