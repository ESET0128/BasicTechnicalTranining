namespace BankingApp
{
    internal class Program
    {
        
        static string accountHolder = "";
        static int accountNumber = 0;
        static double balance = 0;


        static void CreateAccount()
        {
            Console.Write("Enter Account Holder Name: ");
            accountHolder = Console.ReadLine();

            Console.Write("Enter Account Number: ");
            accountNumber = Convert.ToInt32(Console.ReadLine());

            balance = 0;
            Console.WriteLine("Account Created Successfully!\n");
        }

        static void Deposit()
        {
            Console.Write("Enter Amount to Deposit: ");
            double amount = Convert.ToDouble(Console.ReadLine());

            if (amount > 0)
            {
                balance += amount;
                Console.WriteLine($"{amount} Deposited Successfully!\n");
            }
            else
            {
                Console.WriteLine("Invalid Deposit Amount.\n");
            }
        }

        static void Withdraw()
        {
            Console.Write("Enter Amount to Withdraw: ");
            double amount = Convert.ToDouble(Console.ReadLine());

            if (amount > 0 && amount <= balance)
            {
                balance -= amount;
                Console.WriteLine($"{amount} Withdrawn Successfully!\n");
            }
            else
            {
                Console.WriteLine("Insufficient Balance or Invalid Amount.\n");
            }
        }

        static void DisplayDetails()
        {
            Console.WriteLine("\nAccount Details");
            Console.WriteLine($"Account Holder : {accountHolder}");
            Console.WriteLine($"Account Number : {accountNumber}");
            Console.WriteLine($"Balance        : {balance}\n");
        }

        static void Main(string[] args)
        {
            int choice;
            do
            {
                Console.WriteLine("Select Your Choice from These");
                Console.WriteLine("1. Create New Account");
                Console.WriteLine("2. Deposit Money");
                Console.WriteLine("3. Withdraw Money");
                Console.WriteLine("4. Display Account Detail");
                Console.WriteLine("5. Exit");
                Console.Write("Enter your choice: ");

                choice = Convert.ToInt32(Console.ReadLine());

                switch (choice)
                {
                    case 1:
                        CreateAccount();
                        break;
                    case 2:
                        Deposit();
                        break;
                    case 3:
                        Withdraw();
                        break;
                    case 4:
                        DisplayDetails();
                        break;
                    case 5:
                        Console.WriteLine("Exiting...");
                        break;
                    default:
                        Console.WriteLine("Invalid Choice. Please Try Again.\n");
                        break;
                }
            } while (choice != 5);
        }
    }
}
