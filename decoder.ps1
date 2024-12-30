# Decoder Code
# Murdle Volume 1 Examples
## Example 1: TVMVIZO XLUUVV WRW MLG SZEV GSV XILDYZI
## Example 2: ZTVMG RMP SZW Z NVWRFN-DVRTSG DVZKLM
# Murdle Volume 2 Examples
## Example 1: 
# Murdle: The School of Mystery Exmples
## Example 1: I II XV XV XI XXI XIX V IV XX XV II V

######################################################
# FUNCTIONS
######################################################
function Custom-Decoder () {
    $decoderEntry = Read-Host -Prompt "Enter the translation line for your Murdle. This is the line that equates to what your entry would convert to. Must be 26 characters to work properly.";
    $customDecoder = $decoderEntry.ToCharArray();
    return $customDecoder
}

# Used when it is letter to letter translation of 26 characters. Typically used with Alphabet-Translation function.
function Simple-Prep () {
    $scrambledPhrase = Read-Host -Prompt "Enter the code from your Murdle puzzle.";
    $scrambledPhraseUpper = $scrambledPhrase.ToUpper();
    $preparedCodeArray = $scrambledPhraseUpper.ToCharArray();
    return $preparedCodeArray
}

function Numerals-Prep () {
    Write-Host "YOU MUST group the numerals as shown in your puzzle for accurate translation, including spaces."
    Write-Host "Use the letter i, v, and x."
    Write-Host "Upper or lower case is not important."
    $scrambledNumerals = Read-Host -Prompt "Enter the numerals from your Murdle puzzle.";
    $uppercaseNumerals = $scrambledNumerals.ToUpper();
    $splitOption =  [System.StringSplitOptions]::RemoveEmptyEntries;
    $preppedNumerals = $uppercaseNumerals.Split();
    return $preppedNumerals
}

# Primarily used for Murdle The School of Mystery
function Numerals-Translation () {
    param (
        [Array] $NumeralsArray,
        [Array] $Decoder
    )

    $numeralResult ="";
    foreach ($numeralPiece in $NumeralsArray) {
        switch ($numeralPiece) {
            "I" {$numeralResult += $Decoder[0]}
            "II" {$numeralResult += $Decoder[1]}
            "III" {$numeralResult += $Decoder[2]}
            "IV" {$numeralResult += $Decoder[3]}
            "V" {$numeralResult += $Decoder[4]}
            "VI" {$numeralResult += $Decoder[5]}
            "VII" {$numeralResult += $Decoder[6]}
            "VIII" {$numeralResult += $Decoder[7]}
            "IX" {$numeralResult += $Decoder[8]}
            "X" {$numeralResult += $Decoder[9]}
            "XI" {$numeralResult += $Decoder[10]}
            "XII" {$numeralResult += $Decoder[11]}
            "XIII" {$numeralResult += $Decoder[12]}
            "XIV" {$numeralResult += $Decoder[13]}
            "XV" {$numeralResult += $Decoder[14]}
            "XVI" {$numeralResult += $Decoder[15]}
            "XVII" {$numeralResult += $Decoder[16]}
            "XVIII" {$numeralResult += $Decoder[17]}
            "XIX" {$numeralResult += $Decoder[18]}
            "XX" {$numeralResult += $Decoder[19]}
            "XXI" {$numeralResult += $Decoder[20]}
            "XXII" {$numeralResult += $Decoder[21]}
            "XXIII" {$numeralResult += $Decoder[22]}
            "XXIV" {$numeralResult += $Decoder[23]}
            "XXV" {$numeralResult += $Decoder[24]}
            "XXVI" {$numeralResult += $Decoder[25]}
            Default {$numeralResult += $numeralPiece}
        }
    }
    return $numeralResult;
}

function Alphabet-Translation () {
    param (
        [Array] $CodeArray,
        [Array] $Decoder
    )
    foreach ($CodeChar in $CodeArray) {
        $alphabetResult="";
        switch ($CodeChar) {
            A {$alphabetResult += $Decoder[0]}
            B {$alphabetResult += $Decoder[1]}
            C {$alphabetResult += $Decoder[2]}
            D {$alphabetResult += $Decoder[3]}
            E {$alphabetResult += $Decoder[4]}
            F {$alphabetResult += $Decoder[5]}
            G {$alphabetResult += $Decoder[6]}
            H {$alphabetResult += $Decoder[7]}
            I {$alphabetResult += $Decoder[8]}
            J {$alphabetResult += $Decoder[9]}
            K {$alphabetResult += $Decoder[10]}
            L {$alphabetResult += $Decoder[11]}
            M {$alphabetResult += $Decoder[12]}
            N {$alphabetResult += $Decoder[13]}
            O {$alphabetResult += $Decoder[14]}
            P {$alphabetResult += $Decoder[15]}
            Q {$alphabetResult += $Decoder[16]}
            R {$alphabetResult += $Decoder[17]}
            S {$alphabetResult += $Decoder[18]}
            T {$alphabetResult += $Decoder[19]}
            U {$alphabetResult += $Decoder[20]}
            V {$alphabetResult += $Decoder[21]}
            W {$alphabetResult += $Decoder[22]}
            X {$alphabetResult += $Decoder[23]}
            Y {$alphabetResult += $Decoder[24]}
            Z {$alphabetResult += $Decoder[25]}
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
            $decoder = "Z","Y","X","W","V","U","T","S","R","Q","P","O","N","M","L","K","J","I","H","G","F","E","D","C","B","A";
            $userCode = Simple-Prep
            $result = Alphabet-Translation($userCode, $decoder)
            Write-Host $result
        }
        2 {
            $decoder = "Z","Y","X","W","V","U","T","S","R","Q","P","O","N","M","L","K","J","I","H","G","F","E","D","C","B","A";
            Write-Host "This book has not yet been added to this script."
            break
        }
        3 {
            $decoder = "Z","Y","X","W","V","U","T","S","R","Q","P","O","N","M","L","K","J","I","H","G","F","E","D","C","B","A";
            Write-Host "This book has not yet been added to this script."
            break
        }
        4 {
            $decoder = "Z","Y","X","W","V","U","T","S","R","Q","P","O","N","M","L","K","J","I","H","G","F","E","D","C","B","A";
            Write-Host "This book has not yet been added to this script."
            break
        }
        8 {
            $numeralsDecoder = "A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z";
            $userNumerals = Numerals-Prep;
            $result = Numerals-Translation($userNumerals, $numeralsDecoder);
            Write-Host $result;
        }
        Default {
            Write-Host "The number you entered does not appear to match an available option at this time.";
            Write-Host "Please manually enter the code translation line. This will typically be the line opposite the regular ABCD line.";
            $decoder = Custom-Decoder;
            $userCode = Simple-Prep;
            $result = Alphabet-Translation($userCode, $decoder);
            Write-Host $result;
        }
    }
}

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
        $nextLetterScript = $PSScriptRoot+"\nextLetter.ps1"
        . $nextLetterScript
    }
    2 {
        # Allows user to select one of the books I have set up here.;
        $decoder2 = Book-Selection;
        Write-Host $result;
    }
    3 {
        # Take in new decoding string.
        $decoder3 = Custom-Decoder;
        $codeArray3 = Simple-Prep;
        $result = Alphabet-Translation ($codeArray3, $decoder3);
        Write-Host $result;
    }
    Default {
        Write-Host "The option you entered doesn't correspond to an available option. You'll need to manually enter the code translation line."
        $decoder = Custom-Decoder;
        Simple-Translate;
        Write-Host $result;
    }
}
