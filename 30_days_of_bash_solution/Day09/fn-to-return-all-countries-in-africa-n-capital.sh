#!/bin/bash

# Declare an associative array
declare -A countries

# Populate the array with key-value pairs (Country: Capital)
countries=(
    ["Algeria"]="Algiers"
    ["Angola"]="Luanda"
    ["Benin"]="Porto-Novo"
    ["Botswana"]="Gaborone"
    ["Burkina Faso"]="Ouagadougou"
    ["Burundi"]="Gitega"
    ["Cabo Verde"]="Praia"
    ["Cameroon"]="Yaoundé"
    ["Central African Republic"]="Bangui"
    ["Chad"]="N'Djamena"
    ["Comoros"]="Moroni"
    ["Congo"]="Brazzaville"
    ["Djibouti"]="Djibouti"
    ["Egypt"]="Cairo"
    ["Equatorial Guinea"]="Malabo"
    ["Eritrea"]="Asmara"
    ["Eswatini"]="Mbabane"
    ["Ethiopia"]="Addis Ababa"
    ["Gabon"]="Libreville"
    ["Gambia"]="Banjul"
    ["Ghana"]="Accra"
    ["Guinea"]="Conakry"
    ["Guinea-Bissau"]="Bissau"
    ["Ivory Coast"]="Yamoussoukro"
    ["Kenya"]="Nairobi"
    ["Lesotho"]="Maseru"
    ["Liberia"]="Monrovia"
    ["Libya"]="Tripoli"
    ["Madagascar"]="Antananarivo"
    ["Malawi"]="Lilongwe"
    ["Mali"]="Bamako"
    ["Mauritania"]="Nouakchott"
    ["Mauritius"]="Port Louis"
    ["Morocco"]="Rabat"
    ["Mozambique"]="Maputo"
    ["Namibia"]="Windhoek"
    ["Niger"]="Niamey"
    ["Nigeria"]="Abuja"
    ["Rwanda"]="Kigali"
    ["Sao Tome and Principe"]="São Tomé"
    ["Senegal"]="Dakar"
    ["Seychelles"]="Victoria"
    ["Sierra Leone"]="Freetown"
    ["Somalia"]="Mogadishu"
    ["South Africa"]="Pretoria"
    ["South Sudan"]="Juba"
    ["Sudan"]="Khartoum"
    ["Tanzania"]="Dodoma"
    ["Togo"]="Lomé"
    ["Tunisia"]="Tunis"
    ["Uganda"]="Kampala"
    ["Zambia"]="Lusaka"
    ["Zimbabwe"]="Harare"
)

# Function to display all countries and their capitals
display_all_countries() {
    echo "Countries and their capitals:"
    for country in "${!countries[@]}"; do
        echo "$country: ${countries[$country]}"
    done
}

# Function to retrieve the capital of a specific country
get_capital() {
    local country=$1
    capital=${countries[$country]}

    if [[ -n "$capital" ]]; then
        echo "The capital of $country is $capital."
    else
        echo "Country '$country' not found in the list."
    fi
}

# Main script logic
echo "Choose an option:"
echo "1. Display all countries and their capitals"
echo "2. Find the capital of a specific country"

read -p "Enter your choice (1 or 2): " choice

if [[ $choice -eq 1 ]]; then
    display_all_countries
elif [[ $choice -eq 2 ]]; then
    read -p "Enter the name of the country: " country_name
    get_capital "$country_name"
else
    echo "Invalid choice"
fi
