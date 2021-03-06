
-- run point in polygon test with standard geom field storage 
-- PG 10 Execute times 34 m 18 s
-- PG 11 Execute times
    -- 33 m 24 s 633 ms
    -- 32 m 29 s 386 ms
    -- 32 m 26 s 970 ms
    -- 32 m 26 s 238 ms
    -- 32 m 27 s 546 ms

-- PG 11 Execute times - ST_Subdivide - 1024 coords max



-- PG 11 Execute times - ST_Subdivide - 512 coords max
    -- 32 m 2 s 126 ms
    -- 30 m 42 s 740 ms
    -- 30 m 48 s 532 ms
    -- 30 m 41 s 439 ms
    -- 30 m 43 s 38 ms

-- PG 11 Execute times - ST_Subdivide - 256 coords max
    -- 36 m 1 s 220 ms
    -- 36 m 40 s 529 ms
    -- 36 m 28 s 737 ms

DROP TABLE IF EXISTS testing.pip_test_external;
CREATE TABLE testing.pip_test_external AS
  SELECT gnaf.gnaf_pid,
         mb.mb_16code
  FROM testing.abs_2016_mb_analysis AS mb
         inner join testing.address_principals as gnaf
           on st_intersects(gnaf.geom, mb.geom);

DROP TABLE IF EXISTS testing.pip_test_external;
CREATE TABLE testing.pip_test_external AS
  SELECT gnaf.gnaf_pid,
         mb.mb_16code
  FROM testing.abs_2016_mb_analysis AS mb
         inner join testing.address_principals as gnaf
           on st_intersects(gnaf.geom, mb.geom);

DROP TABLE IF EXISTS testing.pip_test_external;
CREATE TABLE testing.pip_test_external AS
  SELECT gnaf.gnaf_pid,
         mb.mb_16code
  FROM testing.abs_2016_mb_analysis AS mb
         inner join testing.address_principals as gnaf
           on st_intersects(gnaf.geom, mb.geom);

DROP TABLE IF EXISTS testing.pip_test_external;
CREATE TABLE testing.pip_test_external AS
  SELECT gnaf.gnaf_pid,
         mb.mb_16code
  FROM testing.abs_2016_mb_analysis AS mb
         inner join testing.address_principals as gnaf
           on st_intersects(gnaf.geom, mb.geom);

DROP TABLE IF EXISTS testing.pip_test_external;
CREATE TABLE testing.pip_test_external AS
  SELECT gnaf.gnaf_pid,
         mb.mb_16code
  FROM testing.abs_2016_mb_analysis AS mb
         inner join testing.address_principals as gnaf
           on st_intersects(gnaf.geom, mb.geom);


SELECT Count(*) FROM testing.pip_test_external;


-- 8 parallel processes, ST_Subdivide 1024 coords -- 0:14:27.275182