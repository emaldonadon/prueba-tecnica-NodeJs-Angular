import {
  Table,
  Column,
  Model,
  DataType,
  HasMany,
  ForeignKey,
  BelongsTo,
} from "sequelize-typescript";
import { Services } from "./Services";
import { StatusContract } from "./StatusContract";

@Table({
  tableName: "device",
  timestamps: true,
  createdAt: "created_at",
  updatedAt: "updated_at",
})
export class Device extends Model {
  @Column({ type: DataType.INTEGER, primaryKey: true, autoIncrement: true })
  deviceid!: number;

  @Column({ type: DataType.STRING, allowNull: false })
  devicename!: string;

  @ForeignKey(() => Services)
  @Column({ type: DataType.INTEGER, allowNull: false })
  service_serviceid!: number;

  @BelongsTo(() => Services)
  statuscontract!: StatusContract;
}
