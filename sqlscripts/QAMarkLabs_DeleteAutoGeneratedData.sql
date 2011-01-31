delete from iadv_brandawareness;
delete from iadv_effectievsegexpense;
delete from iadv_segmentexpense;
delete from fmdsvalues;
delete from fsemanticvalues;
delete from imdsvalues;
delete from isemanticvalues;

delete from brands where period = 1;
update global_constants set value = 0 where name like 'CURRENT_PERIOD';
delete from researchproject where currentperiod = 1;
update teams set currentTeamPeriod = 0;