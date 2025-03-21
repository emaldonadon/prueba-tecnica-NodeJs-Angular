import { Table, Column, Model, DataType, HasMany } from "sequelize-typescript";
import { Attention } from "../attention/Attention";
import { Contract } from "./Contract";

@Table({
  tableName: "client",
  timestamps: true,
  createdAt: "created_at",
  updatedAt: "updated_at",
})
export class Client extends Model {
  @Column({ type: DataType.INTEGER, primaryKey: true, autoIncrement: true })
  clientid!: number;

  @Column({ type: DataType.STRING, unique: true, allowNull: false })
  name!: string;

  @Column({ type: DataType.STRING, allowNull: false })
  lastname!: string;

  @Column({ type: DataType.STRING, allowNull: false })
  identification!: string;

  @Column({ type: DataType.STRING, allowNull: false, unique: true })
  email!: string;

  @Column({ type: DataType.STRING, allowNull: false })
  phonenumber!: string;

  @Column({ type: DataType.STRING, allowNull: false })
  address!: string;

  @Column({ type: DataType.STRING, allowNull: false })
  referenceaddress!: string;

  @HasMany(() => Attention)
  attention!: Attention[];

  @HasMany(() => Contract)
  contract!: Contract[];
}
