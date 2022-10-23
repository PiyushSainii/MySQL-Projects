create database libary_sys;
use libary_sys;

Show databases;    


create table readers
	(
		reader_id varchar(6),
        fname varchar(50),
        lname varchar(50),
        city varchar(50),
        mobileno varchar(12),
        occupation varchar(10),
        dob date,
        constraint readers_pk primary key(reader_id)
	);
    
    select * from readers;


insert into  readers values ('001','piyush','saini','alwar','8058633627','student','2002-6-1');
insert into  readers values ('002','Ankit','beasar','alwar','8058633627','student','2002-6-1');
insert into  readers values ('003','ashish','yadav','alwar','7894561230','student','2003-6-1');
insert into  readers values ('004','aman','saini','alwar','7589641230','student','2002-6-1');  
insert into  readers values ('005','ajay','jatt','alwar','9876543210','student','2005-6-1');  
insert into  readers values ('006','sonit','yadav','alwar','8520147963','student','2003-6-1');  
insert into  readers values ('007','satveer','gujjar','alwar','77893210456','student','2001-6-1');  
insert into  readers values ('008','jitendra','gujjar','alwar','6352410789','student','2002-6-1');  
insert into  readers values ('009','vivek','jatt','alwar','753624190','student','2004-6-1');  
insert into  readers values ('010','vishal','sain','alwar','9632587410','student','2002-6-1');  
insert into  readers values ('011','priyanshu','saini','alwar','7896541230','student','2002-6-1');  
insert into  readers values ('012','panjak','verma','alwar','9877624130','student','2005-6-1');  
insert into  readers values ('013','keshav','jatt','alwar','9658741230','student','2002-6-1');  
insert into  readers values ('014','kartik','saini','alwar','9873574100','student','2005-6-1');  
insert into  readers values ('015','mayank','jain','alwar','9876541266','student','2002-6-1');  
insert into  readers values ('016','dipanshu','jain','alwar','9887353980','student','2002-6-1');  
insert into  readers values ('017','ujjwal','gupta','alwar','8619306410','student','2002-6-1');  
insert into  readers values ('018','tanvi','aggrwal','alwar','707424251','student','2002-6-1');  
insert into  readers values ('019','priyanka','verma','alwar','8475633624','student','2002-6-1');  
insert into  readers values ('020','rashi','yadav','alwar','8754210369','student','2002-3-1');  
insert into  readers values ('021','rakhi','gupta','alwar','9865320147','student','2002-2-1');  
insert into  readers values ('022','tanu','singh','alwar','9875241036','student','2002-2-1');  
insert into  readers values ('023','taniya','sharma','alwar','36985214710','student','2008-1-1');  
insert into  readers values ('024','punit','sharma','alwar','3698521477','student','2002-9-1');  
insert into  readers values ('025','tulsi','reddy','alwar','7897897897','student','2006-8-1');  
insert into  readers values ('026','isha','sai','alwar','9879879870','student','2002-7-1');  
insert into  readers values ('027','pooja','verma','alwar','9998887770','student','2002-4-1');  
insert into  readers values ('028','krishna','gujjar','alwar','7894560000','student','2007-6-1');  
insert into  readers values ('029','kajal','choudhary','alwar','8521479630','student','2002-11-1');  
insert into  readers values ('030','harishta','saini','alwar','852001479','student','2001-4-1');  
insert into  readers values ('031','dikasha','gupta','alwar','9856471520','student','2002-6-1');  
insert into  readers values ('032','chunnu','sharma','alwar','654805749','student','2004-6-1');  
insert into  readers values ('033','neha','sain','alwar','8596743521','student','2002-6-1');  
insert into  readers values ('034','anjali','jatt','alwar','8754962415','student','2002-6-1');  
insert into  readers values ('035','maishna','pandit','alwar','8795462451','student','2002-6-1');  
insert into  readers values ('036','vahilai','gupta','alwar','8579452102','student','2008-6-1');  
insert into  readers values ('037','yukta','sharma','alwar','5264789541','student','2002-6-1');  
insert into  readers values ('038','manasi','yadav','alwar','85749625478','student','2001-6-1');  
insert into  readers values ('039','sherya','aggrwal','alwar','8568749658','student','2000-6-1');  
insert into  readers values ('040','pinki','beniwal','alwar','8547962154','student','2000-6-1');  


select * from readers;


create table book
	(
    bid varchar(6),
    bname varchar (40),
    bdomain varchar(30),
    constraint book_bid_pk primary key (bid)
    );

