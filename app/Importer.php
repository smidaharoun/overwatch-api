<?php

namespace App;

use DB;
use \DirectoryIterator;
use Symfony\Component\Console\Output\ConsoleOutput;

class Importer
{
    /**
     * Tables the importer supports
     *
     * Order is important to satisfy foreign key constraints, so
     * should mimic the order of the migrations
     * 
     * @var array
     */
    protected $tables = [
        'roles',
        'sub_roles',
        'heroes',
        'hero_sub_roles',
        'map_modes',
        'maps',
        'map_stages',
        'abilities',
        'qualities',
        'currencies',
        'events',
        'reward_types',
        'rewards',
        'achievements',
    ];

    /**
     * @var Symfony\Component\Console\Output\ConsoleOutput
     */
    protected $output;

    /**
     * @param Symfony\Component\Console\Output\ConsoleOutput $output
     */
    public function __construct(ConsoleOutput $output)
    {
        $this->output = $output;
    }

    /**
     * @return void
     */
    public function importAll()
    {
        foreach ($this->tables as $table) {
            $this->import($table);
        }
    }

    /**
     * @param  string $table The table name
     * @return void
     */
    public function import($table)
    {
        $filename = $this->getFilenameForTable($table);

        if (!is_readable($filename)) {
            throw new \Exception(
                'Trying to import data for table: ' . $table .
                ', but cannot read data file: ' . $filename
            );
        }
        $csvData = trim(file_get_contents($filename));
        $lines = explode(PHP_EOL, $csvData);
        $headers = str_getcsv(array_shift($lines));
        $data = array();

        foreach ($lines as $i => $line) {
            foreach (str_getcsv($line, ',') as $x => $item) {
                if (empty($item)) {
                    $item = null;
                }
                $data[$i][$headers[$x]] = $item;
            }
        }
        $this->truncate($table);
        DB::table($table)->insert($data);

        $this->output->writeln('Imported ' . count($data) . ' records for ' . $table);
    }

    /**
     * @param  string $table The table name
     * @return void
     */
    public function truncate($table)
    {
        DB::statement('SET foreign_key_checks = 0');
        DB::statement('TRUNCATE ' . $table);
        DB::statement('SET foreign_key_checks = 1');
    }

    /**
     * @param  string $table
     * @return string
     */
    protected function getFilenameForTable($table)
    {
        return data_path($table . '.csv');
    }
}
