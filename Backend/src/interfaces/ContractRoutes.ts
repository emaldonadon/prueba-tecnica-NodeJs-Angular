import express from "express";
import {
  createContract,
  getContract,
  updateContract,
  deleteContract,
  changeService,
  cancelContract,
  changePaymentMethod,
} from "./ContractController";

const router = express.Router();

router.post("/contracts", createContract);
router.get("/contracts/:contractid", getContract);
router.put("/contracts/:contractid", updateContract);
router.delete("/contracts/:contractid", deleteContract);
router.post("/contracts/:contractid/change-service", changeService);
router.post("/contracts/:contractid/cancel", cancelContract);
router.post(
  "/contracts/:contractid/change-payment-method",
  changePaymentMethod
);

export default router;
