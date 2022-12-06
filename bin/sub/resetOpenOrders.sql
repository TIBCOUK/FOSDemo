update orders set status = 'CANCELLED' where status not in ('COMPLETE', 'CANCELLED');
commit;