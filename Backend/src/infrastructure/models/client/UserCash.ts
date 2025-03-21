import { Table, Column, Model, DataType, ForeignKey, BelongsTo } from "sequelize-typescript";
import { User } from "../user/User";
import { Cash } from "./Cash";

@Table({
  tableName: "usercash",
  timestamps: true,
  createdAt: "created_at",
  updatedAt: "updated_at",
})
export class UserCash extends Model {
  @ForeignKey(() => User)
  @Column({ type: DataType.INTEGER, primaryKey: true, autoIncrement: true })
  user_userid!: number;

  @BelongsTo(() => User) 
  user!: User;

  @ForeignKey(() => Cash)
  @Column({ type: DataType.INTEGER, allowNull: false })
  cash_cashid!: number;

  @BelongsTo(() => Cash) 
  cash!: Cash;

}