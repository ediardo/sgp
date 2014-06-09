CREATE TABLE "schema_migrations" ("version" varchar(255) NOT NULL);
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
CREATE TABLE "users" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "email" varchar(255) DEFAULT '' NOT NULL, "encrypted_password" varchar(255) DEFAULT '' NOT NULL, "reset_password_token" varchar(255), "reset_password_sent_at" datetime, "remember_created_at" datetime, "sign_in_count" integer DEFAULT 0 NOT NULL, "current_sign_in_at" datetime, "last_sign_in_at" datetime, "current_sign_in_ip" varchar(255), "last_sign_in_ip" varchar(255), "created_at" datetime, "updated_at" datetime);
CREATE UNIQUE INDEX "index_users_on_email" ON "users" ("email");
CREATE UNIQUE INDEX "index_users_on_reset_password_token" ON "users" ("reset_password_token");
CREATE TABLE "clientes" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "num_cliente" varchar(255), "nombres" varchar(255), "apellidos" varchar(255), "telefono" varchar(255), "direccion" varchar(255), "email" varchar(255), "created_at" datetime, "updated_at" datetime, "pedidos_count" integer DEFAULT 0);
CREATE TABLE "pedidos" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "num_pedido" varchar(255), "descripcion" text, "finalizado" boolean, "cliente_id" integer, "created_at" datetime, "updated_at" datetime);
CREATE INDEX "index_pedidos_on_cliente_id" ON "pedidos" ("cliente_id");
CREATE TABLE "tipo_estados" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "nombre" varchar(255), "descripcion" text, "created_at" datetime, "updated_at" datetime);
CREATE TABLE "estados" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "nota" varchar(255), "tipo_estado_id" integer, "pedido_id" integer, "created_at" datetime, "updated_at" datetime);
CREATE INDEX "index_estados_on_tipo_estado_id" ON "estados" ("tipo_estado_id");
CREATE INDEX "index_estados_on_pedido_id" ON "estados" ("pedido_id");
INSERT INTO schema_migrations (version) VALUES ('20140511220331');

INSERT INTO schema_migrations (version) VALUES ('20140511222353');

INSERT INTO schema_migrations (version) VALUES ('20140512043820');

INSERT INTO schema_migrations (version) VALUES ('20140512045006');

INSERT INTO schema_migrations (version) VALUES ('20140512045922');

INSERT INTO schema_migrations (version) VALUES ('20140512051301');

INSERT INTO schema_migrations (version) VALUES ('20140512051609');

INSERT INTO schema_migrations (version) VALUES ('20140522044316');
