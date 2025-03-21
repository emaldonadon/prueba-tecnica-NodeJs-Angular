import { Sequelize } from "sequelize-typescript";
import { User } from "./models/user/User";
import { Rol } from "./models/user/Rol";
import { UserStatus } from "./models/user/UserStatus";
import { Cash } from "./models/client/Cash";
import { Client } from "./models/client/Client";
import { Contract } from "./models/client/Contract";
import { Device } from "./models/client/Device";
import { MethodPayment } from "./models/client/MethodPayment";
import { Payments } from "./models/client/Payments";
import { Services } from "./models/client/Services";
import { StatusContract } from "./models/client/StatusContract";
import { Turn } from "./models/client/Turn";
import { UserCash } from "./models/client/UserCash";
import dotenv from "dotenv";
dotenv.config();

const { DB_DATABASE, DB_PORT, DB_USERNAME, DB_PASSWORD } = process.env;

if (!DB_DATABASE || !DB_PORT || !DB_USERNAME || !DB_PASSWORD) {
  throw new Error("Some database environment variables are not defined.");
}

const port = parseInt(DB_PORT, 10);

const sequelize = new Sequelize({
  database: DB_DATABASE,
  dialect: "postgres",
  port,
  username: DB_USERNAME,
  password: DB_PASSWORD,
  models: [
    User,
    Rol,
    UserStatus,
    Cash,
    Client,
    Contract,
    Device,
    MethodPayment,
    Payments,
    Services,
    StatusContract,
    Turn,
    UserCash,
  ],
});

export default sequelize;
