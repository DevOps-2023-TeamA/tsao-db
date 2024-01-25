# tsao database
## contents
- [setup MySQL database](#setup-mqsql-database)
- [create account](#create-account)
- [setup TSAO database](#setup-tsao-database)

## setup MySQL database
### installation
Install MySQL Community Edition -> MySQL Installer for Windows
![image](https://github.com/DevOps-2023-TeamA/tsao-db/assets/92766974/1ffa1151-3250-483d-9c9a-a97c14b4bd42)

### MySQL server setup
#### Select MySQL Server and MySQL Workbench 8.0

| ![telegram-cloud-photo-size-5-6165786335412075720-x](https://github.com/DevOps-2023-TeamA/tsao-db/assets/92766974/38fe5389-f306-48b2-9071-fc0c12d8c149) | ![telegram-cloud-photo-size-5-6165786335412075721-x](https://github.com/DevOps-2023-TeamA/tsao-db/assets/92766974/9d5f739f-d52b-444d-b23f-5dd2fad659d6) | ![telegram-cloud-photo-size-5-6165786335412075722-x](https://github.com/DevOps-2023-TeamA/tsao-db/assets/92766974/73ecc427-20bb-4363-9888-b8ecf6dab7ac) | ![telegram-cloud-photo-size-5-6165786335412075742-x](https://github.com/DevOps-2023-TeamA/tsao-db/assets/92766974/73fd0c01-7843-40f6-9edc-ea750dba1e52) |
|---|---|---|---|
| Click `Next` | Accept terms in the License Agreement | Click `Install` to begin installation of MySQL Server | Click `Finish` to run MySQL Configurator |

#### Leave all settings as default

| ![telegram-cloud-photo-size-5-6165786335412075743-x](https://github.com/DevOps-2023-TeamA/tsao-db/assets/92766974/25e5bb67-5c7a-4a8a-afd1-69080091f903) | ![telegram-cloud-photo-size-5-6165786335412075744-x](https://github.com/DevOps-2023-TeamA/tsao-db/assets/92766974/fd867ed5-ed1a-48dd-a357-51adc0b127c8) | ![telegram-cloud-photo-size-5-6165786335412075745-x](https://github.com/DevOps-2023-TeamA/tsao-db/assets/92766974/486dc07c-4f6c-4fe0-b2c6-8d4d6e133e64) |
|---|---|---|
| Click `Next` | Select chosen Data Directory & Click `Next` | Leave default settings & Click `Next` |

#### Enter a new password for the `root` account
![telegram-cloud-photo-size-5-6165786335412075746-x](https://github.com/DevOps-2023-TeamA/tsao-db/assets/92766974/0506bb44-7e96-4e60-ba03-5a2d58499c91)

> ⚠️ Remember to record down the password!
>
> You will not be able to access the database instance if you forget your root password. This password should also be changed to mitigate against possible attacks

#### Continue setting up MySQL Server

| ![telegram-cloud-photo-size-5-6165786335412075747-x](https://github.com/DevOps-2023-TeamA/tsao-db/assets/92766974/5aaefead-74c5-4065-98e5-914a18c2d155) | ![telegram-cloud-photo-size-5-6165786335412075748-x](https://github.com/DevOps-2023-TeamA/tsao-db/assets/92766974/127e50e8-7773-4c38-ba80-4b3bb8e540e3) | ![telegram-cloud-photo-size-5-6165565973525018315-y](https://github.com/DevOps-2023-TeamA/tsao-db/assets/92766974/031dfb0c-2c4d-45f8-b253-e63bede758ea) |
|---|---|---|
| Click `Next` | Click `Next` | Select available MySQL Connection and enter previously set `root` password (only for first time) |

## create account
1. Launch MySQL Workbench
2. Type the following command and click the lightning ⚡️ icon
```
CREATE USER 'user'@'localhost' IDENTIFIED BY 'password';
GRANT ALL ON *.* TO 'user'@'localhost';
```
![image](https://github.com/DevOps-2023-TeamA/tsao-db/assets/92766974/9283bae7-6170-422a-8b67-0c834c3b90ea)
3. An account named `user` with the password `password` is created. This account is granted all permissions on the database

## setup TSAO database
1. Clone `tsao-db` repository
```
git clone "https://github.com/DevOps-2023-TeamA/tsao-db.git"
```
2. Launch MySQL Workbench
3. Click the file 📁 icon and navigate to the directory where `tsao-db` repository is stored in.
![image](https://github.com/DevOps-2023-TeamA/tsao-db/assets/92766974/77466464-4b03-4320-a132-0c36ed22c14e)
4. Find `create_table.sql` and click `Open`
![image](https://github.com/DevOps-2023-TeamA/tsao-db/assets/92766974/7a8e7946-eb05-4c6e-aae4-24b2ca820471)
5. Click the lightning ⚡️ icon to use the SQL script to create the TSAO database
![image](https://github.com/DevOps-2023-TeamA/tsao-db/assets/92766974/281a0476-e133-4597-99b2-09342836c02e)
6. Click the file icon. Find `insert_data.sql` and click `Open`
![image](https://github.com/DevOps-2023-TeamA/tsao-db/assets/92766974/2f76cd0c-5668-4ec1-a427-cd1be662866f)
7. Click the lightning ⚡️ icon to use the SQL script to populate the TSAO database with the mock data
![image](https://github.com/DevOps-2023-TeamA/tsao-db/assets/92766974/b0ed0bde-8e29-4779-8650-fef47c363662)

> ✅ You have completed the TSAO database setup!
