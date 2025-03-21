import {
  Table,
  Column,
  Model,
  DataType,
  ForeignKey,
} from "sequelize-typescript";
import { Turn } from "../client/Turn";
import { Client } from "../client/Client";
import { AttentionType } from "./AttentionType";
import { AttentionStatus } from "./AttentionStatus";

@Table({
  tableName: "client",
  timestamps: true,
  createdAt: "created_at",
  updatedAt: "updated_at",
})
export class Attention extends Model {
  @Column({ type: DataType.INTEGER, primaryKey: true, autoIncrement: true })
  attentionid!: number;

  @ForeignKey(() => Turn)
  @Column({ type: DataType.INTEGER, unique: true, allowNull: false })
  turn_turnid!: number;

  @ForeignKey(() => Client)
  @Column({ type: DataType.INTEGER, allowNull: false })
  client_clientid!: number;

  @ForeignKey(() => AttentionType)
  @Column({ type: DataType.INTEGER, allowNull: false })
  attentiontype_attentiontypeid!: number;

  @ForeignKey(() => AttentionStatus)
  @Column({ type: DataType.INTEGER, allowNull: false, unique: true })
  attentionstatus_statusid!: number;
}
