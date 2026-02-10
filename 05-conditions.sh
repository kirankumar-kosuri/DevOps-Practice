# #!/bin/bash
# NUMBER=$1
# if [ $NUMBER -lt 10 ]; then
#     echo "Given Number $NUMBER is Less than 10"
# elif [ $NUMBER -gt 10 ]; then
#     echo "Given Number $NUMBER is Greater than 10"
# else
#     echo "Given Number $NUMBER is Equal to 10"
# fi 


#!/bin/bash
echo "PLEASE ENTER THE NUMBER"
if [ $(($NUMBER % 2 )) -ne 0 ]; then
    echo "Given Number $NUMBER is EVEN"
else
    echo "Given Number $NUMBER is ODD"
fi