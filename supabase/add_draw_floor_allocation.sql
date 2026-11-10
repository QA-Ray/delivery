alter table public.draws
  add column if not exists floor_allocation jsonb;

comment on column public.draws.floor_allocation is
  'Per-floor snapshot at draw time: floor, eligible_count, expected_slots, actual_slots. NULL for legacy draws.';
