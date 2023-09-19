<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;

class ProductSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $Faker = Faker::create('id_ID');

        for($i=1; $i<=50; $i++){
            \DB::table('products')->insert([
                    'product_name' => $Faker->sentence($nbwords=6, $variablewords=true),
                    'product_code' => $Faker->word,
                    'price'=>$Faker->randomfloat($nbMaxDecimals = NULL, $min=100000, $max=NULL),
                    'created_at'=>$Faker->dateTime($max='now', $timezone=null),
                    'created_at'=>$Faker->dateTime($max='now', $timezone=null),
            ]);
        }
    }
}
