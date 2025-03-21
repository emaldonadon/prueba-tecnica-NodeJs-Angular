import {
  Table,
  Column,
  Model,
  DataType,
  ForeignKey,
  BelongsTo,
  HasMany,
} from "sequelize-typescript";
import { Cash } from "./Cash";
import { Attention } from "../attention/Attention";

@Table({
  tableName: "turn",
  timestamps: true,
  createdAt: "created_at",
  updatedAt: "updated_at",
})
export class Turn extends Model {
  @Column({ type: DataType.INTEGER, primaryKey: true, autoIncrement: true })
  turnid!: number;

  @Column({
    type: DataType.STRING,
    allowNull: false,
    validate: {
      len: [6, 6],
      is: /^[A-Z]{2}\d{4}$/,
    },
  })
  description!: string;

  @ForeignKey(() => Cash)
  @Column({ type: DataType.INTEGER, allowNull: false })
  cash_cashid!: number;

  @BelongsTo(() => Cash)
  cash!: Cash;

  @Column({ type: DataType.INTEGER, allowNull: false })
  usergestorid!: number;

  @HasMany(() => Attention)
  users!: Attention[];
}
