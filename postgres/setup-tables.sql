-- USE DatabaseName
SELECT afrecikuxltyaz;
-- Table: block_schedule
CREATE TABLE block_schedule
(
  id serial NOT NULL,
  code_subject integer,
  group_subject integer,
  start_hour integer,
  end_hour integer,
  code_building text,
  code_classroom text,
  CONSTRAINT id_block PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE block_schedule
  OWNER TO afrecikuxltyaz;
GRANT SELECT, UPDATE, TRUNCATE, DELETE, REFERENCES, TRIGGER ON TABLE block_schedule TO afrecikuxltyaz;
GRANT ALL ON TABLE block_schedule TO public;

-- Table: building
CREATE TABLE building
(
  id serial NOT NULL,
  photos_list text,
  visible text,
  location text,
  name text,
  code_faculty integer,
  code text,
  CONSTRAINT key_building PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE building
  OWNER TO afrecikuxltyaz;
GRANT ALL ON TABLE building TO afrecikuxltyaz;

-- Table: classroom
CREATE TABLE classroom
(
  id serial NOT NULL,
  code_building text,
  code text,
  id_status text,
  name text,
  capacity_sia text,
  id_type_classroom text,
  professor_desktop text,
  status_professor_desktop text,
  n_chairs text,
  n_damaged_chairs text,
  n_tables text,
  n_damaged_tables text,
  n_boards text,
  status_board text,
  n_computers text,
  n_damaged_computers text,
  other_pedagogical_support text,
  status_other_pedagogical_support text,
  n_network_point text,
  n_damaged_points text,
  n_power_sockets text,
  n_damaged_power_sockets text,
  n_light_bulbs text,
  n_damaged_light_bulbs text,
  n_windows text,
  n_damaged_windows text,
  laboratory_equipment text,
  status_laboratory_equipment text,
  ambient_light text,
  artificial_light text,
  noise text,
  humidity text,
  temperature text,
  wall_defects text,
  floor_defects text,
  roof_defects text,
  area text,
  height_classroom text,
  width_classroom text,
  photos_list text,
  update_date timestamp with time zone,
  update_by text,
  notes text,
  CONSTRAINT classroom_key PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE classroom
  OWNER TO afrecikuxltyaz;
GRANT ALL ON TABLE classroom TO afrecikuxltyaz;
GRANT ALL ON TABLE classroom TO public;

-- Table: classroom_status
CREATE TABLE classroom_status
(
  id serial NOT NULL,
  name text,
  CONSTRAINT key_classroom_status PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE classroom_status
  OWNER TO afrecikuxltyaz;
GRANT SELECT, UPDATE, TRUNCATE, DELETE, REFERENCES, TRIGGER ON TABLE classroom_status TO afrecikuxltyaz;

-- Table: classroom_type
CREATE TABLE classroom_type
(
  id serial NOT NULL,
  name text,
  CONSTRAINT key_classroom_type PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE classroom_type
  OWNER TO afrecikuxltyaz;
GRANT SELECT, UPDATE, TRUNCATE, DELETE, REFERENCES, TRIGGER ON TABLE classroom_type TO afrecikuxltyaz;

-- Table: deparment
CREATE TABLE deparment
(
  id serial NOT NULL,
  code integer,
  name text,
  code_faculty integer,
  CONSTRAINT id_deparment PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE deparment
  OWNER TO afrecikuxltyaz;
GRANT SELECT, UPDATE, TRUNCATE, DELETE, REFERENCES, TRIGGER ON TABLE deparment TO afrecikuxltyaz;

-- Table: faculty
CREATE TABLE faculty
(
  id serial NOT NULL,
  code integer,
  name text,
  CONSTRAINT id_faculty PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE faculty
  OWNER TO afrecikuxltyaz;
GRANT SELECT, UPDATE, TRUNCATE, DELETE, REFERENCES, TRIGGER ON TABLE faculty TO afrecikuxltyaz;

-- Table: level
CREATE TABLE level
(
  id serial NOT NULL,
  name text,
  CONSTRAINT id_level PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE level
  OWNER TO afrecikuxltyaz;
GRANT SELECT, UPDATE, TRUNCATE, DELETE, REFERENCES, TRIGGER ON TABLE level TO afrecikuxltyaz;

-- Table: professor
CREATE TABLE professor
(
  code integer,
  name text,
  id_professor_category integer,
  code_department integer,
  id_dedication integer,
  mail text,
  id serial NOT NULL,
  CONSTRAINT id_professor PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE professor
  OWNER TO afrecikuxltyaz;
GRANT SELECT, UPDATE, TRUNCATE, DELETE, REFERENCES, TRIGGER ON TABLE professor TO afrecikuxltyaz;

-- Table: professor_category
CREATE TABLE professor_category
(
  id serial NOT NULL,
  name text,
  CONSTRAINT id_category PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE professor_category
  OWNER TO afrecikuxltyaz;
GRANT SELECT, UPDATE, TRUNCATE, DELETE, REFERENCES, TRIGGER ON TABLE professor_category TO afrecikuxltyaz;

-- Table: professor_dedication
CREATE TABLE professor_dedication
(
  id serial NOT NULL,
  name text,
  CONSTRAINT id_dedication PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE professor_dedication
  OWNER TO afrecikuxltyaz;
GRANT SELECT, UPDATE, TRUNCATE, DELETE, REFERENCES, TRIGGER ON TABLE professor_dedication TO afrecikuxltyaz;

-- Table: program
CREATE TABLE program
(
  id serial NOT NULL,
  name text,
  code_department integer,
  code text,
  CONSTRAINT program_key PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE program
  OWNER TO afrecikuxltyaz;
GRANT SELECT, UPDATE, TRUNCATE, DELETE, REFERENCES, TRIGGER ON TABLE program TO afrecikuxltyaz;

-- Table: student
CREATE TABLE student
(
  id serial NOT NULL,
  name text,
  code_program text,
  code text,
  CONSTRAINT key_student PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE student
  OWNER TO afrecikuxltyaz;
GRANT SELECT, UPDATE, TRUNCATE, DELETE, REFERENCES, TRIGGER ON TABLE student TO afrecikuxltyaz;

-- Table: student_subject
CREATE TABLE student_subject
(
  id serial NOT NULL,
  code_subject integer,
  group_subject integer,
  code_student text,
  CONSTRAINT key_student_subject PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE student_subject
  OWNER TO afrecikuxltyaz;
GRANT SELECT, UPDATE, TRUNCATE, DELETE, REFERENCES, TRIGGER ON TABLE student_subject TO afrecikuxltyaz;

-- Table: subject
CREATE TABLE subject
(
  id serial NOT NULL,
  code integer,
  code_deparment integer,
  credits integer,
  hours_a_week integer,
  id_level integer,
  weeks integer,
  name text,
  quote integer,
  inscribed integer,
  code_professor integer,
  subject_group integer,
  CONSTRAINT id_subject PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE subject
  OWNER TO afrecikuxltyaz;
GRANT SELECT, UPDATE, TRUNCATE, DELETE, REFERENCES, TRIGGER ON TABLE subject TO afrecikuxltyaz;
