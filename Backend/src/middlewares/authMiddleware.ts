import { Request, Response, NextFunction } from "express";
import jwt from "jsonwebtoken";
import dotenv from "dotenv";
dotenv.config();

export const authMiddleware = (
  req: Request,
  res: Response,
  next: NextFunction
) => {
  const token = req.header("Authorization")?.replace("Bearer ", "");
  if (!token) return res.status(401).json({ error: "Access denied" });

  const secretKey = process.env.SECRET_KEY;
  if (!secretKey) throw new Error("SECRET_KEY not found in .env");

  try {
    const decoded = jwt.verify(token, secretKey) as { id: number };
    (req as any).user = decoded;
    next();
  } catch (error) {
    res.status(400).json({ error: "Invalid token" });
  }
};
