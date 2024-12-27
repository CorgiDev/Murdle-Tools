# Decoder Code
# ABCDEFGHIJKLMNOPQRSTUVWXYZ
# Example Decoder String: ZYXWVUTSRQPONMLKJIHGFEDCBA
# Example Code: TVMVIZO XLUUVV WRW MLG SZEV GSV XILDYZI
# Result: GENERAL COFFE DID NOT HAVE THE CROWBAR

# foreach ($<item> in $<collection>){<statement list>}
# function createDecoder() {$decoder = Read-Host - Prompt "Enter the translation line for your Murdle. This is the second line that corresponds with the regular ABCDEFGHIJKLMNOPQRSTUVWXYZ line."}
$result=""

# Create decoder
$decoderEntry = Read-Host - Prompt "Enter the translation line for your Murdle. This is the second line that corresponds with the regular ABCDEFGHIJKLMNOPQRSTUVWXYZ line. Must be 26 characters to work properly."
$decoder = $decoderEntry.ToCharArray()

# TODO: Take in a code from the user
$scrambledPhrase = Read-Host -Prompt "Enter the code from your Murdle puzzle."

# TODO: Make the provided string into an array with each character an item in the array.
$codeArray = $scrambledPhrase.ToCharArray()

# TODO: Review each character in the array.
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

# TODO: If a letter, swap it with its corresponding letter in the decoder and add it to a new array.

# TODO: If not letter, just move it to the new array.