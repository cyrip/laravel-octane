<?php

namespace Tests\Unit;

use PHPUnit\Framework\TestCase;

class ABTest extends TestCase
{
    public function testRunABTest()
    {
        $scriptPath = 'ab -n 1000 -c 100 http://localhost:8080/';
        exec($scriptPath, $output, $returnVar);

        $this->assertEquals(0, $returnVar, "The script did not run successfully.");
    }
}
