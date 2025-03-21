import { User } from "../infrastructure/models/user/User";
import { Rol } from "../infrastructure/models/user/Rol"; 
import { UserStatus } from "../infrastructure/models/user/UserStatus"; 
import jwt from "jsonwebtoken";
import dotenv from "dotenv";
dotenv.config();

export class UserService {
  async createUser(
    username: string,
    password: string,
    rol_rolid: number,
    usercreate: number,
  ): Promise<User> {
    const rol = await Rol.findByPk(rol_rolid);
    if (!rol) {
      throw new Error("Invalid role");
    }

    const user = await User.create({
      username,
      password,
      rol_rolid,
      usercreate,
      userstatus_statudid: "PENDING",
    });

    return user;
  }

  async approveUser(userid: number, adminUserId: number): Promise<User> {
    const user = await User.findByPk(userid);
    if (!user) throw new Error("User not found");

    const adminUser = await User.findByPk(adminUserId);
    if (!adminUser || adminUser.rol_rolid !== 1) {
      throw new Error("Only admin users can approve other users");
    }

    const approvedStatus = await UserStatus.findOne({
      where: { statusid: "APPROVED" },
    });
    if (!approvedStatus) {
      throw new Error("Approved status not found");
    }

    user.userstatus_statudid = "APPROVED";
    user.userapproval = adminUserId;
    user.dateapproval = new Date();
    await user.save();

    return user;
  }

  async getAllUsers(): Promise<User[]> {
    return User.findAll();
  }

  async deleteUser(userid: number): Promise<boolean> {
    const user = await User.findByPk(userid);
    if (user) {
      await user.destroy();
      return true;
    }
    return false;
  }

  async generateToken(userid: number): Promise<string> {
    const secretKey = process.env.SECRET_KEY;
    if (!secretKey) {
      throw new Error("SECRET_KEY not found in .env");
    }

    const token = jwt.sign({ id: userid }, secretKey, { expiresIn: "1h" });
    return token;
  }

  async verifyToken(token: string): Promise<{ id: number } | null> {
    const secretKey = process.env.SECRET_KEY;
    if (!secretKey) {
      throw new Error("SECRET_KEY not found in .env");
    }

    try {
      const decoded = jwt.verify(token, secretKey) as { id: number };
      return decoded;
    } catch (error) {
      return null;
    }
  }

  async login(email: string, password: string): Promise<string | null | undefined> {
    const user = await User.findOne({ where: { email } });
    if (!user) return null;
    const secret_key = process.env.SECRET_KEY;
    if (!secret_key) {
      throw new Error("SECRET_KEY Not found .env");
    }
    const token = jwt.sign({ id: user.id }, secret_key, { expiresIn: "1h" });
    return token;
  }

}