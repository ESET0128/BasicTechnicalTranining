namespace BankingApp
{
    internal class Program
    {
        static int CreateAccount()
        {
            Console.WriteLine("Enter new account number for customer:");
            int accountNumber= Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("Congratulations !! Your Account created. Your account number is : " + accountNumber);

            return accountNumber;
        }

        static (int accountNumber, int TotalAmount) DepositMoney(int accountNumber)
        {
            int TotalAmount;
            Console.WriteLine("Enter Deposit Amount");

            int InputAmount = Convert.ToInt32(Console.ReadLine());
            int AccountNum = accountNumber;
            TotalAmount = TotalAmount + InputAmount;
            Console.WriteLine("Amount:" + InputAmount+ "deposited to Account Number:"+AccountNum);
            

            return TotalAmount;
            
        }
        static void Main(string[] args)
        {
            int TotalAmount, AccountNumber;
            while (true)
            {
                Console.WriteLine("1:Create New Account");
                Console.WriteLine("2:Deposit Money");
                Console.WriteLine("3:Withdraw Money");
                Console.WriteLine("4:Display Account Detail");
                Console.WriteLine("5:Exit");
                Console.WriteLine("\n Enter your choice");
                int choice = Convert.ToInt32(Console.ReadLine());

                if (choice == 1)
                {
                    AccountNumber = CreateAccount();
                }

                if (choice == 2)
                {
                    TotalAmount = DepositMoney(767);
                    Console.WriteLine("Total Amount:" + TotalAmount + "deposited to Account Number:" + AccountNumber);
                }
            }




        }
    }
}
