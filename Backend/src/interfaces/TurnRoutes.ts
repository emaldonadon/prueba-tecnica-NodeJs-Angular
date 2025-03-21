import express from "express";
import { createTurn, getTurn, updateTurn, deleteTurn } from "./TurnController";

const router = express.Router();

router.post("/turns", createTurn);
router.get("/turns/:turnid", getTurn);
router.put("/turns/:turnid", updateTurn);
router.delete("/turns/:turnid", deleteTurn);

export default router;