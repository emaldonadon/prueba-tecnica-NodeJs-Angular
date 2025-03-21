import { Request, Response } from "express";
import { ClientService } from "../application/ClientService";

const clientService = new ClientService();

export const createClient = async (req: Request, res: Response) => {
  try {
    const client = await clientService.createClient(req.body);
    res.status(201).json(client);
  } catch (error) {
    res.status(500).json({ error: "Error creating client" });
  }
};

export const getClient = async (req: Request, res: Response) => {
  const { clientid } = req.params;
  try {
    const client = await clientService.getClientById(Number(clientid));
    if (client) {
      res.status(200).json(client);
    } else {
      res.status(404).json({ error: "Client not found" });
    }
  } catch (error) {
    res.status(500).json({ error: "Error fetching client" });
  }
};

export const updateClient = async (req: Request, res: Response) => {
  const { clientid } = req.params;
  try {
    const client = await clientService.updateClient(Number(clientid), req.body);
    if (client) {
      res.status(200).json(client);
    } else {
      res.status(404).json({ error: "Client not found" });
    }
  } catch (error) {
    res.status(500).json({ error: "Error updating client" });
  }
};

export const deleteClient = async (req: Request, res: Response) => {
  const { clientid } = req.params;
  try {
    const deleted = await clientService.deleteClient(Number(clientid));
    if (deleted) {
      res.status(204).send();
    } else {
      res.status(404).json({ error: "Client not found" });
    }
  } catch (error) {
    res.status(500).json({ error: "Error deleting client" });
  }
};