/* load orders.csv */
orders = LOAD '/user/maria_dev/diplomacy/orders.csv'  USING PigStorage(',') AS
	(game_id:chararray,
    unit_id:chararray,
    unit_order:chararray,
    location:chararray,
    target:chararray,
    target_dest:chararray,
    success:chararray,
    reason:chararray,
    turn_num:chararray);

/* Filter by target that matches 'Holland' */
ordersFiltered = FILTER orders BY (target matches '.*Holland$*.');

/* Group the filtered column by location and target */
ordersGrouped = Group ordersFiltered By (location, target);

/* Genrate requested rows, and count the filtered column that matches the target Holland */
result = FOREACH ordersGrouped GENERATE FLATTEN(group) as (location, target), COUNT(ordersFiltered.target) AS nrOfTargetInstances;

/* Order by location alphabetically */
orderedResult = ORDER result BY location ASC;

/* Dump result */
DUMP orderedResult;