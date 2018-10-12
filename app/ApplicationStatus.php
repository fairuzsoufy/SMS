<?php

namespace App;

use Konekt\Enum\Enum;

class ApplicationStatus extends Enum
{
    const __default = self::PENDING;

    const PENDING   = 0;
    const ACCEPTED = 1;
    const REJECTED = 2;

}