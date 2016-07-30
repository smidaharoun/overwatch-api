<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use App\Importer;

class Import extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'import {table?}';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Import CSV data into the database';

    /**
     * @var App\Importer
     */
    protected $importer;

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct(Importer $importer)
    {
        parent::__construct();
        $this->importer = $importer;
    }

    /**
     * Execute the console command.
     *
     * @return mixed
     */
    public function handle()
    {
        $table = $this->argument('table');

        if (null === $table) {
            $this->importer->importAll();
        } else {
            foreach (explode(',', $table) as $t) {
                $this->importer->import($t);
            }
        }
    }
}
