create table faizan.member(
    member_id NUMERIC(4) PRIMARY KEY,
    member_name varchar(14) NOT NULL,
    signup_date date NOT NULL
);

create table faizan.facility(
                                facility_id NUMERIC(4) PRIMARY KEY ,
                                facility_name varchar(14) NOT NULL ,
                                facility_fee decimal(50) NOT NULL ,
                                facility_operating_cost decimal(50) NOT NULL

);


create table faizan.membership(
    membership_id NUMERIC(4) PRIMARY KEY,
    member_id NUMERIC(4),
    facility_id NUMERIC(4),
    start_date date NOT NULL ,
    end_date date,
    CONSTRAINT membership_m_id_fk FOREIGN KEY (member_id) references faizan.member(member_id),
    CONSTRAINT membership_f_id_fk FOREIGN KEY (facility_id) references faizan.facility(facility_id)

);
