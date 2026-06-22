import { PrimaryGeneratedColumn, Entity } from "typeorm";

@Entity()
export class TestModel {

    @PrimaryGeneratedColumn()
    id!: string;
    name!: string;
}