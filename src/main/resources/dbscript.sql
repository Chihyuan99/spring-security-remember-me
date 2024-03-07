create table users(
	username varchar(50) not null primary key,
	password varchar(100) not null,
	enabled boolean not null
);
create table authorities (
	username varchar(50) not null,
	authority varchar(50) not null,
	constraint fk_authorities_users foreign key(username) references users(username)
);
create unique index ix_auth_username on authorities (username,authority);

create table persistent_logins(
	username varchar(50) not null,
	series varchar(64) primary key,
	token varchar(64) not null,
	last_used timestamp not null
);

# REMINDER - Insert these records only if not exists already (from previous code sample)
#Insert some data into users and authorities tables.

insert into users(username,password,enabled)
	values('admin','$2a$10$NtO3UIc58ntl.BkQHJhyy.DGyOjrHWz/UyAEvZoG9TNUwHPP3/QSe',true);
insert into authorities(username,authority) 
	values('admin','ROLE_ADMIN');

# REMINDER on Encoding password

#Before inserting data into tables, you can encrypt the password using the BCryptPasswordEncoder. 

#String encoded=new BCryptPasswordEncoder().encode("admin@123");
#System.out.println(encoded);
