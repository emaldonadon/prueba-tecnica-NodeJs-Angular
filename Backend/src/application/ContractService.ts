import { Contract } from "../infrastructure/models/client/Contract";
import { StatusContract } from "../infrastructure/models/client/StatusContract";
import { Services } from "../infrastructure/models/client/Services";
import { Client } from "../infrastructure/models/client/Client";
import { MethodPayment } from "../infrastructure/models/client/MethodPayment";

export class ContractService {
  async createContract(contractData: any): Promise<Contract> {
    return Contract.create(contractData);
  }

  async getContractById(contractid: number): Promise<Contract | null> {
    return Contract.findByPk(contractid, {
      include: [
        { model: Services, as: "services" },
        { model: Client, as: "client" },
        { model: MethodPayment, as: "methodpayment" },
        { model: StatusContract, as: "statuscontract" },
      ],
    });
  }

  async updateContract(
    contractid: number,
    contractData: any
  ): Promise<Contract | null> {
    const contract = await Contract.findByPk(contractid);
    if (contract) {
      return contract.update(contractData);
    }
    return null;
  }

  async deleteContract(contractid: number): Promise<boolean> {
    const contract = await Contract.findByPk(contractid);
    if (contract) {
      await contract.destroy();
      return true;
    }
    return false;
  }

  async changeService(
    contractid: number,
    newServiceId: number
  ): Promise<Contract | null> {
    const contract = await Contract.findByPk(contractid);
    if (contract) {
      await contract.update({ statuscontract_statusid: "SUSTITUIDO" });

      const newContract = await Contract.create({
        ...contract.toJSON(),
        service_serviceid: newServiceId,
        statuscontract_statusid: "RENOVACION",
        created_at: new Date(),
      });

      return newContract;
    }
    return null;
  }

  async cancelContract(contractid: number): Promise<Contract | null> {
    const contract = await Contract.findByPk(contractid);
    if (contract) {
      return contract.update({
        statuscontract_statusid: "CANCELADO",
        updated_at: new Date(),
      });
    }
    return null;
  }

  async changePaymentMethod(
    contractid: number,
    newMethodPaymentId: number
  ): Promise<Contract | null> {
    const contract = await Contract.findByPk(contractid);
    if (contract) {
      return contract.update({
        methodpayment_methodpaymentid: newMethodPaymentId,
      });
    }
    return null;
  }
}
