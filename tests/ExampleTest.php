<?php declare(strict_types=1);

namespace Kata\Tests;

use Kata\Example;
use PHPUnit\Framework\TestCase;

/**
 * Class Example Test.
 *
 * @package Kata\Tests
 */
class ExampleTest extends TestCase
{
    /**
     * @test
     */
    public function testExampleMethod(): void
    {
        $example = new Example();

        $this->assertTrue($example->method());
    }
}
