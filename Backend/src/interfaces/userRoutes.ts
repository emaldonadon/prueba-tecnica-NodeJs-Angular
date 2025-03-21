import express, { Request, Response } from "express";
import { login, createUser } from "./userController";

const router = express.Router();

router.post("/register", createUser);
router.post("/login", login);

export default router;
