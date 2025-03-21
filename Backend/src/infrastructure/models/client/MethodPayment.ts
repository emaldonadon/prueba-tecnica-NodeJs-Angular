import { Table, Column, Model, DataType, HasMany } from "sequelize-typescript";
import { Contract } from "./Contract";

@Table({
  tableName: "methodpayment",
  timestamps: true,
  createdAt: "created_at",
  updatedAt: "updated_at",
})
export class MethodPayment extends Model {
  @Column({ type: DataType.INTEGER, primaryKey: true, autoIncrement: true })
  methodpaymentid!: number;

  @Column({ type: DataType.STRING, allowNull: false })
  description!: string;

  @HasMany(() => Contract)
  contract!: Contract[];
}
