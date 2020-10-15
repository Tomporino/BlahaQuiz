CREATE TABLE "question" (
	"id" serial NOT NULL,
	"question" varchar(255) NOT NULL,
	"hint" varchar(255) NOT NULL,
	CONSTRAINT "question_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "answer" (
	"id" serial NOT NULL,
	"question_Id" int NOT NULL,
	"right_answer" BOOLEAN NOT NULL,
	"answer" varchar(255) NOT NULL,
	CONSTRAINT "answer_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);




ALTER TABLE "answer" ADD CONSTRAINT "answer_fk0" FOREIGN KEY ("question_Id") REFERENCES "question"("id");

