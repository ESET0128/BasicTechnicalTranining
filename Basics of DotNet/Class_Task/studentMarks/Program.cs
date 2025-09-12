namespace studentMarks
{
    internal class Program
    {
        class StudentMarks
        {
            // taking student marks input
            static int[] GetSubjectMarks(string studentName)
            {
                int[] subjectMarks = new int[5];

                Console.WriteLine($"\nEnter marks for {studentName}:");
                for (int i = 0; i < subjectMarks.Length; i++)
                {
                    Console.Write($"  Subject {i + 1}: ");
                    subjectMarks[i] = Convert.ToInt32(Console.ReadLine());
                }

                return subjectMarks;
            }

            // calculate total marks
            static int CalculateTotal(int[] subjectMarks)
            {
                int total = 0;
                foreach (int mark in subjectMarks)
                {
                    total += mark;
                }
                return total;
            }

            // calculate average marks
            static double CalculateAverage(int totalMarks, int numberOfSubjects)
            {
                return (double)totalMarks / numberOfSubjects;
            }

            // To check pass/fail (fail if marks < 40)
            static bool IsPass(int[] subjectMarks)
            {
                foreach (int mark in subjectMarks)
                {
                    if (mark < 40)
                        return false;
                }
                return true;
            }

            // display result for a student
            static void DisplayResult(string studentName, int[] subjectMarks)
            {
                int totalMarks = CalculateTotal(subjectMarks);
                double averageMarks = CalculateAverage(totalMarks, subjectMarks.Length);
                bool passStatus = IsPass(subjectMarks);

                Console.WriteLine($"\nResult for {studentName}:");
                Console.WriteLine($"  Total Marks   = {totalMarks}");
                Console.WriteLine($"  Average Marks = {averageMarks:F2}");
                Console.WriteLine($"  Status        = {(passStatus ? "PASS" : "FAIL")}");
            }
            static void Main(string[] args)
            {
                Console.Write("Enter number of students: ");
                int numberOfStudents = Convert.ToInt32(Console.ReadLine());

                for (int i = 1; i <= numberOfStudents; i++)
                {
                    string studentName = $"Student {i}";
                    int[] subjectMarks = GetSubjectMarks(studentName);
                    DisplayResult(studentName, subjectMarks);
                }

                Console.WriteLine("\nProgram finished successfully.");
            }
        }
    }

}
