BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "appointments" (
    "id" bigserial PRIMARY KEY,
    "patientId" bigint NOT NULL,
    "doctorId" bigint NOT NULL,
    "poliId" bigint NOT NULL,
    "appointmentDate" timestamp without time zone NOT NULL,
    "timeSlot" text NOT NULL,
    "type" text NOT NULL,
    "status" text NOT NULL,
    "cancellationReason" text,
    "notes" text,
    "totalFee" double precision NOT NULL,
    "paymentStatus" text NOT NULL,
    "paymentMethod" text,
    "createdAt" timestamp without time zone NOT NULL,
    "updatedAt" timestamp without time zone NOT NULL
);

-- Indexes
CREATE INDEX "appointment_date_idx" ON "appointments" USING btree ("appointmentDate");
CREATE INDEX "appointment_patient_idx" ON "appointments" USING btree ("patientId");
CREATE INDEX "appointment_doctor_date_idx" ON "appointments" USING btree ("doctorId", "appointmentDate");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "chat_messages" (
    "id" bigserial PRIMARY KEY,
    "chatRoomId" bigint NOT NULL,
    "senderId" bigint NOT NULL,
    "senderType" text NOT NULL,
    "messageType" text NOT NULL,
    "content" text NOT NULL,
    "attachmentUrl" text,
    "isRead" boolean NOT NULL,
    "sentAt" timestamp without time zone NOT NULL
);

-- Indexes
CREATE INDEX "message_room_idx" ON "chat_messages" USING btree ("chatRoomId");
CREATE INDEX "message_sent_idx" ON "chat_messages" USING btree ("sentAt");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "chat_rooms" (
    "id" bigserial PRIMARY KEY,
    "patientId" bigint NOT NULL,
    "doctorId" bigint NOT NULL,
    "appointmentId" bigint,
    "type" text NOT NULL,
    "status" text NOT NULL,
    "startedAt" timestamp without time zone NOT NULL,
    "endedAt" timestamp without time zone,
    "createdAt" timestamp without time zone NOT NULL
);

-- Indexes
CREATE INDEX "chatroom_patient_idx" ON "chat_rooms" USING btree ("patientId");
CREATE INDEX "chatroom_doctor_idx" ON "chat_rooms" USING btree ("doctorId");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "doctor_schedules" (
    "id" bigserial PRIMARY KEY,
    "doctorId" bigint NOT NULL,
    "dayOfWeek" bigint NOT NULL,
    "startTime" text NOT NULL,
    "endTime" text NOT NULL,
    "slotDurationMinutes" bigint NOT NULL,
    "maxPatients" bigint NOT NULL,
    "isActive" boolean NOT NULL
);

