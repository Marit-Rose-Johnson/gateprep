import 'dart:async';
import 'package:flutter/material.dart';

void main() {
  runApp(QuizApp());
}

class QuizApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.orangeAccent),
        textTheme: TextTheme(
          bodyLarge: TextStyle(color: Colors.white),
          bodyMedium: TextStyle(color: Colors.white),
          headlineMedium: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      home: TestSelectionPage(),
    );
  }
}

class TestSelectionPage extends StatelessWidget {
  final List<Map<String, Object>> tests = [
    {
      'name': 'GATE 2024',
      'questions': [
        {
          'question': "If ‘→’ denotes increasing order of intensity, then the meaning of the words [dry → arid → parched] is analogous to [diet → fast → ________ ]. Which one of the given options is appropriate to fill the blank?",
          'options': ['starve', 'reject', 'feast', 'deny'],
          'answer': 'starve',
        },
        {
          'question': "If two distinct non-zero real variables 𝑥 and 𝑦 are such that (𝑥 + 𝑦) is proportional to (𝑥 − 𝑦) then the value of 𝑥/𝑦 is?",
          'options': ['depends on 𝑥𝑦', 'depends only on 𝑥 and not on 𝑦', 'depends only on 𝑦 and not on 𝑥', 'is a constant'],
          'answer': 'is a constant',
        },
        {
          'question': "Consider the following sample of numbers: 9, 18, 11, 14, 15, 17, 10, 69, 11, 13. The median of the sample is?",
          'options': ['13.5', '14', '11', '18.7'],
          'answer': '13.5',
        },
        {
          'question': "The number of coins of ₹1, ₹5, and ₹10 denominations that a person has are in the ratio 5:3:13. Of the total amount, the percentage of money in ₹5 coins is?",
          'options': ['21%', '14 2/7%', '10%', '30%'],
          'answer': '10%',
        },
        {
          'question': "For positive non-zero real variables 𝑝 and 𝑞, if log (𝑝^2 + 𝑞^2) = log 𝑝 + log 𝑞 + 2 log 3, then, the value of (𝑝^4+𝑞^4)/𝑝^2*𝑞^2 is?",
          'options': ['79', '81', '9', '83'],
          'answer': '79',
        },
        {
          'question': "In the given text, the blanks are numbered (i)−(iv). Select the best match for all the blanks. Steve was advised to keep his head (i) before heading (ii) to bat; for, while he had a head (iii) batting, he could only do so with a cool head (iv) his shoulders.",
          'options': ['(i) down (ii) down (iii) on (iv) for', '(i) on (ii) down (iii) for (iv) on', '(i) down (ii) out (iii) for (iv) on', '(i) on (ii) out (iii) on (iv) for'],
          'answer': '(i) down (ii) out (iii) for (iv) on',
        },
        {
          'question': "A rectangular paper sheet of dimensions 54 cm × 4 cm is taken. The two longer edges of the sheet are joined together to create a cylindrical tube. A cube whose surface area is equal to the area of the sheet is also taken. Then, the ratio of the volume of the cylindrical tube to the volume of the cube is?",
          'options': ['1/π', '2/π', '3/π', '4/π'],
          'answer': '1/π',
        },
        {
          'question': "The pie chart presents the percentage contribution of different macronutrients to a typical 2,000 kcal diet of a person. Macronutrient energy contribution: Carbohydrates-35%, Proteins-20%, Unsaturated fat-20%, Saturated fat-20%, Trans fat-5%. The typical energy density (kcal/g) of these macronutrients is given in the table. Macronutrient -Energy density (kcal/g): Carbohydrates- 4, Proteins- 4, Unsaturated fat- 9, Saturated fat- 9, Trans fat- 9. The total fat (all three types), in grams, this person consumes is?",
          'options': ['44.4', '77.8', '100', '3,600'],
          'answer': '100',
        },
        {
          'question': "A rectangular paper of 20 cm × 8 cm is folded 3 times. Each fold is made along the line of symmetry, which is perpendicular to its long edge. The perimeter of the final folded sheet (in cm) is?",
          'options': ['18', '24', '20', '21'],
          'answer': '18',
        },
        {
          'question': "The least number of squares to be added in the figure to make AB a line of symmetry is\n_\n| |\nA-------------B\n|_|_ |_|_ \n |_| |_|",
          'options': ['6', '4', '5', '7'],
          'answer': '6',
        },
        {
          'question': "Let 𝑓: ℝ → ℝ be a function such that 𝑓(𝑥) = max{𝑥, 𝑥^3}, 𝑥 ∈ ℝ , where ℝ is the set of all real numbers. The set of all points where 𝑓(𝑥) is NOT differentiable is?",
          'options': ['{−1, 1, 2}', '{−2, −1, 1}', '{0, 1}', '{−1, 0, 1}'],
          'answer': '{−1, 0, 1}',
        },
        {
          'question': "The product of all eigenvalues of the matrix [ 1 2 3 4 5 6 7 8 9 ] is?",
          'options': ['−1', '0', '1', '2'],
          'answer': '0',
        },
        {
          'question': "Consider a system that uses 5 bits for representing signed integers in 2’s complement format. In this system, two integers 𝐴 and 𝐵 are represented as 𝐴=01010 and 𝐵=11010. Which one of the following operations will result in either an arithmetic overflow or an arithmetic underflow?",
          'options': ['𝐴 + 𝐵', '𝐴 − 𝐵', '𝐵 − 𝐴', '2 ∗ 𝐵'],
          'answer': '𝐴 − 𝐵',
        },
        {
          'question': "Consider a permutation sampled uniformly at random from the set of all permutations of {1, 2, 3, ⋯ , 𝑛} for some 𝑛 ≥ 4. Let 𝑋 be the event that 1 occurs before 2 in the permutation, and 𝑌 the event that 3 occurs before 4. Which one of the following statements is TRUE?",
          'options': ['The events 𝑋 and 𝑌 are mutually exclusive', 'The events 𝑋 and 𝑌 are independent', 'Either event 𝑋 or 𝑌 must occur', 'Event 𝑋 is more likely than event Y'],
          'answer': 'The events 𝑋 and 𝑌 are independent',
        },
        {
          'question': "Which one of the following statements is FALSE?",
          'options': ['In the cycle stealing mode of DMA, one word of data is transferred between an I/O device and main memory in a stolen cycle', 'For bulk data transfer, the burst mode of DMA has a higher throughput than the cycle stealing mode', 'Programmed I/O mechanism has a better CPU utilization than the interrupt driven I/O mechanism', 'The CPU can start executing an interrupt service routine faster with vectored interrupts than with non-vectored interrupts'],
          'answer': 'Programmed I/O mechanism has a better CPU utilization than the interrupt driven I/O mechanism',
        },
      ]
    },
    {
      'name': 'Gate 2023', // Fixing missing 'name' and questions entry
      'questions': [
        {
          'question': 'What would be the minterm expansion of the following: f(P, Q, R) = PQ + QR\' + PR\'',
          'options': [
            'm0 + m1 + m3 + m5',
            'm2 + m4 + m6 + m7',
            'm2 + m3 + m4 + m5',
            'm0 + m1 + m6 + m7'
          ],
          'answer': 'm2 + m4 + m6 + m7',
        },
        {
          'question': 'What is the hexadecimal representation of 6578?',
          'options': ['D71', '32F', '1AF', 'D78'],
          'answer': '1AF',
          'correctOptionIndex': 2
        },
        {
          'question': 'Let us consider an array multiplier used for the multiplication of two n bit numbers. In case every gate in the circuit faces a unit delay, then the total delay of this multiplier would be:',
          'options': ['Θ(n)', 'Θ(1)', 'Θ(n^2)', 'Θ(log n)'],
          'answer': 'Θ(n)',
          'correctOptionIndex': 0
        },
        {
          'question': 'What would be the total prime implicants of the following function: f(w, x, y, z) = Σ(0, 2, 4, 5, 6, 10)',
          'options': ['5', '4', '3', '2'],
          'answer': '3',
          'correctOptionIndex': 2
        },
        {
          'question': 'How many pulses do we need if we want to change the contents of any given 8-bit up counter from the bit 10101100 to bit 00100111 (the rightmost bit here is the LSB)?',
          'options': ['123', '124', '133', '134'],
          'answer': '123',
          'correctOptionIndex': 0
        },
        {
          'question': 'When we add a two’s complement, 4-bit, binary numbers 1101 and 0100, it would result in:',
          'options': [
            '1001 and no overflow',
            '0001 and an overflow',
            '1001 and an overflow',
            '0001 and no overflow'
          ],
          'answer': '0001 and no overflow',
          'correctOptionIndex': 3
        },
        {
          'question': 'If we want to put an 8085 microprocessor in a wait state, then we have:',
          'options': [
            'to raise the HOLD input',
            'to raise the READY input',
            'to lower the HOLD input',
            'to lower the READY input'
          ],
          'answer': 'to lower the READY input',
          'correctOptionIndex': 3
        },
        {
          'question': 'What would be the 2’s complement representation (in hexadecimal) of (−539)10?',
          'options': ['9E7', 'DE5', 'DBC', 'ABE'],
          'answer': 'DE5',
          'correctOptionIndex': 1
        },
        {
          'question': 'What would be the 2’s complement representation of the -15 decimal value?',
          'options': ['10001', '1111111', '1001', '1111'],
          'answer': '1111',
          'correctOptionIndex': 3
        },
        {
          'question': 'If in a base-x type of number system, 73x is equivalent to that of 54y in a base-y type of number system, then the possible values of both x and y would be:',
          'options': ['10, 12', '8, 16', '8, 11', '9, 13'],
          'answer': '8, 11',
          'correctOptionIndex': 2
        },
        {
          'question': 'In the Principle of locality, there is a justification of the use of:',
          'options': ['DMA', 'Cache memory', 'Threads', 'Interrupts'],
          'answer': 'Cache memory',
          'correctOptionIndex': 1
        },
        {
          'question': 'Which of these is NOT involved in the case of a memory write operation?',
          'options': ['Databus', 'MDR', 'MAR', 'PC'],
          'answer': 'PC',
          'correctOptionIndex': 3
        },
        {
          'question': 'Which of these is required when we want to establish the communication links between a CPU and its peripherals?',
          'options': [
            'Memory data register',
            'Memory address register',
            'Instruction register',
            'Index register'
          ],
          'answer': 'Memory data register',
          'correctOptionIndex': 0
        },
        {
          'question': 'A given 2 level memory consists of a 30 ns average access time. If the cache, as well as the memory access time here, is 20 ns and 150 ns, respectively, what would be the hit ratio?',
          'options': ['99%', '70%', '93%', '80%'],
          'answer': '93%',
          'correctOptionIndex': 2
        },
        {
          'question': 'If we double the cache line length and it reduces the miss rate to 3%, then by how much will the average memory access time be reduced?',
          'options': ['4.85 ns', '22.2 ns', '25.75 ns', '27.1 ns'],
          'answer': '27.1 ns',
          'correctOptionIndex': 3
        },
        {
          'question': 'The total number of digits that are required for the representation of a 126-bit binary number in its decimal form would be:',
          'options': ['46 bits', '42 bits', '36 bits', '32 bits'],
          'answer': '42 bits',
          'correctOptionIndex': 1
        },
        {
          'question': 'Which of these memories would have the lowest access time in a system?',
          'options': ['Main Memory', 'Magnetic Disk', 'Registers', 'Cache'],
          'answer': 'Registers',
          'correctOptionIndex': 2
        },
        {
          'question': 'Which of these refers to the minimization expression for the following: A + A’B + A’B’C + A’B’C’D',
          'options': ['A + B) (C + D)', 'A B C D', '1', 'A + B + C + D'],
          'answer': 'A + B + C + D',
          'correctOptionIndex': 3
        },
        {
          'question': 'What is the minimum time delay present between the initiations of two separate, independent memory operations known as?',
          'options': [
            'Cycle Time',
            'Latency Time',
            'Access Time',
            'Transfer Rate'
          ],
          'answer': 'Cycle time',
          'correctOptionIndex': 0
        },
        {
          'question': 'Which of these addressing modes is the most suitable for some high-level language statements?',
          'options': [
            'Indexed',
            'Auto-decrement',
            'Auto-increment',
            'Displacement'
          ],
          'answer': 'Auto-decrement',
          'correctOptionIndex': 1
        },
        {
          'question': 'Which of these types is not provided by C but is provided by C++?',
          'options': ['double', 'float', 'bool', 'int'],
          'answer': 'bool',
          'correctOptionIndex': 2
        },
        {
          'question': 'Which concept do we use for the implementation of late binding?',
          'options': [
            'Static Functions',
            'Constant Functions',
            'Operator Functions',
            'Virtual Functions'
          ],
          'answer': 'Virtual functions',
          'correctOptionIndex': 3
        },
        {
          'question': 'Which of these won’t return any value?',
          'options': ['void', 'null', 'free', 'empty'],
          'answer': 'void',
          'correctOptionIndex': 0
        },
        {
          'question': 'Which function do we use for checking if a character is a space or a tab?',
          'options': ['isdigit()', 'isblank()', 'isalnum()', 'isalpha()'],
          'answer': 'isblank()',
          'correctOptionIndex': 1
        },
        {
          'question': 'What would happen in case one uses a void in the passing of an argument?',
          'options': [
            'It would return any value',
            'It may not or may depend on a declared return type of any function. The return type of the function is different from the passed arguments',
            'It would return some value to the caller',
            'It would not return any value to the caller'
          ],
          'answer': 'It would not return any value to the caller',
          'correctOptionIndex': 3
        }
      ]
    },
    {
      'name': 'GATE 2022',
      'questions': [
        {
          "question": "The _________ is too high for it to be considered _________.",
          "options": ["fair / fare", "faer / fair", "fare / fare", "fare / fair"],
          "answer": "fare / fair",
        },
        {
          "question": "A function y(x) is defined in the interval [0, 1] on the x-axis as y(x) = 2 if 0 ≤ x < 1/3, 3 if 1/3 ≤ x < 3/4, and 1 if 3/4 ≤ x ≤ 1. Which one of the following is the area under the curve for the interval [0, 1] on the x-axis?",
          "options": ["5/6", "6/5", "13/6", "6/13"],
          "answer": "13/6",
          "correctOptionIndex": 2
        },
        {
          "question": "Let r be a root of the equation x^2 + 2x + 6 = 0. Then the value of the expression (r + 2)(r + 3)(r + 4)(r + 5) is:",
          "options": ["51", "-51", "126", "-126"],
          "answer": "-126",
          "correctOptionIndex": 3
        },
        {
          "question": "Given below are four statements. Statement 1: All students are inquisitive. Statement 2: Some students are inquisitive. Statement 3: No student is inquisitive. Statement 4: Some students are not inquisitive. From the given four statements, find the two statements that CANNOT BE TRUE simultaneously, assuming that there is at least one student in the class.",
          "options": ["Statement 1 and Statement 3", "Statement 1 and Statement 2", "Statement 2 and Statement 4", "Statement 3 and Statement 4"],
          "answer": "Statement 1 and Statement 3",
          "correctOptionIndex": 0
        },
        {
          "question": "Some people believe that 'what gets measured, improves.' Some others believe that 'what gets measured, gets gamed.' One possible reason for the difference in the beliefs is the work culture in organizations. In organizations with good work culture, metrics help improve outcomes. However, the same metrics are counterproductive in organizations with poor work culture. Which one of the following is the CORRECT logical inference based on the information in the above passage?",
          "options": ["Metrics are useful in organizations with poor work culture", "Metrics are useful in organizations with good work culture", "Metrics are always counterproductive in organizations with good work culture", "Metrics are never useful in organizations with good work culture"],
          "answer": "Metrics are useful in organizations with good work culture",
          "correctOptionIndex": 1
        },
        {
          "question": "In a recently conducted national entrance test, boys constituted 65% of those who appeared for the test. Girls constituted the remaining candidates and they accounted for 60% of the qualified candidates. Which one of the following is the correct logical inference based on the information provided in the above passage?",
          "options": ["Equal number of boys and girls qualified", "Equal number of boys and girls appeared for the test", "The number of boys who appeared for the test is less than the number of girls who appeared", "The number of boys who qualified the test is less than the number of girls who qualified"],
          "answer": "The number of boys who qualified the test is less than the number of girls who qualified",
          "correctOptionIndex": 3
        },
        {
          "question": "A box contains five balls of the same size and shape. Three of them are green-colored balls and two of them are orange-colored balls. Balls are drawn from the box one at a time. If a green ball is drawn, it is not replaced. If an orange ball is drawn, it is replaced with another orange ball. First ball is drawn. What is the probability of getting an orange ball in the next draw?",
          "options": ["1/2", "8/25", "19/50", "23/50"],
          "answer": "23/50",
          "correctOptionIndex": 3
        },
        {
          "question": "The corners and mid-points of the sides of a triangle are named using the distinct letters P, Q, R, S, T and U, but not necessarily in the same order. Consider the following statements: The line joining P and R is parallel to the line joining Q and S. P is placed on the side opposite to the corner T. S and U cannot be placed on the same side. Which one of the following statements is correct based on the above information?",
          "options": ["P cannot be placed at a corner", "S cannot be placed at a corner", "U cannot be placed at a mid-point", "R cannot be placed at a corner"],
          "answer": "S cannot be placed at a corner",
          "correctOptionIndex": 1
        },
        {
          "question": "Which one of the following statements is TRUE for all positive functions f(n)?",
          "options": ["f(n)^2 = O(f(n)) when f(n) is a polynomial", "f(n)^2 = o(f(n))", "f(n)^2 = O(f(n)) when f(n) is an exponential function", "f(n)^2 = Ω(f(n))"],
          "answer": "f(n)^2 = O(f(n)) when f(n) is a polynomial",
          "correctOptionIndex": 0
        },
        {
          "question": "Which one of the following statements is TRUE?",
          "options": ["The LALR(1) parser for a grammar G cannot have reduce-reduce conflict if the LR(1) parser for G does not have reduce-reduce conflict.", "Symbol table is accessed only during the lexical analysis phase.", "Data flow analysis is necessary for run-time memory management.", "LR(1) parsing is sufficient for deterministic context-free languages."],
          "answer": "LR(1) parsing is sufficient for deterministic context-free languages.",
          "correctOptionIndex": 3
        },
        {
          "question": "In a relational data model, which one of the following statements is TRUE?",
          "options": ["A relation with only two attributes is always in BCNF.", "If all attributes of a relation are prime attributes, then the relation is in BCNF.", "Every relation has at least one non-prime attribute.", "BCNF decompositions preserve functional dependencies."],
          "answer": "A relation with only two attributes is always in BCNF.",
          "correctOptionIndex": 0
        },
        {
          "question": "Which one of the following facilitates the transfer of bulk data from hard disk to main memory with the highest throughput?",
          "options": ["DMA based I/O transfer", "Interrupt driven I/O transfer", "Polling based I/O transfer", "Programmed I/O transfer"],
          "answer": "DMA based I/O transfer",
          "correctOptionIndex": 0
        },
        {
          "question": "Let R1 and R2 be two 4-bit registers that store numbers in 2’s complement form. For the operation R1+R2, which one of the following values of R1 and R2 gives an arithmetic overflow?",
          "options": ["R1 = 1011 and R2 = 1110", "R1 = 1100 and R2 = 1010", "R1 = 0011 and R2 = 0100", "R1 = 1001 and R2 = 1111"],
          "answer": "R1 = 1100 and R2 = 1010",
          "correctOptionIndex": 1
        },
        {
          "question": "Consider the following threads, T1, T2, and T3 executing on a single processor, synchronized using three binary semaphore variables, S1, S2, and S3, operated upon using standard wait() and signal(). The threads can be context-switched in any order and at any time. T1: while(true){ wait(S3); print('C'); signal(S2); } T2: while(true){ wait(S1); print('B'); signal(S3); } T3: while(true){ wait(S2); print('A'); signal(S1); } Which initialization of the semaphores would print the sequence BCABCABCA....?",
          "options": ["S1 = 1; S2 = 1; S3 = 1", "S1 = 1; S2 = 1; S3 = 0", "S1 = 1; S2 = 0; S3 = 0", "S1 = 0; S2 = 1; S3 = 1"],
          "answer": "S1 = 1; S2 = 0; S3 = 0",
          "correctOptionIndex": 2
        },
        {
          "question": "What is printed by the following ANSI C program? #include<stdio.h> int main(int argc, char *argv[]) { int x = 1, z[2] = {10, 11}; int *p = NULL; p = &x; *p = 10; p = &z[1]; *(&z[0] + 1) += 3; printf('%d, %d, %d\\n', x, z[0], z[1]); return 0; }",
          "options": ["1, 10, 11", "1, 10, 14", "10, 14, 11", "10, 10, 14"],
          "answer": "10, 10, 14",
          "correctOptionIndex": 3
        },
        {
          "question": "Which of the following statements is/are TRUE?",
          "options": ["Every subset of a recursively enumerable language is recursive.", "If a language L and its complement L' are both recursively enumerable, then L must be recursive.", "Complement of a context-free language must be recursive.", "If L1 and L2 are regular, then L1 ∩ L2 must be deterministic context-free."],
          "answer": "If a language L and its complement L' are both recursively enumerable, then L must be recursive.",
          "correctOptionIndex": 1
        },
        {
          "question": "Let WB and WT be two set-associative cache organizations that use LRU algorithm for cache block replacement. WB is a write-back cache and WT is a write-through cache. Which of the following statements is/are FALSE?",
          "options": ["Each cache block in WB and WT has a dirty bit.", "Every write hit in WB leads to a data transfer from cache to main memory.", "Eviction of a block from WT will not lead to data transfer from cache to main memory.", "A read miss in WB will never lead to eviction of a dirty block from WB."],
          "answer": "Each cache block in WB and WT has a dirty bit.",
          "correctOptionIndex": 0
        }
        // Add more questions as needed
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select a Test'),
        centerTitle: true,
        backgroundColor: Colors.purple[700],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: tests.length,
          itemBuilder: (ctx, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => QuizHomePage(
                        testName: tests[index]['name'] as String,
                        questions: List<Map<String, Object>>.from(tests[index]['questions'] as List),
                      ),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orangeAccent,
                  padding: EdgeInsets.symmetric(vertical: 15.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                child: Text(tests[index]['name'] as String),
              ),
            );
          },
        ),
      ),
    );
  }
}

