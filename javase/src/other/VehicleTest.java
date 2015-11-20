package other;

import other.Vehicle;

/**
 * Created by Administrator on 2015/10/24.
 */
public class VehicleTest {
    public static void main(String[] args) {
        Vehicle bike = new Vehicle("free", 10.2f);
        Vehicle car = new Vehicle("万元",100f);
        System.out.println(bike.cost);
        System.out.println(bike.speed);
        System.out.println(car.cost);
        System.out.println(car.speed);



    }
}
