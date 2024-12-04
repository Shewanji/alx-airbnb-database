Normalization is a database design technique that organizes tables to minimize redundancy and dependency. Applying normalization ensures data integrity and optimal database performance.

Normalization steps:
First Normal Form (1NF):

To achieve 1NF:
    Ensure that each column contains atomic values.
    Remove duplicate columns in the same table.
    Ensure that each row is unique.
Review:
    All attributes in the schema contain atomic values.
    There are no repeating groups.
    Primary keys are defined for all tables.

Second Normal Form (2NF):

To achieve 2NF:
    Ensure the table is in 1NF.
    Remove partial dependencies (attributes depending on part of a composite key).

Review:
    All tables have single-column primary keys; thus, no partial dependencies exist.

Third Normal Form (3NF):

To achieve 3NF:
    Ensure the table is in 2NF.
    Remove transitive dependencies (non-key attributes depending on other non-key attributes).

For complete 3NF ensure:
    Each table contains atomic data.
    Every non-primary key attribute is fully dependent on the primary key.
    Transitive dependencies have been removed.

Review:
    The schema is in 3NF.