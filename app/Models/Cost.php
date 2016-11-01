<?php

namespace App\Models;

class Cost
{
    /**
     * @var string
     */
    public $currency;

    /**
     * @var int
     */
    public $value;

    /**
     * @param \App\Currency $currency
     * @param int $value
     */
    public function __construct(Currency $currency, $value)
    {
        $this->currency = $currency->name;
        $this->value = (int) $value;
    }

    /**
     * @return array
     */
    public function toArray()
    {
        return [
            'currency' => $this->currency,
            'value' => $this->value,
        ];
    }
}
