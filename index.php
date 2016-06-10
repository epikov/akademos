<?php

class AkademosTest
{

    //1
    public function spam($number)
    {
        $number = abs((int)$number);
        $buffer = 'hue';
        for ($i = 1; $i < $number; $i++) {
            $buffer .= 'hue';
        }

        return $buffer;
    }

    //2
    public function solution($string)
    {
        return implode(' ', preg_split('/(?=[A-Z])/', $string));
    }

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

}

$class = new AkademosTest();

var_dump($class->spam(6));
var_dump($class->solution('camelCasingTest'));
//echo $class->solve('123 456 856 47693', '<br>');
echo $class->solve('123 456 555 555 123 594', '<br>');


require_once('view/index.html');