<?php

namespace App;

use DB;
use \DirectoryIterator;
use Symfony\Component\Console\Output\ConsoleOutput;

class Importer
{
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
        foreach (new DirectoryIterator(data_path()) as $file) {
            if (!$file->isDot() && $file->getExtension() === 'csv') {
                $this->import(str_replace('.csv', '', $file->getFilename()));
            }
        }
    }

    /**
     * @param  string $table The table name
     * @return void
     */
    public function import($table)
    {
        $csvData = trim(file_get_contents(data_path($table . '.csv')));
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
        DB::statement('SET foreign_key_checks = 0');
        DB::table($table)->insert($data);
        DB::statement('SET foreign_key_checks = 1');

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
}
