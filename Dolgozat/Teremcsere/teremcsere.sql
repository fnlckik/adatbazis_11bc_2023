create database Teremcsere;
create table Terem(
    szam int,
    letszam tinyint not null,
    gepterem boolean default false,
    constraint PK_szam Primary key(szam),
    constraint CHK_letszam CHECK(12<=letszam and letszam<=35)
    
);


alter table Terem
add osztaly varchar(5);

create table csere(
    id int auto_increment,
    honnan int,
    hova int,
    idopont Datetime,
    constraint PK_id Primary key(id),
    constraint UQ_idopont_hova unique(hova,idopont),
    constraint FK_csere foreign key(honnan) references Terem(szam)
);

drop table csere;
