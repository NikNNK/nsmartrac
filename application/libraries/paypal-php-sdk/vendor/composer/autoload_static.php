<?php

// autoload_static.php @generated by Composer

namespace Composer\Autoload;

class ComposerStaticInitc9842c7492146d26c293c4fd19083fec
{
    public static $prefixLengthsPsr4 = array (
        'P' => 
        array (
            'Psr\\Log\\' => 8,
        ),
    );

    public static $prefixDirsPsr4 = array (
        'Psr\\Log\\' => 
        array (
            0 => __DIR__ . '/..' . '/psr/log/Psr/Log',
        ),
    );

    public static $prefixesPsr0 = array (
        'P' => 
        array (
            'PayPal' => 
            array (
                0 => __DIR__ . '/..' . '/paypal/rest-api-sdk-php/lib',
            ),
        ),
    );

    public static function getInitializer(ClassLoader $loader)
    {
        return \Closure::bind(function () use ($loader) {
            $loader->prefixLengthsPsr4 = ComposerStaticInitc9842c7492146d26c293c4fd19083fec::$prefixLengthsPsr4;
            $loader->prefixDirsPsr4 = ComposerStaticInitc9842c7492146d26c293c4fd19083fec::$prefixDirsPsr4;
            $loader->prefixesPsr0 = ComposerStaticInitc9842c7492146d26c293c4fd19083fec::$prefixesPsr0;

        }, null, ClassLoader::class);
    }
}