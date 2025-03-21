import { Table, Column, Model, DataType, HasMany } from "sequelize-typescript";
import { Attention } from "./Attention";

@Table({
  tableName: "attentionstatus",
  timestamps: true,
  createdAt: "created_at",
  updatedAt: "updated_at",
})
export class AttentionStatus extends Model {
  @Column({ type: DataType.INTEGER, primaryKey: true, autoIncrement: true })
  statusid!: number;

  @Column({ type: DataType.STRING, unique: true, allowNull: false })
  description!: string;

  @HasMany(() => Attention)
  attention!: Attention[];
}
