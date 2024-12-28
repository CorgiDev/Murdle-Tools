# Decoder Code
# Murdle Volume 1 Examples
## Example 1: TVMVIZO XLUUVV WRW MLG SZEV GSV XILDYZI
## Example 2: ZTVMG RMP SZW Z NVWRFN-DVRTSG DVZKLM

# Create decoder
function Custom-Decoder () {
    $decoderEntry = Read-Host -Prompt "Enter the translation line for your Murdle. This is the second line that corresponds with the regular ABCDEFGHIJKLMNOPQRSTUVWXYZ line. Must be 26 characters to work properly.";
    $customDecoder = $decoderEntry.ToCharArray();
    return $customDecoder
}

function Book-Selection () {
    Write-Host "Murdle Volume Options"
    Write-Host "1 = Murdle Volume 1"
    Write-Host "2 = Murdle Volume 2"
    Write-Host "3 = Murdle Volume 3"
    Write-Host "7 = The Case of the Seven Skulls"
    Write-Host "8 = The School of Mystery"
    $selectBook = Read-Host -Prompt "Enter the number cooresponding with the Murdle Volume you are using."
    Switch ($slectBook) {
        1 {$decoder = "Z","Y","X","W","V","U","T","S","R","Q","P","O","N","M","L","K","J","I","H","G","F","E","D","C","B","A"}
        #2 {$decoder = "Z","Y","X","W","V","U","T","S","R","Q","P","O","N","M","L","K","J","I","H","G","F","E","D","C","B","A"}
        #3 {$decoder = "Z","Y","X","W","V","U","T","S","R","Q","P","O","N","M","L","K","J","I","H","G","F","E","D","C","B","A"}
        #4 {$decoder = "Z","Y","X","W","V","U","T","S","R","Q","P","O","N","M","L","K","J","I","H","G","F","E","D","C","B","A"}
        Default {
            Write-Host "The number you entered does not appear to match an available option at this time.";
            Write-Host "Please manually enter the code translation line. This will be the line opposite the regular ABCD line.";
            $decoder = Custom-Decoder;
        }
    }
}

# Preset Variables
$result="";
$decoder="";

# Take in a code from the user and make it into an array.
$decoderSelection = Read-Host -Prompt "Enter the number corresponding with what kind of cipher you are using: 1 = Next Letter Code, 2 = Murdle Book Code, or 3 = Other";

switch ($decoderSelection) {
    1 {
        # This only works if it is a Next Letter Code.
        $decoder = "B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z","A";
    }
    2 {
        $decoder = Book-Selection;
    }
    3 {
        # Take in new decoding string.
        $decoder = Custom-Decoder;
    }
    Default {
        Write-Host "The option you entered doesn't correspond to an available option. You'll need to manually enter the code translation line."
        $decoder = Custom-Decoder;
    }
}

# Take in a code from the user and make it into an array.
$scrambledPhrase = Read-Host -Prompt "Enter the code from your Murdle puzzle.";
$codeArray = $scrambledPhrase.ToCharArray();

# Review each character in the array, and create result.
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

Write-Host $result;
