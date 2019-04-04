create table Customer (
    cID int primary key,
    numPeople int,
    status varchar(38),
    name varchar(38),
    email varchar(40),
    phone varchar(15)
);

create table Owner(
    oID int primary key,
    name varchar(38),
    email varchar(40),
    phone varchar(15)
);
create table Place(
    pID varchar(12) primary key,
    rating int,
    status varchar(40),
    sqr decimal,
    location varchar(200),
    accomodation varchar(50)
);


/*-----------Relationships----------*/
create table consults(
    foreign key (cID) references Customer (cID),
    foreign key (oID) references Owner (oID)
);

create table registers(
    foreign key (cID) references Customer (cID),
    foreign key (oID) references Owner (oID),
    foreign key (pID) references Place (pID),
    day date
);

create table chooses(
    foreign key (cID) references Customer (cID),
    foreign key (pID) references Place (pID),
    decision varchar(15)
);

