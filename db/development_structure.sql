CREATE TABLE "feeds" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "url" varchar(255), "name" varchar(255), "feed_url" varchar(255), "author" varchar(255), "twitter_username" varchar(255), "created_at" datetime, "updated_at" datetime);
CREATE TABLE "posts" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "contents" text, "title" varchar(255), "url" varchar(255), "published" datetime, "updated" datetime, "feed_id" integer, "created_at" datetime, "updated_at" datetime);
CREATE TABLE "schema_migrations" ("version" varchar(255) NOT NULL);
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
INSERT INTO schema_migrations (version) VALUES ('20111116091513');

INSERT INTO schema_migrations (version) VALUES ('20111116091523');