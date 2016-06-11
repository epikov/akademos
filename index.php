<?php

class AkademosTest
{

    /**
     * Test 1
     * Here we have a function that help us spam our hearty laughter.
     *
     * @param $number
     * @return string
     */
    public function spam($number)
    {
        $number = abs((int)$number);
        $buffer = 'hue';
        for ($i = 1; $i < $number; $i++) {
            $buffer .= 'hue';
        }

        return $buffer;
    }

    /**
     * Test 2
     * Complete the solution so that the function will break up camel casing,
     * using a space between words.
     * 
     * @param $string
     * @return string
     */
    public function solution($string)
    {
        return implode(' ', preg_split('/(?=[A-Z])/', $string));
    }

    /**
     * Test 4
     * In elementary arithmetic a "carry" is a digit that is transferred from one column of digits
     * to another column of more significant digits during a calculation algorithm.
     *
     * @param $numbers
     * @param string $separator
     * @return string
     */
    public function solve($numbers, $separator = PHP_EOL)
    {
        $n = explode(' ', $numbers);
        $len = strlen(max($n));
        $result = [];

        //add zeros
        array_map(function($val, $key) use ($len, &$n) {
            $n[$key] = sprintf("%0" . $len . "d", $val);
        }, $n, array_keys($n));

        foreach (array_chunk($n, 2) as $val) {
            $carrie = 0;
            array_map(function($val1, $val2) use (&$carrie) {
                if (($result = $val1 + $carrie + $val2) > 9) {
                    $carrie++;
                }
            },
                array_reverse(str_split($val[0])),
                array_reverse(str_split($val[1]))
            );

            $result[] = sprintf(
                '%s + %s have %s carrie operation',
                $val[0], $val[1], ($carrie) ? $carrie : 'no'
            );
        }

        return implode($separator, $result);
    }

    /**
     * Set <hr> line
     */
    public function setLine()
    {
        echo '<hr>';
    }

}

$class = new AkademosTest();

var_dump('Test 1');
var_dump($class->spam(6));
$class->setLine();

var_dump('Test 2');
var_dump($class->solution('camelCasingTest'));
$class->setLine();

var_dump('Test 4');
echo $class->solve('123 456 555 555 123 594', '<br>');
//echo $class->solve('123 456 856 47693', '<br>');
$class->setLine();

require_once('view/index.html');