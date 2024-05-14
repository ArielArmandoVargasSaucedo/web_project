import { Column, Entity, PrimaryGeneratedColumn } from "typeorm";

@Entity({name: 'user'})
export class User {
    @PrimaryGeneratedColumn()
    id_aut_user: number;

    @Column({type: 'varchar', unique: true})
    user_name: string;

    @Column({type: 'varchar'})
    password_user: string;
}
