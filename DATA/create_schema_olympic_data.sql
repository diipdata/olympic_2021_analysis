CREATE SCHEMA "olympic_data";

CREATE TABLE "olympic_data".athletes(
	"name" VARCHAR(50) NULL,
	"noc" VARCHAR(50) NULL,
	"discipline" VARCHAR(50) NULL
);

CREATE TABLE "olympic_data".coaches(
	"name" VARCHAR(50) NULL,
	"noc" VARCHAR(50) NULL,
	"discipline" VARCHAR(50) NULL,
	"event" VARCHAR(50) NULL
);

CREATE TABLE "olympic_data".gender(
	"discipline" VARCHAR(50) NULL,
	"female" INT NULL,
	"male" INT NULL,
	"total" INT NULL
);

CREATE TABLE "olympic_data".medal(
	"rank" INT NULL,
	"noc" VARCHAR(50) NULL,
	"gold" INT NULL,
	"silver" INT NULL,
	"bronze" INT NULL,
	"total" INT NULL,
	"rank_by_total"  INT NULL
);

CREATE TABLE "olympic_data".teams(
	"name" VARCHAR(50) NULL,
	"noc" VARCHAR(50) NULL,
	"discipline" VARCHAR(50) NULL,
	"event" VARCHAR(50) NULL
);