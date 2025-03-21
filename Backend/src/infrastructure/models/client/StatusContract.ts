import { Table, Column, Model, DataType, HasMany } from "sequelize-typescript";
import { Contract } from "./Contract";

@Table({
  tableName: "statuscontract",
  timestamps: true,
  createdAt: "created_at",
  updatedAt: "updated_at",
})
export class StatusContract extends Model {
  @Column({ type: DataType.STRING, primaryKey: true, autoIncrement: true })
  statusid!: string;

  @Column({ type: DataType.STRING, allowNull: false })
  description!: string;

  @HasMany(() => Contract)
  contract!: Contract[];
}
