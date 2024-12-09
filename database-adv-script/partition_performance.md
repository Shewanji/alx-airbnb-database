Report on Observed Improvements
Before Partitioning:
The query may perform a full table scan on the large Booking table, which is inefficient when looking for bookings in a specific date range.
The database has to scan all rows in the table, even if only a small subset of data is needed.
After Partitioning:
The query performance should improve significantly. PostgreSQL will only scan the relevant partitions for the specified date range.
For example, if you query bookings between June 1, 2023, and June 30, 2023, only the Booking_2023 partition will be scanned, instead of the entire Booking table.