<?php

namespace Database\Seeders;

use Faker\Factory as Faker;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class bookingSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker::create();
        for ($i=0;$i<50;$i++){
            DB::table('bookings')->insert([
                'customer_id'=>$faker->numberBetween(1,49),
                'room_id'=>$faker->numberBetween(1,50),
            ]);
        }
    }
}
