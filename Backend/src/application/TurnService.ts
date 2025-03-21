import { Turn } from "../infrastructure/models/client/Turn";
import { Cash } from "../infrastructure/models/client/Cash";
import { Op } from "sequelize";

export class TurnService {
  async createTurn(turnData: any): Promise<Turn> {
    const { tipoAtencion, cash_cashid, usergestorid } = turnData;

    if (!tipoAtencion) {
      throw new Error("El tipo de atención es requerido");
    }

    if (!cash_cashid || !usergestorid) {
      throw new Error("cash_cashid y usergestorid son requeridos");
    }

    const cash = await Cash.findByPk(cash_cashid);
    if (!cash) {
      throw new Error("El cash_cashid proporcionado no existe");
    }

    const description = await this.generarDescripcion(tipoAtencion);

    const nuevoTurno = await Turn.create({
      description,
      cash_cashid,
      usergestorid,
    });

    return nuevoTurno;
  }


  async getTurnById(turnid: number): Promise<Turn | null> {
    return Turn.findByPk(turnid, {
      include: [{ model: Cash, as: "cash" }], 
    });
  }

  async updateTurn(turnid: number, turnData: any): Promise<Turn | null> {
    const turn = await Turn.findByPk(turnid);
    if (turn) {
      if (turnData.tipoAtencion) {
        turnData.description = await this.generarDescripcion(turnData.tipoAtencion);
      }
      return turn.update(turnData);
    }
    return null;
  }

  async deleteTurn(turnid: number): Promise<boolean> {
    const turn = await Turn.findByPk(turnid);
    if (turn) {
      await turn.destroy();
      return true;
    }
    return false;
  }

  private async generarDescripcion(tipoAtencion: string): Promise<string> {
    const iniciales = tipoAtencion
      .split(" ")
      .map((word) => word[0].toUpperCase())
      .join("")
      .substring(0, 2);

    const ultimoTurno = await Turn.findOne({
      where: { description: { [Op.like]: `${iniciales}%` } },
      order: [["description", "DESC"]],
    });

    let siguienteNumero = 1;
    if (ultimoTurno) {
      const ultimoNumero = parseInt(ultimoTurno.description.slice(2), 10);
      siguienteNumero = ultimoNumero + 1;
    }
    return `${iniciales}${siguienteNumero.toString().padStart(4, "0")}`;
  }
}