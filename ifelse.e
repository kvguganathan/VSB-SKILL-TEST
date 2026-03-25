# Initializing starting balance and a dummy PIN
balance = 1000.0
correct_pin = 1234

print("--- Welcome to the MECH Bank ATM ---")
user_pin = int(input("Please enter your 4-digit PIN: "))

# Outer If-Else for Security
if user_pin == correct_pin:
    print("\n1. Check Balance")
    print("2. Deposit Money")
    print("3. Withdraw Money")
    
    choice = int(input("\nChoose an option (1-3): "))

    # Inner If-Else chain for Menu Logic
    if choice == 1:
        print(f"Your current balance is: ${balance}")
        
    elif choice == 2:
        amount = float(input("Enter deposit amount: "))
        balance += amount
        print(f"Successfully deposited. New balance: ${balance}")
        
    elif choice == 3:
        amount = float(input("Enter withdrawal amount: "))
        
        # Nested If-Else to check for sufficient funds
        if amount <= balance:
            balance -= amount
            print(f"Please take your cash. Remaining balance: ${balance}")
        else:
            print("Error: Insufficient funds!")
            
    else:
        print("Invalid choice. Please restart.")

else:
    print("Incorrect PIN. Access Denied.")
