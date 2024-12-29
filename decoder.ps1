# Decoder Code
# Murdle Volume 1 Examples
## Example 1: TVMVIZO XLUUVV WRW MLG SZEV GSV XILDYZI
## Example 2: ZTVMG RMP SZW Z NVWRFN-DVRTSG DVZKLM

######################################################
# FUNCTIONS
######################################################
function Custom-Decoder () {
    $decoderEntry = Read-Host -Prompt "Enter the translation line for your Murdle. This is the second line that corresponds with the regular ABCDEFGHIJKLMNOPQRSTUVWXYZ line. Must be 26 characters to work properly.";
    $customDecoder = $decoderEntry.ToCharArray();
    return $customDecoder
}

# Used when it is letter to letter translation of 26 characters. Typically used with Alphabet-Translation function.
function Simple-Prep () {
    $scrambledPhrase = Read-Host -Prompt "Enter the code from your Murdle puzzle.";
    $preparedCodeArray = $scrambledPhrase.ToCharArray();
    return $preparedCodeArray
}

function Numerals-Prep () {
    Write-Host "YOU MUST group the numerals as shown in your puzzle for accurate translation."
    Write-Host "Use the letter i, v, and x."
    Write-Host "Upper or lower case is not important."
    $scrambledNumerals = Read-Host -Prompt "Enter the numerals from your Murdle puzzle.";
    $splitOption =  [System.StringSplitOptions]::None;
    $preppedNumerals = $scrambledNumerals.Split(" ", $splitOption);
    return $numeralsArray
}

# Primarily used for Murdl The School of Mystery
function Numerals-Translation ($numeralsArray, $decoder) {
    $numeralResult ="";
    foreach ($numeralPiece in $numeralsArray) {
        switch ($numeralPiece) {
            I {$numeralResult += $decoder[0]}
            II {$numeralResult += $decoder[1]}
            III {$numeralResult += $decoder[2]}
            IV {$numeralResult += $decoder[3]}
            V {$numeralResult += $decoder[4]}
            VI {$numeralResult += $decoder[5]}
            VII {$numeralResult += $decoder[6]}
            VIII {$numeralResult += $decoder[7]}
            IX {$numeralResult += $decoder[8]}
            X {$numeralResult += $decoder[9]}
            XI {$numeralResult += $decoder[10]}
            XII {$numeralResult += $decoder[11]}
            XIII {$numeralResult += $decoder[12]}
            XIV {$numeralResult += $decoder[13]}
            XV {$numeralResult += $decoder[14]}
            XVI {$numeralResult += $decoder[15]}
            XVII {$numeralResult += $decoder[16]}
            XVIII {$numeralResult += $decoder[17]}
            XIX {$numeralResult += $decoder[18]}
            XX {$numeralResult += $decoder[19]}
            XXI {$numeralResult += $decoder[20]}
            XXII {$numeralResult += $decoder[21]}
            XXIII {$numeralResult += $decoder[22]}
            XXIV {$numeralResult += $decoder[23]}
            XXV {$numeralResult += $decoder[24]}
            XXVI {$numeralResult += $decoder[25]}
            Default {$numeralResult += $numeralPiece} 
        }
    }
    return $numeralResult;
}

function Alphabet-Translation ($codeArray, $decoder) {
    foreach ($codeChar in $codeArray) {
        $alphabetResult="";
        switch ($codeChar) {
            A {$alphabetResult += $decoder[0]}
            B {$alphabetResult += $decoder[1]}
            C {$alphabetResult += $decoder[2]}
            D {$alphabetResult += $decoder[3]}
            E {$alphabetResult += $decoder[4]}
            F {$alphabetResult += $decoder[5]}
            G {$alphabetResult += $decoder[6]}
            H {$alphabetResult += $decoder[7]}
            I {$alphabetResult += $decoder[8]}
            J {$alphabetResult += $decoder[9]}
            K {$alphabetResult += $decoder[10]}
            L {$alphabetResult += $decoder[11]}
            M {$alphabetResult += $decoder[12]}
            N {$alphabetResult += $decoder[13]}
            O {$alphabetResult += $decoder[14]}
            P {$alphabetResult += $decoder[15]}
            Q {$alphabetResult += $decoder[16]}
            R {$alphabetResult += $decoder[17]}
            S {$alphabetResult += $decoder[18]}
            T {$alphabetResult += $decoder[19]}
            U {$alphabetResult += $decoder[20]}
            V {$alphabetResult += $decoder[21]}
            W {$alphabetResult += $decoder[22]}
            X {$alphabetResult += $decoder[23]}
            Y {$alphabetResult += $decoder[24]}
            Z {$alphabetResult += $decoder[25]}
            Default {$alphabetResult += $codeChar} 
        }
    }
    return $alphabetResult
}

function Book-Selection () {
    Write-Host "Murdle Volume Options"
    Write-Host "1 = Murdle Volume 1"
    Write-Host "2 = Murdle Volume 2"
    Write-Host "3 = Murdle Volume 3"
    Write-Host "7 = The Case of the Seven Skulls"
    Write-Host "8 = The School of Mystery"
    $selectBook = Read-Host -Prompt "Enter the number cooresponding with the Murdle Volume you are using."
    Switch ($selectBook) {
        1 {
            $decoder = "Z","Y","X","W","V","U","T","S","R","Q","P","O","N","M","L","K","J","I","H","G","F","E","D","C","B","A"
        }
        #2 {$decoder = "Z","Y","X","W","V","U","T","S","R","Q","P","O","N","M","L","K","J","I","H","G","F","E","D","C","B","A"}
        #3 {$decoder = "Z","Y","X","W","V","U","T","S","R","Q","P","O","N","M","L","K","J","I","H","G","F","E","D","C","B","A"}
        #4 {$decoder = "Z","Y","X","W","V","U","T","S","R","Q","P","O","N","M","L","K","J","I","H","G","F","E","D","C","B","A"}
        8 {
            $numeralsDecoder = "A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"
            $userNumerals = Numerals-Prep
            $result = Numerals-Translation($userNumerals, $numeralsDecoder)
            Write-Host $result;
        }
        Default {
            Write-Host "The number you entered does not appear to match an available option at this time.";
            Write-Host "Please manually enter the code translation line. This will be the line opposite the regular ABCD line.";
            $decoder = Custom-Decoder;
        }
    }
}

######################################################
# Preset Variables
######################################################
$result="";

######################################################
# Main Script
######################################################
# Take in a code from the user and make it into an array.
Write-Host "1 = Next Letter Code"
Write-Host "2 = Murdle Book Code"
Write-Host "3 = Other"
$decoderSelection = Read-Host -Prompt "Enter the number corresponding with what kind of cipher you are using.";

switch ($decoderSelection) {
    1 {
        # This only works if it is a Next Letter Code.
        $decoder = "B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z","A";
        $codeArray = Simple-Prep
        $result = Alphabet-Translation ($codeArray, $decoder)
        Write-Host $result;
    }
    2 {
        # Allows user to select one of the books I have set up here.
        $decoder = Book-Selection;
        Write-Host $result;
    }
    3 {
        # Take in new decoding string.
        $decoder = Custom-Decoder;
        $codeArray = Simple-Prep
        $result = Alphabet-Translation ($codeArray, $decoder)
        Write-Host $result;
    }
    Default {
        Write-Host "The option you entered doesn't correspond to an available option. You'll need to manually enter the code translation line."
        $decoder = Custom-Decoder;
        Simple-Translate
        Write-Host $result;
    }
}