insert into book values('001','In Search of Lost Time','story');
insert into book values('002','Ulysses','drama');
insert into book values('003','Don Quixote ','horror');
insert into book values('004','One Hundred Years of Solitude ','drama');
insert into book values('005',' The Great Gatsby ','romance');
insert into book values('006',' Moby Dick','horror');
insert into book values('007','War and Peace','drama');
insert into book values('008','Hamlet','drama');
insert into book values('009','The Odyssey','story');
insert into book values('010','Madame Bovary','romance');
insert into book values('011',' The Divine Comedy','drama');
insert into book values('012',' Lolita','story');
insert into book values('013',' The Brothers Karamazov','horror');
insert into book values('014',' Crime and Punishment','romance');
insert into book values('015','Wuthering Heights','story');
insert into book values('016','The Catcher in the Rye','horror');
insert into book values('017',' Pride and Prejudice','drama');
insert into book values('018','The Adventures of Huckleberry Finn','romance');
insert into book values('019',' Anna Karenina','horror');
insert into book values('020','Alice Adventures in Wonderland','drama');


select * from book;



create table active_readers
	(
    account_id varchar(6),
    reader_id varchar(6),
    bid varchar(6),
    atype varchar(10),
    astatus varchar(10),
    constraint activereaders_acnumber_pk primary key (account_id),
    constraint account_readerid_fk foreign key (reader_id) references readers(reader_id),
    constraint account_bid_fk foreign key (bid) references book(bid)
	);
    
    select * from active_readers;
    
insert into active_readers values ('A001','C001','B001','Permium','Active');
insert into active_readers values ('A002','C002','B002','Permium','Active');
insert into active_readers values ('A003','C003','B003','Regular','Suspended');
insert into active_readers values ('A004','C004','B004','Permium','Active');
insert into active_readers values ('A005','C005','B005','Regular','Active');
insert into active_readers values ('A006','C006','B006','Permium','Suspended');
insert into active_readers values ('A007','C007','B007','Permium','Active');
insert into active_readers values ('A008','C008','B008','Regular','Active');
insert into active_readers values ('A009','C009','B009','Permium','Suspended');
insert into active_readers values ('A010','C010','B010','Regular','Suspended');
insert into active_readers values ('A011','C011','B011','Permium','Active');
insert into active_readers values ('A012','C012','B012','Permium','Active');
insert into active_readers values ('A013','C013','B013','Regular','Suspended');
insert into active_readers values ('A014','C014','B014','Permium','Active');
insert into active_readers values ('A015','C015','B015','Regular','Active');
insert into active_readers values ('A016','C016','B016','Permium','Suspended');
insert into active_readers values ('A017','C017','B017','Permium','Active');
insert into active_readers values ('A018','C018','B018','Regular','Active');
insert into active_readers values ('A019','C019','B019','Permium','Suspended');
insert into active_readers values ('A020','C020','B020','Regular','Suspended');

select * from active_readers;

create table bookissue_details
	(
    issuenumber varchar(6),
    account_id varchar(6),
    bid varchar(20),
    bookname varchar(50),
    numbers_of_book_issued int(7),
    constraint trandetails_tnumber_pk primary key (issuenumber),
    constraint trandetails_acnumber_fk foreign key (account_id) reference active_readers(account_id)
    );
    
    show tables;
    drop table bookissue_details;
    
    
insert into bookissue_details values ('T001','A001','B001','In Search of Lost Time',1);
insert into bookissue_details values ('T002','A002','B002','Ulysses',1);
insert into bookissue_details values ('T003','A003','B003','Don Quixote',4);
insert into bookissue_details values ('T004','A004','B004','One Hundred Years of Solitude',1);
insert into bookissue_details values ('T005','A005','B005','The Great Gatsby',2);
insert into bookissue_details values ('T006','A006','B006','Moby Dick',3);
insert into bookissue_details values ('T007','A007','B007','War and Peace',3);
insert into bookissue_details values ('T008','A008','B008','War and Peace',1);
insert into bookissue_details values ('T009','A009','B009','Hamlet',4);
insert into bookissue_details values ('T010','A010','B010','The Odyssey',4);
insert into bookissue_details values ('T011','A011','B011','Madame Bovary',1);
insert into bookissue_details values ('T012','A012','B012','Lolita',1);
insert into bookissue_details values ('T013','A013','B013','The Brothers Karamazov',4);
insert into bookissue_details values ('T014','A014','B014','Crime and Punishment',6);
insert into bookissue_details values ('T015','A015','B015','Wuthering Heights',2);
insert into bookissue_details values ('T016','A016','B016','The Catcher in the Rye',3);
insert into bookissue_details values ('T017','A017','B017','Pride and Prejudice',1);
insert into bookissue_details values ('T018','A018','B018','The Adventures of Huckleberry Finn',8);
insert into bookissue_details values ('T019','A019','B019',' Anna Karenina',4);
insert into bookissue_details values ('T020','A020','B020','Alice Adventures in Wonderland',1);





select * from active_readers;
select * from active_readers where astatus = 'Terminated';
select * from active_readers where astatus = 'Active';