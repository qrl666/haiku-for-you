
-- USER is a reserved keyword with Postgres
-- You must use double quotes in every query that user is in:
-- ex. SELECT * FROM "user";
-- Otherwise you will have errors!
CREATE TABLE "user" (
    "id" SERIAL PRIMARY KEY,
    "username" VARCHAR (80) UNIQUE NOT NULL,
    "password" VARCHAR (1000) NOT NULL
);

CREATE TABLE "poems" (
	"id" SERIAL PRIMARY KEY,
	"title" VARCHAR (15),
	"line_1" VARCHAR (30),
	"line_2" VARCHAR (42),
	"line_3" VARCHAR (30),
	"date" DATE NOT NULL DEFAULT CURRENT_DATE,
	"user_id" INT REFERENCES "user" NOT NULL
);

CREATE TABLE "conjunctions" (
	"id" SERIAL PRIMARY KEY,
	"conjunction" VARCHAR (20)
);

INSERT INTO "conjunctions" ("conjunction")
VALUES ('after'),
('although'),
('as'),
('as if'),
('as long as'),
('as much as'),
('as soon as'),
('as far as'),
('as though'),
('by the time'),
('in as much as'),
('inasmuch'),
('in order to'),
('in order that'),
('in case'),
('lest'),
('though'),
('now that'),
('now since'),
('now when'),
('now'),
('even if'),
('even'),
('even though'),
('provided'),
('provide that'),
('if'),
('if then'),
('if when'),
('if only'),
('just as'),
('where'),
('wherever'),
('whereas'),
('where if'),
('whether'),
('because'),
('whose'),
('whoever'),
('unless'),
('while'),
('before'),
('why'),
('so that'),
('until'),
('how'),
('since'),
('than'),
('till'),
('whenever'),
('supposing'),
('when'),
('or not'),
('what'),
('both'),
('and'),
('or'),
('not only'),
('but also'),
('either'),
('neither'),
('nor'),
('just'),
('the'),
('then'),
('rather'),
('no sooner'),
('such'),
('that'),
('so'),
('for'),
('but'),
('yet')
;

CREATE TABLE "prepositions" (
	"id" SERIAL PRIMARY KEY,
	"preposition" VARCHAR (20)
);

INSERT INTO "prepositions" ("preposition")
VALUES ('about'),
('after'),
('ago'),
('around'),
('at'),
('before'),
('by'),
('circa'),
('during'),
('following'),
('for'),
('from'),
('gone'),
('in'),
('on'),
('past'),
('prior to'),
('since'),
('until'),
('till'),
('up to'),
('up until'),
('aboard'),
('above'),
('across'),
('against'),
('alongside'),
('amid'),
('among'),
('apart from'),
('astride'),
('atop'),
('behind'),
('below'),
('beneath'),
('beside'),
('between'),
('beyond'),
('close to'),
('far'),
('far from'),
('forward of'),
('in between'),
('in front of'),
('inside'),
('into'),
('minus'),
('near'),
('near to'),
('next to'),
('of'),
('off'),
('on board'),
('on top of'),
('onto'),
('upon'),
('opposite'),
('out'),
('out of'),
('outside'),
('outside of'),
('over'),
('round'),
('through'),
('throughout'),
('to'),
('together with'),
('toward'),
('towards'),
('under'),
('underneath'),
('up against'),
('with'),
('within'),
('without'),
('ahead'),
('along'),
('along with'),
('away'),
('away from'),
('by means of'),
('down'),
('further to'),
('off of'),
('up'),
('via'),
('according to'),
('anti'),
('as'),
('as for'),
('as per'),
('as to'),
('as well as'),
('aside from'),
('bar'),
('barring'),
('because of'),
('besides'),
('but for'),
('but'),
('concerning'),
('considering'),
('contrary to'),
('counting'),
('depending on'),
('despite'),
('due to'),
('except'),
('except for'),
('excepting'),
('excluding'),
('given'),
('in addition to'),
('in case of'),
('in face of'),
('in favor of'),
('in favour of'),
('in light of'),
('in spite of'),
('in view of'),
('including'),
('instead of'),
('less'),
('like'),
('notwithstanding'),
('on account of'),
('on behalf of'),
('other than'),
('owing to'),
('pending'),
('per'),
('plus'),
('preparatory to'),
('pro'),
('re'),
('regarding'),
('regardless of'),
('save'),
('save for'),
('saving'),
('than'),
('thanks to'),
('unlike'),
('versus'),
('with reference to'),
('with regard to'),
('worth')
;