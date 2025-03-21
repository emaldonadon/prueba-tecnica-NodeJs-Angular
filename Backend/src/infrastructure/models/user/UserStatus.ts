import { Table, Column, Model, DataType, HasMany } from "sequelize-typescript";
import { User } from "./User";

@Table({
  tableName: "userstatus",
  timestamps: false,
})
export class UserStatus extends Model {
  @Column({ type: DataType.STRING, primaryKey: true, allowNull: false })
  statusid!: string;

  @Column({ type: DataType.STRING, allowNull: false })
  description!: string;

  @HasMany(() => User)
  users!: User[];
}
