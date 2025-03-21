import {
  Table,
  Column,
  Model,
  DataType,
  ForeignKey,
  BelongsTo,
  HasMany,
} from "sequelize-typescript";
import { UserStatus } from "./UserStatus";
import { Rol } from "./Rol";
import { UserCash } from "../client/UserCash";

@Table({
  tableName: "user",
  timestamps: true,
  createdAt: "created_at",
  updatedAt: "updated_at",
})
export class User extends Model {
  @Column({ type: DataType.INTEGER, primaryKey: true, autoIncrement: true })
  userid!: number;

  @Column({
    type: DataType.STRING,
    unique: true,
    allowNull: false,
    validate: {
      len: [8, 20],
      is: /^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,20}$/
    },
  })
  username!: string;

  @Column({
    type: DataType.STRING,
    allowNull: false,
    validate: {
      len: [8, 30], 
      is: /^(?=.*[A-Z])(?=.*\d).{8,30}$/,
    },
  })
  password!: string;

  @ForeignKey(() => Rol)
  @Column({ type: DataType.INTEGER, allowNull: false })
  rol_rolid!: number;

  @BelongsTo(() => Rol)
  rol!: Rol;

  @Column({ type: DataType.INTEGER, allowNull: false })
  usercreate!: number;

  @Column({ type: DataType.INTEGER, allowNull: true })
  userapproval!: number;

  @Column({ type: DataType.DATE, allowNull: true })
  dateapproval!: Date;

  @ForeignKey(() => UserStatus)
  @Column({ type: DataType.STRING, allowNull: false })
  userstatus_statudid!: string;

  @BelongsTo(() => UserStatus)
  userstatus!: UserStatus;

  @HasMany(() => UserCash) 
  userCashes!: UserCash[];
}

