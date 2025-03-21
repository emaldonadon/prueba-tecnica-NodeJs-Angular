import {
  Table,
  Column,
  Model,
  DataType,
  HasMany,
  ForeignKey,
  BelongsTo,
} from "sequelize-typescript";
import { Client } from "./Client";

@Table({
  tableName: "payments",
  timestamps: true,
  createdAt: "created_at",
  updatedAt: "updated_at",
})
export class Payments extends Model {
  @Column({ type: DataType.INTEGER, primaryKey: true, autoIncrement: true })
  paymentid!: number;

  @ForeignKey(() => Client)
  @Column({ type: DataType.INTEGER, allowNull: false })
  client_clientid!: number;

  @BelongsTo(() => Client)
  client!: Client;
}
