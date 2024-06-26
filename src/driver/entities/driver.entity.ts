import { Car } from "src/car/entities/car.entity";
import { DriverSituation } from "src/driver_situation/entities/driver_situation.entity";
import { User } from "src/user/entities/user.entity";
import { Column, Entity, JoinColumn, ManyToOne, OneToOne, PrimaryGeneratedColumn } from "typeorm";

@Entity({name: 'driver'})
export class Driver {
    @PrimaryGeneratedColumn()
    id_driver: number;

    @Column({type: 'varchar' ,unique: true})
    dni_driver: string;

    @Column({type: 'varchar'})
    driver_name: string;

    @Column({type: 'varchar'})
    home_address: string;

    @Column({type: 'varchar'})
    category: string;

    @Column({type: 'boolean'})
    is_copilot: boolean;

    @Column({type: 'integer'})
    id_ds: number;

    @Column({type: 'integer'})
    id_car: number;

    @OneToOne(() => User, (user) => user.driver)
    user: User;

    @ManyToOne(() => DriverSituation, (driverSituation) => driverSituation.driver)
    @JoinColumn({name: 'id_ds'})
    driverSituation: DriverSituation;

    @ManyToOne(() => Car, (car) => car.driver)
    @JoinColumn({name: 'id_car'})
    car: Car;
}
