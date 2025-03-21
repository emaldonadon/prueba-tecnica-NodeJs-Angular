import { Table, Column, Model, DataType, HasMany } from "sequelize-typescript";
import { User } from "./User";

@Table({
  tableName: "rol",
  timestamps: false,
})
export class Rol extends Model {
  @Column({ type: DataType.INTEGER, primaryKey: true, autoIncrement: true })
  rolid!: number;

  @Column({ type: DataType.STRING, allowNull: false })
  rolename!: string;

  @HasMany(() => User) 
  users!: User[];
}