create table registeruser
(
    id       bigint not null
        constraint registeruser_pkey
            primary key,
    password varchar(255),
    username varchar(255)
);

alter table registeruser
    owner to postgres;

create table role
(
    id   bigint not null
        constraint role_pkey
            primary key,
    name varchar(255)
);

alter table role
    owner to postgres;

create table user_role
(
    user_id bigint not null
        constraint fk9pdufef8taanm1i6bsm7gqcin
            references registeruser,
    role_id bigint not null
        constraint fka68196081fvovjhkek5m97n3y
            references role,
    constraint user_role_pkey
        primary key (user_id, role_id)
);

alter table user_role
    owner to postgres;

