import { Table, Column, Model, DataType, HasMany } from "sequelize-typescript";
import { Device } from "./Device";

@Table({
  tableName: "services",
  timestamps: true,
  createdAt: "created_at",
  updatedAt: "updated_at",
})
export class Services extends Model {
  @Column({ type: DataType.INTEGER, primaryKey: true, autoIncrement: true })
  serviceid!: number;

  @Column({ type: DataType.STRING, allowNull: false })
  service_serviceid!: string;

  @Column({ type: DataType.STRING, allowNull: false })
  servicename!: string;

  @Column({ type: DataType.STRING, allowNull: false })
  servicedescription!: string;

  @Column({ type: DataType.STRING, allowNull: false })
  price!: string;

  @HasMany(() => Device)
  device!: Device[];
}
