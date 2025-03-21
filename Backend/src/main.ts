import express from "express";
import dotenv from "dotenv";
import cors from "cors";
import userRoutes from "./interfaces/userRoutes";
import clientRoutes from "./interfaces/ClientRoutes";
import turnRoutes from "./interfaces/TurnRoutes";
import contractRoutes from "./interfaces/ContractRoutes";
import sequelize from "./infrastructure/Database";

const app = express();
dotenv.config();

app.use(
  cors({
    origin: "*",
    methods: ["GET", "POST", "PUT", "DELETE"],
    allowedHeaders: ["Content-Type", "Authorization"],
  })
);

app.use(express.json());

app.use("/api/users", userRoutes);
app.use("/api/clients", clientRoutes);
app.use("/api/turns", turnRoutes);
app.use("/api/contracts", contractRoutes);

sequelize.sync().then(() => {
  console.log("Database connected!");
});

app.listen(process.env.PORT, () => {
  console.log(`Server running on port ${process.env.PORT}`);
});