-- Indexes
CREATE INDEX "schedule_doctor_day_idx" ON "doctor_schedules" USING btree ("doctorId", "dayOfWeek");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "doctors" (
    "id" bigserial PRIMARY KEY,
    "employeeId" text NOT NULL,
    "name" text NOT NULL,
    "specializationId" bigint NOT NULL,
    "poliId" bigint NOT NULL,
    "phone" text NOT NULL,
    "licenseNumber" text NOT NULL,
    "experienceYears" bigint NOT NULL,
    "consultationFee" double precision NOT NULL,
    "teleconsultFee" double precision NOT NULL,
    "bio" text,
    "profileImageUrl" text,
    "rating" double precision,
    "totalReviews" bigint,
    "status" text NOT NULL,
    "createdAt" timestamp without time zone NOT NULL,
    "updatedAt" timestamp without time zone NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "doctor_employee_id_idx" ON "doctors" USING btree ("employeeId");
CREATE UNIQUE INDEX "doctor_license_idx" ON "doctors" USING btree ("licenseNumber");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "medical_records" (
    "id" bigserial PRIMARY KEY,
    "appointmentId" bigint NOT NULL,
    "patientId" bigint NOT NULL,
    "doctorId" bigint NOT NULL,
    "recordDate" timestamp without time zone NOT NULL,
    "chiefComplaint" text NOT NULL,
    "presentIllness" text,
    "physicalExamination" text,
    "vitalSigns" text,
    "diagnosis" text NOT NULL,
    "icdCode" text,
    "treatmentPlan" text,
    "notes" text,
    "createdAt" timestamp without time zone NOT NULL,
    "updatedAt" timestamp without time zone NOT NULL
);

-- Indexes
CREATE INDEX "record_patient_idx" ON "medical_records" USING btree ("patientId");
CREATE UNIQUE INDEX "record_appointment_idx" ON "medical_records" USING btree ("appointmentId");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "medicine_stocks" (
    "id" bigserial PRIMARY KEY,
    "medicineId" bigint NOT NULL,
    "batchNumber" text NOT NULL,
    "quantity" bigint NOT NULL,
    "expiryDate" timestamp without time zone NOT NULL,
    "purchaseDate" timestamp without time zone NOT NULL,
    "purchasePrice" double precision NOT NULL,
    "createdAt" timestamp without time zone NOT NULL,
    "updatedAt" timestamp without time zone NOT NULL
);

-- Indexes
CREATE INDEX "stock_medicine_idx" ON "medicine_stocks" USING btree ("medicineId");
CREATE INDEX "stock_expiry_idx" ON "medicine_stocks" USING btree ("expiryDate");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "medicines" (
    "id" bigserial PRIMARY KEY,
    "code" text NOT NULL,
    "name" text NOT NULL,
    "genericName" text,
    "category" text NOT NULL,
    "unit" text NOT NULL,
    "manufacturer" text,
    "price" double precision NOT NULL,
    "requiresPrescription" boolean NOT NULL,
    "description" text,
    "sideEffects" text,
    "contraindications" text,
    "isActive" boolean NOT NULL,
    "createdAt" timestamp without time zone NOT NULL,
    "updatedAt" timestamp without time zone NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "medicine_code_idx" ON "medicines" USING btree ("code");
CREATE INDEX "medicine_name_idx" ON "medicines" USING btree ("name");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "patients" (
    "id" bigserial PRIMARY KEY,
    "userId" bigint NOT NULL,
    "nik" text NOT NULL,
    "name" text NOT NULL,
    "dateOfBirth" timestamp without time zone NOT NULL,
    "gender" text NOT NULL,
    "phone" text NOT NULL,
    "address" text,
    "bloodType" text,
    "allergies" text,
    "emergencyContact" text,
    "status" text NOT NULL,
    "createdAt" timestamp without time zone NOT NULL,
    "updatedAt" timestamp without time zone NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "patient_nik_idx" ON "patients" USING btree ("nik");
CREATE UNIQUE INDEX "patient_user_idx" ON "patients" USING btree ("userId");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "polis" (
    "id" bigserial PRIMARY KEY,
    "name" text NOT NULL,
    "description" text,
    "iconName" text,
    "colorHex" text,
    "isActive" boolean NOT NULL,
    "createdAt" timestamp without time zone NOT NULL,
    "updatedAt" timestamp without time zone NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "poli_name_idx" ON "polis" USING btree ("name");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "prescription_items" (
    "id" bigserial PRIMARY KEY,
    "prescriptionId" bigint NOT NULL,
    "medicineId" bigint NOT NULL,
    "quantity" bigint NOT NULL,
    "dosage" text NOT NULL,
    "frequency" text NOT NULL,
    "duration" text NOT NULL,
    "instructions" text,
    "unitPrice" double precision NOT NULL,
    "subtotal" double precision NOT NULL
);

-- Indexes
CREATE INDEX "prescription_item_prescription_idx" ON "prescription_items" USING btree ("prescriptionId");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "prescriptions" (
    "id" bigserial PRIMARY KEY,
    "medicalRecordId" bigint NOT NULL,
    "patientId" bigint NOT NULL,
    "doctorId" bigint NOT NULL,
    "prescriptionNumber" text NOT NULL,
    "prescriptionDate" timestamp without time zone NOT NULL,
    "status" text NOT NULL,
    "totalAmount" double precision NOT NULL,
    "paymentStatus" text NOT NULL,
    "notes" text,
    "createdAt" timestamp without time zone NOT NULL,
    "updatedAt" timestamp without time zone NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "prescription_number_idx" ON "prescriptions" USING btree ("prescriptionNumber");
CREATE INDEX "prescription_patient_idx" ON "prescriptions" USING btree ("patientId");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "queues" (
    "id" bigserial PRIMARY KEY,
    "appointmentId" bigint NOT NULL,
    "queueNumber" text NOT NULL,
    "queuePrefix" text NOT NULL,
    "queueSequence" bigint NOT NULL,
    "status" text NOT NULL,
    "calledAt" timestamp without time zone,
    "servedAt" timestamp without time zone,
    "completedAt" timestamp without time zone,
    "estimatedWaitMinutes" bigint
);

-- Indexes
CREATE UNIQUE INDEX "queue_appointment_idx" ON "queues" USING btree ("appointmentId");
CREATE INDEX "queue_date_poli_idx" ON "queues" USING btree ("queuePrefix", "queueSequence");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "specializations" (
    "id" bigserial PRIMARY KEY,
    "name" text NOT NULL,
    "description" text,
    "iconName" text
);

-- Indexes
CREATE UNIQUE INDEX "specialization_name_idx" ON "specializations" USING btree ("name");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "serverpod_auth_key" (
    "id" bigserial PRIMARY KEY,
    "userId" bigint NOT NULL,
    "hash" text NOT NULL,
    "scopeNames" json NOT NULL,
    "method" text NOT NULL
);

-- Indexes
CREATE INDEX "serverpod_auth_key_userId_idx" ON "serverpod_auth_key" USING btree ("userId");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "serverpod_email_auth" (
    "id" bigserial PRIMARY KEY,
    "userId" bigint NOT NULL,
    "email" text NOT NULL,
    "hash" text NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_email_auth_email" ON "serverpod_email_auth" USING btree ("email");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "serverpod_email_create_request" (
    "id" bigserial PRIMARY KEY,
    "userName" text NOT NULL,
    "email" text NOT NULL,
    "hash" text NOT NULL,
    "verificationCode" text NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_email_auth_create_account_request_idx" ON "serverpod_email_create_request" USING btree ("email");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "serverpod_email_failed_sign_in" (
    "id" bigserial PRIMARY KEY,
    "email" text NOT NULL,
    "time" timestamp without time zone NOT NULL,
    "ipAddress" text NOT NULL
);

-- Indexes
CREATE INDEX "serverpod_email_failed_sign_in_email_idx" ON "serverpod_email_failed_sign_in" USING btree ("email");
CREATE INDEX "serverpod_email_failed_sign_in_time_idx" ON "serverpod_email_failed_sign_in" USING btree ("time");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "serverpod_email_reset" (
    "id" bigserial PRIMARY KEY,
    "userId" bigint NOT NULL,
    "verificationCode" text NOT NULL,
    "expiration" timestamp without time zone NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_email_reset_verification_idx" ON "serverpod_email_reset" USING btree ("verificationCode");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "serverpod_google_refresh_token" (
    "id" bigserial PRIMARY KEY,
    "userId" bigint NOT NULL,
    "refreshToken" text NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_google_refresh_token_userId_idx" ON "serverpod_google_refresh_token" USING btree ("userId");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "serverpod_user_image" (
    "id" bigserial PRIMARY KEY,
    "userId" bigint NOT NULL,
    "version" bigint NOT NULL,
    "url" text NOT NULL
);

-- Indexes
CREATE INDEX "serverpod_user_image_user_id" ON "serverpod_user_image" USING btree ("userId", "version");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "serverpod_user_info" (
    "id" bigserial PRIMARY KEY,
    "userIdentifier" text NOT NULL,
    "userName" text,
    "fullName" text,
    "email" text,
    "created" timestamp without time zone NOT NULL,
    "imageUrl" text,
    "scopeNames" json NOT NULL,
    "blocked" boolean NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_user_info_user_identifier" ON "serverpod_user_info" USING btree ("userIdentifier");
CREATE INDEX "serverpod_user_info_email" ON "serverpod_user_info" USING btree ("email");

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "appointments"
    ADD CONSTRAINT "appointments_fk_0"
    FOREIGN KEY("patientId")
    REFERENCES "patients"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "appointments"
    ADD CONSTRAINT "appointments_fk_1"
    FOREIGN KEY("doctorId")
    REFERENCES "doctors"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "appointments"
    ADD CONSTRAINT "appointments_fk_2"
    FOREIGN KEY("poliId")
    REFERENCES "polis"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "chat_messages"
    ADD CONSTRAINT "chat_messages_fk_0"
    FOREIGN KEY("chatRoomId")
    REFERENCES "chat_rooms"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "chat_rooms"
    ADD CONSTRAINT "chat_rooms_fk_0"
    FOREIGN KEY("patientId")
    REFERENCES "patients"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "chat_rooms"
    ADD CONSTRAINT "chat_rooms_fk_1"
    FOREIGN KEY("doctorId")
    REFERENCES "doctors"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "chat_rooms"
    ADD CONSTRAINT "chat_rooms_fk_2"
    FOREIGN KEY("appointmentId")
    REFERENCES "appointments"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "doctor_schedules"
    ADD CONSTRAINT "doctor_schedules_fk_0"
    FOREIGN KEY("doctorId")
    REFERENCES "doctors"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "doctors"
    ADD CONSTRAINT "doctors_fk_0"
    FOREIGN KEY("specializationId")
    REFERENCES "specializations"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "doctors"
    ADD CONSTRAINT "doctors_fk_1"
    FOREIGN KEY("poliId")
    REFERENCES "polis"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "medical_records"
    ADD CONSTRAINT "medical_records_fk_0"
    FOREIGN KEY("appointmentId")
    REFERENCES "appointments"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "medical_records"
    ADD CONSTRAINT "medical_records_fk_1"
    FOREIGN KEY("patientId")
    REFERENCES "patients"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "medical_records"
    ADD CONSTRAINT "medical_records_fk_2"
    FOREIGN KEY("doctorId")
    REFERENCES "doctors"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "medicine_stocks"
    ADD CONSTRAINT "medicine_stocks_fk_0"
    FOREIGN KEY("medicineId")
    REFERENCES "medicines"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "prescription_items"
    ADD CONSTRAINT "prescription_items_fk_0"
    FOREIGN KEY("prescriptionId")
    REFERENCES "prescriptions"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "prescription_items"
    ADD CONSTRAINT "prescription_items_fk_1"
    FOREIGN KEY("medicineId")
    REFERENCES "medicines"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "prescriptions"
    ADD CONSTRAINT "prescriptions_fk_0"
    FOREIGN KEY("medicalRecordId")
    REFERENCES "medical_records"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "prescriptions"
    ADD CONSTRAINT "prescriptions_fk_1"
    FOREIGN KEY("patientId")
    REFERENCES "patients"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "prescriptions"
    ADD CONSTRAINT "prescriptions_fk_2"
    FOREIGN KEY("doctorId")
    REFERENCES "doctors"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "queues"
    ADD CONSTRAINT "queues_fk_0"
    FOREIGN KEY("appointmentId")
    REFERENCES "appointments"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;


--
-- MIGRATION VERSION FOR kliniku_server
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('kliniku_server', '20260112181132420', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20260112181132420', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20251208110333922-v3-0-0', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20251208110333922-v3-0-0', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod_auth_idp
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod_auth_idp', '20260109031533194', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20260109031533194', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod_auth
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod_auth', '20250825102351908-v3-0-0', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20250825102351908-v3-0-0', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod_auth_core
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod_auth_core', '20251208110412389-v3-0-0', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20251208110412389-v3-0-0', "timestamp" = now();


COMMIT;
