import { Request, Response } from "express";
import { UserService } from "../application/UserService";

const userService = new UserService();

export const createUser = async (req: Request, res: Response): Promise<any> => {
  const { username, password, rol_rolid } = req.body;
  const usercreate = (req as any).user.userid;

  if (!username || !password || !rol_rolid) {
    res.status(400).json({ error: "Missing required fields" });
  }

  try {
    const user = await userService.createUser(
      username,
      password,
      rol_rolid,
      usercreate
    );
    res.status(201).json(user);
  } catch (error) {
    res.status(400).json({ error: "Error creating user" });
  }
};

export const approveUser = async (req: Request, res: Response) => {
  const { userid } = req.params;
  const adminUserId = (req as any).user.userid;

  try {
    const user = await userService.approveUser(Number(userid), adminUserId);
    res.status(200).json(user);
  } catch (error) {
    res.status(400).json({ error: "Error approving user" });
  }
};

export const getAllUsers = async (req: Request, res: Response) => {
  try {
    const users = await userService.getAllUsers();
    res.status(200).json(users);
  } catch (error) {
    res.status(500).json({ error: "Error fetching users" });
  }
};

export const deleteUser = async (req: Request, res: Response) => {
  const { userid } = req.params;

  try {
    const deleted = await userService.deleteUser(Number(userid));
    if (deleted) {
      res.status(204).send();
    } else {
      res.status(404).json({ error: "User not found" });
    }
  } catch (error) {
    res.status(500).json({ error: "Error deleting user" });
  }
};

export const login = async (req: Request, res: Response) => {
  const { email, password } = req.body;
  const token = await userService.login(email, password);
  if (!token) {
    res.status(401).json({ error: "Invalid credentials" });
    return;
  }
  res.json({ token });
};
