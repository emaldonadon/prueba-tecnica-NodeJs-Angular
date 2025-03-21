import { Request, Response } from "express";
import { ContractService } from "../application/ContractService";

const contractService = new ContractService();

export const createContract = async (req: Request, res: Response) => {
  try {
    const contract = await contractService.createContract(req.body);
    res.status(201).json(contract);
  } catch (error) {
    res.status(500).json({ error: "Error creating contract" });
  }
};

export const getContract = async (req: Request, res: Response) => {
  const { contractid } = req.params;
  try {
    const contract = await contractService.getContractById(Number(contractid));
    if (contract) {
      res.status(200).json(contract);
    } else {
      res.status(404).json({ error: "Contract not found" });
    }
  } catch (error) {
    res.status(500).json({ error: "Error fetching contract" });
  }
};

export const updateContract = async (req: Request, res: Response) => {
  const { contractid } = req.params;
  try {
    const contract = await contractService.updateContract(
      Number(contractid),
      req.body
    );
    if (contract) {
      res.status(200).json(contract);
    } else {
      res.status(404).json({ error: "Contract not found" });
    }
  } catch (error) {
    res.status(500).json({ error: "Error updating contract" });
  }
};

export const deleteContract = async (req: Request, res: Response) => {
  const { contractid } = req.params;
  try {
    const deleted = await contractService.deleteContract(Number(contractid));
    if (deleted) {
      res.status(204).send();
    } else {
      res.status(404).json({ error: "Contract not found" });
    }
  } catch (error) {
    res.status(500).json({ error: "Error deleting contract" });
  }
};

export const changeService = async (req: Request, res: Response) => {
  const { contractid } = req.params;
  const { service_serviceid } = req.body;
  try {
    const contract = await contractService.changeService(
      Number(contractid),
      service_serviceid
    );
    if (contract) {
      res.status(200).json(contract);
    } else {
      res.status(404).json({ error: "Contract not found" });
    }
  } catch (error) {
    res.status(500).json({ error: "Error changing service" });
  }
};

export const cancelContract = async (req: Request, res: Response) => {
  const { contractid } = req.params;
  try {
    const contract = await contractService.cancelContract(Number(contractid));
    if (contract) {
      res.status(200).json(contract);
    } else {
      res.status(404).json({ error: "Contract not found" });
    }
  } catch (error) {
    res.status(500).json({ error: "Error canceling contract" });
  }
};

export const changePaymentMethod = async (req: Request, res: Response) => {
  const { contractid } = req.params;
  const { methodpayment_methodpaymentid } = req.body;
  try {
    const contract = await contractService.changePaymentMethod(
      Number(contractid),
      methodpayment_methodpaymentid
    );
    if (contract) {
      res.status(200).json(contract);
    } else {
      res.status(404).json({ error: "Contract not found" });
    }
  } catch (error) {
    res.status(500).json({ error: "Error changing payment method" });
  }
};
