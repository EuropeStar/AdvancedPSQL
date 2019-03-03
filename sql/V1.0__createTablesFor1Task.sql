create table toast_plain (
    message text
);

alter table toast_plain
alter column message
set storage plain;

create table toast_extended (
    message text
);

alter table toast_extended
alter column message
set storage extended;

create table toast_external (
    message text
);

alter table toast_external
alter column message
set storage external;

create table toast_main (
    message text
);

alter table toast_main
alter column message
set storage main;
