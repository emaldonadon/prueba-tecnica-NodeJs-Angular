import { Request, Response } from "express";
import { TurnService } from "../application/TurnService";

const turnService = new TurnService();

export const createTurn = async (req: Request, res: Response) => {
  try {
    const turn = await turnService.createTurn(req.body);
    res.status(201).json(turn);
  } catch (error) {
    res.status(500).json({ error: "Error creating turn" });
  }
};

export const getTurn = async (req: Request, res: Response) => {
  const { turnid } = req.params;
  try {
    const turn = await turnService.getTurnById(Number(turnid));
    if (turn) {
      res.status(200).json(turn);
    } else {
      res.status(404).json({ error: "Turn not found" });
    }
  } catch (error) {
    res.status(500).json({ error: "Error fetching turn" });
  }
};

export const updateTurn = async (req: Request, res: Response) => {
  const { turnid } = req.params;
  try {
    const turn = await turnService.updateTurn(Number(turnid), req.body);
    if (turn) {
      res.status(200).json(turn);
    } else {
      res.status(404).json({ error: "Turn not found" });
    }
  } catch (error) {
    res.status(500).json({ error: "Error updating turn" });
  }
};

export const deleteTurn = async (req: Request, res: Response) => {
  const { turnid } = req.params;
  try {
    const deleted = await turnService.deleteTurn(Number(turnid));
    if (deleted) {
      res.status(204).send();
    } else {
      res.status(404).json({ error: "Turn not found" });
    }
  } catch (error) {
    res.status(500).json({ error: "Error deleting turn" });
  }
};