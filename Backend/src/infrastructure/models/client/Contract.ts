import {
  Table,
  Column,
  Model,
  DataType,
  HasMany,
  ForeignKey,
  BelongsTo,
} from "sequelize-typescript";
import { StatusContract } from "./StatusContract";
import { Client } from "./Client";
import { MethodPayment } from "./MethodPayment";
import { Services } from "./Services";

@Table({
  tableName: "contract",
  timestamps: true,
  createdAt: "created_at",
  updatedAt: "updated_at",
})
export class Contract extends Model {
  @Column({ type: DataType.INTEGER, primaryKey: true, autoIncrement: true })
  contractid!: number;
  @ForeignKey(() => Services)
  @Column({ type: DataType.INTEGER, allowNull: false })
  service_serviceid!: number;

  @ForeignKey(() => StatusContract)
  @Column({ type: DataType.STRING, allowNull: false })
  statuscontract_statusid!: string;

  @ForeignKey(() => Client)
  @Column({ type: DataType.INTEGER, allowNull: false })
  client_clientid!: number;

  @ForeignKey(() => MethodPayment)
  @Column({ type: DataType.INTEGER, allowNull: false })
  methodpayment_methodpaymentid!: number;

  @BelongsTo(() => Services)
  services!: Services;

  @BelongsTo(() => Client)
  client!: Client;

  @BelongsTo(() => MethodPayment)
  methodpayment!: MethodPayment;

  @BelongsTo(() => StatusContract)
  statuscontract!: StatusContract;
}
