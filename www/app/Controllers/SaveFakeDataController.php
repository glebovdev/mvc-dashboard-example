<?php

namespace App\Controllers;

use Core\App;
use Core\Interfaces\RequestInterface;
use Faker\Factory;

/**
 * Simplest seeding class
 * TODO: completely refactor
 */
final class SaveFakeDataController
{
    protected static $db;

    public function __invoke(RequestInterface $request)
    {
        self::$db = App::$instance->getDb();

        $faker = Factory::create();

        self::countries($faker);
        self::customers($faker);
        self::products($faker);
        self::orders($faker);
        self::orderProducts($faker);
    }

    // Fake countries data
    protected static function countries($faker): void
    {
        $sql = "INSERT INTO countries (name, created_at) VALUES (?, ?)";

        foreach (range(1, 15) as $i) {
            $country = $faker->country();

            // Check if country already exists in the table
            $stmt = self::$db->query("SELECT * FROM countries WHERE `name` = '$country'");
            if (false !== ($stmt->fetchColumn())) {
                continue;
            }

            // Add country
            self::$db->prepare($sql)->execute([
                $country,
                $faker->dateTimeBetween('-5 days')->format('Y-m-d H:i:s')
            ]);
        }
        echo 'Countries - done <br />';
    }

    // Fake customers data
    protected static function customers($faker): void
    {
        $sql = "INSERT INTO customers (last_name, first_name, email, created_at) VALUES (?, ?, ?, ?)";

        foreach (range(1, 200) as $i) {
            self::$db->prepare($sql)->execute([
                $faker->lastName(),
                $faker->firstName(),
                $faker->freeEmail(),
                $faker->dateTimeBetween('-200 days')->format('Y-m-d H:i:s')
            ]);
        }

        echo 'Customers - done <br />';
    }

    // Fake products data
    protected static function products($faker): void
    {
        $sql = "INSERT INTO products (name, ean, price, created_at) VALUES (?, ?, ?, ?)";

        foreach (range(1, 300) as $i) {
            self::$db->prepare($sql)->execute([
                ucfirst($faker->word()),
                $faker->ean13(),
                $faker->numberBetween(500, 1000000),
                $faker->dateTimeBetween('-100 days')->format('Y-m-d H:i:s')
            ]);
        }

        echo 'Products - done <br />';
    }

    // Fake the Orders with Customers & Countries
    protected static function orders($faker)
    {
        // Customers
        $sql = "SELECT * FROM customers ORDER BY RAND() LIMIT 50";

        $result = self::$db->query($sql)->fetchAll();
        foreach ($result as $customer) {
            $customers[$customer->id] = $customer;
        }

        // Countries
        $sql = "SELECT * FROM countries ORDER BY RAND()";

        $result = self::$db->query($sql)->fetchAll();
        foreach ($result as $country) {
            $countries[$country->id] = $country;
        }

        // Devices
        $devices = ['iPhone 11', 'iPhone 12', 'Google Pixel 2', 'Google Pixel 5', 'Macbook Pro', 'PC'];

        $sql = "INSERT INTO orders (customer_id, country_id, device, created_at) VALUES (?, ?, ?, ?)";

        foreach (range(1, 70) as $i) {
            self::$db->prepare($sql)->execute([
                array_rand($customers),
                array_rand($countries),
                $devices[array_rand($devices)],
                $faker->dateTimeBetween('-30 days')->format('Y-m-d H:i:s')
            ]);
        }

        echo 'Orders - done <br />';
    }

    // Fake order_products with data
    protected static function orderProducts($faker)
    {
        // Orders
        $sql = "SELECT * FROM orders";

        $result = self::$db->query($sql)->fetchAll();
        foreach ($result as $order) {
            $orders[$order->id] = $order;
        }

        // Products
        $sql = "SELECT * FROM products ORDER BY RAND()";

        $result = self::$db->query($sql)->fetchAll();
        foreach ($result as $product) {
            $products[$product->id] = $product;
        }

        $sql = "INSERT INTO orders_products (order_id, product_id, quantity, price) VALUES (?, ?, ?, ?)";

        foreach (range(1, 100) as $i) {
            $order = $orders[array_rand($orders)];
            $product = $products[array_rand($products)];
            self::$db->prepare($sql)->execute([
                $order->id,
                array_rand($products),
                $faker->randomDigitNotNull(),
                $product->price
            ]);
        }

        echo 'Orders-Products - done <br />';
    }
}
