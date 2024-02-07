<?php

namespace Database\Seeders;

use Faker\Factory as Faker;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class customerSeeder extends Seeder
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
            DB::table('customers')->insert([
                'name'=>$faker->name(),
                'email'=>$faker->email(),
                'phone'=>$faker->phoneNumber()
            ]);
        }
    }
}
