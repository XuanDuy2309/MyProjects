<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
use Illuminate\Support\Facades\DB;


class RoomSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker::create();
        $roomtype = ['standard','deluxe','suite'];
        $availability = ['available','occupied','under maintenance'];
        for ($i=0;$i<50;$i++){
            DB::table('rooms')->insert([
                'room_number'=>$faker->buildingNumber(3),
                'room_type'=>$faker->randomElement($roomtype),
                'availability'=>$faker->randomElement($availability),
            ]);
        }
    }
}
