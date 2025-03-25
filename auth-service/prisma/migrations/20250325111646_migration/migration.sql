/*
  Warnings:

  - Added the required column `access_type_id` to the `users` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `users` ADD COLUMN `access_type_id` VARCHAR(191) NOT NULL;

-- CreateTable
CREATE TABLE `access_types` (
    `id` VARCHAR(100) NOT NULL,
    `created_at` DATETIME(0) NOT NULL,
    `updated_at` DATETIME(0) NULL,
    `deleted_at` DATETIME(0) NULL,
    `name` VARCHAR(100) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
