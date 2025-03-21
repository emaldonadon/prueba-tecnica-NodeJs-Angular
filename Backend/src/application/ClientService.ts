import { Client } from "../infrastructure/models/client/Client";

export class ClientService {
  async createClient(clientData: any): Promise<Client> {
    return Client.create(clientData);
  }

  async getClientById(clientid: number): Promise<Client | null> {
    return Client.findByPk(clientid);
  }

  async updateClient(clientid: number, clientData: any): Promise<Client | null> {
    const client = await Client.findByPk(clientid);
    if (client) {
      return client.update(clientData);
    }
    return null;
  }

  async deleteClient(clientid: number): Promise<boolean> {
    const client = await Client.findByPk(clientid);
    if (client) {
      await client.destroy();
      return true;
    }
    return false;
  }
}