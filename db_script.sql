
create table bank_organ(
	organ_id int primary key auto_increment,
    organ_name varchar(100),
    organ_descrioption varchar(500),
    organt_type int,
    city_or_town varchar(100),
    office_number varchar(100),
    internal_email varchar(100),
    corporate_email varchar(100),
    latitude_loc varchar(50),
    longitude_loc varchar(50),
    altitude_loc varchar(50),
    created_by int,
    confiremed_by int,
    is_confiremd tinyint,
    parent_id int,
    owner_id int
);
insert into bank_organ(`organ_name`) values('Board of directors');

create table organ_type(
	type_id int primary key,
    type_name varchar(100)
);

create table user_group(
	group_id int primary key,
    group_name varchar(100)
);

create table user_privilages(
	user_id int,
    privilges_id int,
    primary key(user_id,privilges_id)
);

create table users(
	user_id int primary key ,
    first_name varchar(100),
    midle_name varchar(100),
    last_name varchar(100),
    mobile_number varchar(13),
    email_id varchar(100),
    creation_time varchar(100),
    is_confirmed tinyint,
    work_init int,
    is_auditors tinyint,
    is_autorized tinyint,
    authirized_by int,
    user_type int,
    is_enabled tinyint,
    authorization_date varchar(50),
    user_history varchar(100)
);

-- create table annual_plan(
-- 	plan_id int primary key auto_increment,
--     plan_description varchar(100),
--     budjet_year varchar(10),
--     high int,
--     medum int,
--     low int,
--     
-- 	
-- )

create table annual_plan(
	order_number int primary key auto_increment,
    audit_name varchar(100),
    plan_year varchar(50),
    create_date varchar(50),
    created_by int,
    authorized_by int,
    in_quarter int,
    in_month int,
   
    category varchar(50),
    auditing_team int,
    auditees int,
    risk_level int,
    is_udited int,
    is_reported int
    
);
create table quarter_plan(
order_id int primary key,
quarter_number int,
audit_team int,
audit_strat_date date,
audit_end_date date,
plane_year varchar(50),
date_created int,
creaed_hy int,
date_authorized int,
is_authorized int,
authorizer int

);

//by slecting from quarter plan
create table engagement(
	order_number int primary key,--quarter plan ID
    quater_number int,
    audit_title
    organ_id int,
    creattion_date varchar(20),
    created_by int,
    audit_team int,
    audit_type int,
    assignement_date varchar(20),
    engagement_dsc varchar(500)
)

create table audit_to_engamnet(
    engamnet_id int,
    auditor_id int,
    auditor_role int,
    prinary key(engamnet_id,auditor_id) 
)

create table audit_program(
    engamnet_id int,
    audit_history varchar(2000);
    start_date varchar(20),
    end_date varchar(20),
    total_working_date int
)
create table wbs(
     engamnet_id int,
     activity_name varchar(500),
     activity_description  varchar(500)
     start_date varchar(),
     end_date varchar(),
     total_date int


)

create table finding(
    engamnet_id int,
    fionding_category int,
    finding_number int,
    finding varchar(1000),
    finding_description int,
    criateria_id int

)

create table recomendations(

)

create table criateria(
	criateria_id int primary key,
    criteria_descrition varchar(500),
    is_approved tinyint,
    category_int int,


)
--adding as all possible t possible to

create table finding_edit_hitory(
    engamnet_number int,
    finding_number int,
    finding_edit_count int,

)

create table response_evidence()

create table finding_details(

)

create table report(
    introductions_

)

create table risk_registeral()

create table controls_list()

create table contros_objectives()

create table checklist()