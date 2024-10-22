#Array Initialization

$products = @{

    "0001" = "Ketchup";
    "0002" = "Mustard";
    "0003" = "Mayonaise";
    "0004" = "Relish";
    "0005" = "BBQ Sauce";

}

$prices = @{

    "0001" = "1.99";
    "0002" = "1.49";
    "0003" = "2.99";
    "0004" = "2.49";
    "0005" = "2.79";

}

# Prompt for item
function getItemNumber{
    $item_num = Read-Host "What Item # do you need? (0001-0005)"
    if($null -eq $item_num){
        getItemNumber
    }
    else{
        return $item_num
    }
}

function getItemPrice($item_num){
    $price = $prices[$item_num]
    return $price
}

# Call Item Number Function
$item_num = getItemNumber
# Get Item desc.
$item = $products[$item_num]


# Display Item Inquired
Write-Host "Ah yes, $item"

# Display price if wanted
$p = Read-Host "Would you like to know the price? (Y or N)"
if ($p -eq "Y"){
    $price = getItemPrice($item_num)
    Write-Host "$item is "$"$price"
    }
else{
    Write-Host "Thanks for visiting..."
}
