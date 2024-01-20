PS3="Select a fruit: "
select fruit in Apple Orange Banana Exit
do
  case $fruit in
    Apple) echo "You selected Apple";;
    Orange) echo "You selected Orange";;
    Banana) echo "You selected Banana";;
    Exit) break;;
    *) echo "Invalid option";;
  esac
done