class QuizHomePage extends StatefulWidget {
  final String testName;
  final List<Map<String, Object>> questions;

  QuizHomePage({required this.testName, required this.questions});

  @override
  _QuizHomePageState createState() => _QuizHomePageState();
}

class _QuizHomePageState extends State<QuizHomePage> {
  int currentQuestion = 0;
  int score = 0;
  int skippedQuestions = 0;
  int wrongAnswers = 0;
  late Timer timer;
  int timeRemaining = 10;

  void startTimer() {
    timeRemaining = 10; // Reset timer for each question
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (timeRemaining > 0) {
          timeRemaining--;
        } else {
          timer.cancel();
          skipQuestion(); // Auto-skip when timer runs out
        }
      });
    });
  }

  void stopTimer() {
    if (timer.isActive) {
      timer.cancel();
    }
  }

  void checkAnswer(String selectedOption) {
    if (selectedOption == widget.questions[currentQuestion]['answer']) {
      score++;
    } else {
      wrongAnswers++;
    }
    stopTimer();
    moveToNextQuestion();
  }

  void skipQuestion() {
    skippedQuestions++;
    stopTimer();
    moveToNextQuestion();
  }

  void moveToNextQuestion() {
    setState(() {
      if (currentQuestion < widget.questions.length - 1) {
        currentQuestion++;
        startTimer(); // Restart timer for the next question
      } else {
        // Quiz completed, show results
        showDialog(
          context: context,
          builder: (ctx) => AlertDialog(
            backgroundColor: Colors.purple[50],
            title: Text(
              'Quiz Completed!',
              style: TextStyle(color: Colors.purple[800], fontWeight: FontWeight.bold),
            ),
            content: Text(
              'Your Results:\n'
                  'Your score: $score/${widget.questions.length}\n'
                  'Correct Answers: $score\n'
                  'Wrong Answers: $wrongAnswers\n'
                  'Skipped Questions: $skippedQuestions\n',
              style: TextStyle(color: Colors.black),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(ctx).pop();
                  setState(() {
                    currentQuestion = 0;
                    score = 0;
                    skippedQuestions = 0;
                    wrongAnswers = 0;
                  });
                  startTimer(); // Restart the quiz
                },
                child: Text(
                  'Restart',
                  style: TextStyle(color: Colors.purple[800]),
                ),
              ),
            ],
          ),
        );
      }
    });
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  void dispose() {
    stopTimer();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.testName),
        centerTitle: true,
        backgroundColor: Colors.purple[700],
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.purple[300]!, Colors.purple[500]!],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Timer display
              Text(
                'Time remaining: $timeRemaining seconds',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.orangeAccent,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),

              // Displaying the question
              Text(
                widget.questions[currentQuestion]['question'] as String,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30),

              // Options List
              ...((widget.questions[currentQuestion]['options'] as List<String>).map(
                    (option) {
                  return ElevatedButton(
                    onPressed: () => checkAnswer(option),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orangeAccent,
                      padding: EdgeInsets.symmetric(vertical: 15.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Text(option),
                  );
                },
              ).toList()),
            ],
          ),
        ),
      ),
    );
  }
}
