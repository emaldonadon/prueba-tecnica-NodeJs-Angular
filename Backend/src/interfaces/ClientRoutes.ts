import express from "express";
import {
  createClient,
  getClient,
  updateClient,
  deleteClient,
} from "./ClientController";

const router = express.Router();

router.post("/clients", createClient);
router.get("/clients/:clientid", getClient);
router.put("/clients/:clientid", updateClient);
router.delete("/clients/:clientid", deleteClient);

export default router;