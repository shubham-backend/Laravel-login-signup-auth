<?php

function pr($data)
{
	echo "<pre>";
	print_r($data);
	echo "<pre>";
	die;
}

function encryptDecrypt($string, $type = 'encrypt')
{

    if ($type == 'decrypt') {
        $enc_string = base64decryption($string);
    }
    if ($type == 'encrypt') {
        $enc_string = base64encryption($string);
    }
    return $enc_string;

}

/**
 * @funciton base64encryption
 * @description will Encrypt data in base64
 *
 * @param type $string
 */
function base64encryption($string)
{
    return base64_encode($string);

}



/**
 * @funciton base64decryption
 * @description will decrypt data in base64
 *
 * @param type $string
 */
function base64decryption($string)
{
    return base64_decode($string);

}
