#!/bin/bash


validate_number() {
    if [[ $1 =~ ^\+251[0-9]{9}$ || $1 =~ ^09[0-9]{8}$ ]]; then
        return 0
    else
        return 1
    fi
}

while true
do
  echo "----------------------"
  echo "Dial *999#"
  echo "1. Voice"
  echo "2. SMS"
  echo "3. Internet"
  echo "0. Exit"
  echo "----------------------"

  read main

  case $main in

  # ================= VOICE =================
  1)
    echo "1. For Me"
    echo "2. Gift"
    echo "0. Back"
    read voiceType

    case $voiceType in
      1|2)

        # Gift Number Input
        if [ "$voiceType" = "2" ]; then
          read -p "Enter receiver number: " number

          if validate_number "$number"; then
            echo "Valid number: $number"
          else
            echo "Invalid phone number!"
            continue
          fi
        fi

        echo "Select Voice Package"
        echo "1. 10 Birr - 15 min"
        echo "2. 20 Birr - 35 min"
        echo "0. Back"
        read vpack

        case $vpack in
          1)
            echo "You selected 10 Birr Voice"
            echo "1. Confirm"
            echo "0. Cancel"
            read confirm

            if [ "$confirm" = "1" ]; then
              echo "Processing..."
              sleep 2
              echo "Success!"
            else
              echo "Cancelled"
            fi
            ;;
          2)
            echo "You selected 20 Birr Voice"
            echo "1. Confirm"
            echo "0. Cancel"
            read confirm

            if [ "$confirm" = "1" ]; then
              echo "Processing..."
              sleep 2
              echo "Success!"
            else
              echo "Cancelled"
            fi
            ;;
          0)
            echo "Returning..."
            ;;
          *)
            echo "Invalid"
            ;;
        esac
        ;;
      0)
        echo "Back..."
        ;;
      *)
        echo "Invalid"
        ;;
    esac
    ;;

  # ================= SMS =================
  2)
    echo "1. For Me"
    echo "2. Gift"
    echo "0. Back"
    read smsType

    case $smsType in
      1|2)

        # Gift Number Input
        if [ "$smsType" = "2" ]; then
          read -p "Enter receiver number: " number

          if validate_number "$number"; then
            echo "Valid number: $number"
          else
            echo "Invalid phone number!"
            continue
          fi
        fi

        echo "Select SMS Package"
        echo "1. 5 Birr - 50 SMS"
        echo "2. 10 Birr - 120 SMS"
        echo "0. Back"
        read spack

        case $spack in
          1)
            echo "You selected 50 SMS"
            echo "1. Confirm"
            echo "0. Cancel"
            read confirm

            if [ "$confirm" = "1" ]; then
              echo "Processing..."
              sleep 2
              echo "Success!"
            else
              echo "Cancelled"
            fi
            ;;
          2)
            echo "You selected 120 SMS"
            echo "1. Confirm"
            echo "0. Cancel"
            read confirm

            if [ "$confirm" = "1" ]; then
              echo "Processing..."
              sleep 2
              echo "Success!"
            else
              echo "Cancelled"
            fi
            ;;
          0)
            echo "Returning..."
            ;;
          *)
            echo "Invalid"
            ;;
        esac
        ;;
      0)
        echo "Back..."
        ;;
      *)
        echo "Invalid"
        ;;
    esac
    ;;

  # ================= INTERNET =================
  3)
    echo "1. For Me"
    echo "2. Gift"
    echo "0. Back"
    read netType

    case $netType in
      1|2)

        # Gift Number Input
        if [ "$netType" = "2" ]; then
          read -p "Enter receiver number: " number

          if validate_number "$number"; then
            echo "Valid number: $number"
          else
            echo "Invalid phone number!"
            continue
          fi
        fi

        echo "Select Internet Package"
        echo "1. 100MB - 10 Birr"
        echo "2. 500MB - 25 Birr"
        echo "0. Back"
        read ipack

        case $ipack in
          1)
            echo "You selected 100MB"
            echo "1. Confirm"
            echo "0. Cancel"
            read confirm

            if [ "$confirm" = "1" ]; then
              echo "Processing..."
              sleep 2
              echo "Success!"
            else
              echo "Cancelled"
            fi
            ;;
          2)
            echo "You selected 500MB"
            echo "1. Confirm"
            echo "0. Cancel"
            read confirm

            if [ "$confirm" = "1" ]; then
              echo "Processing..."
              sleep 2
              echo "Success!"
            else
              echo "Cancelled"
            fi
            ;;
          0)
            echo "Returning..."
            ;;
          *)
            echo "Invalid"
            ;;
        esac
        ;;
      0)
        echo "Back..."
        ;;
      *)
        echo "Invalid"
        ;;
    esac
    ;;

  # ================= EXIT =================
  0)
    echo "Goodbye!"
    break
    ;;

  *)
    echo "Invalid option"
    ;;

  esac

done
