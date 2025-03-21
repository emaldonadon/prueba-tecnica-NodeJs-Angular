import { Table, Column, Model, DataType, HasMany } from "sequelize-typescript";
import { Turn } from "./Turn";
import { UserCash } from "./UserCash";

@Table({
  tableName: "cash",
  timestamps: true,
  createdAt: "created_at",
  updatedAt: "updated_at",
})
export class Cash extends Model {
  @Column({ type: DataType.INTEGER, primaryKey: true, autoIncrement: true })
  cashid!: number;

  @Column({ type: DataType.STRING, allowNull: false })
  cashdescription!: string;

  @Column({ type: DataType.STRING, allowNull: false })
  active!: string;

  @HasMany(() => Turn)
  turns!: Turn[];

  @HasMany(() => UserCash)
  usersCash!: UserCash[];
}
