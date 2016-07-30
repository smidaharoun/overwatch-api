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

    public function __construct(ConsoleOutput $output)
    {
        $this->output = $output;
    }

    public function importAll()
    {
        foreach (new DirectoryIterator(data_path()) as $file) {
            if (!$file->isDot() && $file->getExtension() === 'csv') {
                $this->import(str_replace('.csv', '', $file->getFilename()));
            }
        }
    }

    public function import($table)
    {
        $filename = data_path($table . '.csv');
        $csvData = trim(file_get_contents($filename));
        $lines = explode(PHP_EOL, $csvData);
        $headers = str_getcsv(array_shift($lines), ',', null);
        $data = array();

        foreach ($lines as $i => $line) {
            $items = str_getcsv($line, ',', null);
            foreach ($items as $x => $item) {
                if ($item === '\N') {
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

    public function truncate($table)
    {
        DB::statement('SET foreign_key_checks = 0');
        DB::statement('TRUNCATE ' . $table);
        DB::statement('SET foreign_key_checks = 1');
    }
}