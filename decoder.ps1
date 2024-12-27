# Decoder Code
# ABCDEFGHIJKLMNOPQRSTUVWXYZ
# Example Decoder String: ZYXWVUTSRQPONMLKJIHGFEDCBA
# Example Code: TVMVIZO XLUUVV WRW MLG SZEV GSV XILDYZI
# Result: GENERAL COFFE DID NOT HAVE THE CROWBAR

# Create decoder
function New-Decoder () {
    $decoderEntry = Read-Host -Prompt "Enter the translation line for your Murdle. This is the second line that corresponds with the regular ABCDEFGHIJKLMNOPQRSTUVWXYZ line. Must be 26 characters to work properly."
    $newDecoder = $decoderEntry.ToCharArray()
    return $newDecoder
}

$murdleBookAsk = Read-Host -Prompt "Are you solving a puzzle from a Murdle book?"

if ($murdleBookAsk.ToLowerCase() -eq "yes"){
    # Script to select which book
}
else {
    # Take in new decoding string.
    $decoder = New-Decoder
}

# Take in a code from the user and make it into an array.
$scrambledPhrase = Read-Host -Prompt "Enter the code from your Murdle puzzle."
$codeArray = $scrambledPhrase.ToCharArray()

# Review each character in the array, and create result.
$result=""
foreach ($codeChar in $codeArray) {
    switch ($codeChar) {
        A {$result += $decoder[0]}
        B {$result += $decoder[1]}
        C {$result += $decoder[2]}
        D {$result += $decoder[3]}
        E {$result += $decoder[4]}
        F {$result += $decoder[5]}
        G {$result += $decoder[6]}
        H {$result += $decoder[7]}
        I {$result += $decoder[8]}
        J {$result += $decoder[9]}
        K {$result += $decoder[10]}
        L {$result += $decoder[11]}
        M {$result += $decoder[12]}
        N {$result += $decoder[13]}
        O {$result += $decoder[14]}
        P {$result += $decoder[15]}
        Q {$result += $decoder[16]}
        R {$result += $decoder[17]}
        S {$result += $decoder[18]}
        T {$result += $decoder[19]}
        U {$result += $decoder[20]}
        V {$result += $decoder[21]}
        W {$result += $decoder[22]}
        X {$result += $decoder[23]}
        Y {$result += $decoder[24]}
        Z {$result += $decoder[25]}
        Default {$result += $codeChar} 
    }
}

Write-Host $result
