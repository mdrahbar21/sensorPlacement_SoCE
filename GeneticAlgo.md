<h1> Genetic Algorithms Summary </h1>



<strong>Genetic Algorithms:</strong>
- GAs use techniques such as inheritance, mutation, selection, and crossover, drawing inspiration from evolutionary biology.
- John Holland's work in the 1960s and 1970s played a significant role in popularizing GAs.
- GAs are considered global search heuristics or "metaheuristics" that do not make assumptions about the problem structure.
<br>

<strong> Motivation for GA: </strong>
- Evolution is the process by which modern organisms have descended from ancient ones.
- Microevolution refers to evolution within a single population sharing the same gene pool.
- Heredity involves passing on information and characteristics through genes.
- Genetic variations are essential for change to occur, and they can result from mutation, gene flow, and reproduction.
<br>

<strong> Using Evolutionary Concepts in GA:</strong>
- GAs start with a population of randomly generated individuals and evolve across generations.
- Fitness evaluation is performed for each individual in the population.
- Selection, crossover, and mutation are used to form a new population for the next iteration.
- The algorithm terminates based on a maximum number of generations or when a satisfactory fitness level is reached.
- <b>Steps in detail:</b>
  - Step 0: Generate an initial population. Set iteration 𝑛=1.
  - Step 1: Selection
  - Step 2: Crossover
  - Step 3: Mutation
  - Step 4: Replace the current population with the new population. If the required number of iterations have been reached, we stop. Otherwise, set 𝑛=𝑛+1 and go to step 1.

<br>

<stong> Methods of Selection:</strong>
- <b>Roulette-wheel</b>: 
  - Conceptually, this can be represented as a game of roulette - each individual/string gets a slice of the wheel, but more fit ones get larger slices than less fit ones. 
  - This wheel is spun 𝑛 times to get 𝑛 new strings.
- <b>𝒌-tournament selection</b>: 
  - 𝑘 strings are randomly selected from the current population and the string with the highest fitness is selected.
  - This process is repeated 𝒏 times to get a population of size 𝑛.
- 

<strong>Elitism:</strong>
- Elitism ensures that the most fit individuals from the current generation are carried over to the next generation unchanged.
- This approach helps retain the best individuals and prevents their loss during reproduction, crossover, or mutation.
<br>

<strong>Methods of Crossover:</strong>
- Crossover involves mating individuals to create offspring for <b>Binary string</b>.
- Two-point crossover:
  - two points are randomly selected for a pair of strings and between those points, the strings are swapped.
- single-point crossover:
  - one point is randomly selected for a pair of strings and the strings are swapped around that point.
- uniform crossover:
  - at every bit point, we flip an unbiased coin and depending on the outcome of the coin, we swap that bit position.
<br>

<strong>Travelling Salesman Problem (TSP) Example:</strong>
- TSP is a minimization problem.
- The TSP example demonstrates how GAs can be applied to solve optimization problems.
- Various crossover and mutation techniques are used to evolve solutions for the TSP.
- <b>for Ordered String </b> cannot implement swapping crossovers
  - <b>Order1 crossover</b>
  - a swath of consecutive bits from parent 1 drops down, and remaining values are placed in the child in the order which they appear in parent 2
  - We could generate another child by considering parent 2 to be on the top of  parent 1
  - Mutation involves reordering of the list. Here, we exchange the positions of two randomly chosen bits.

<br>

<strong>Other GA Applications:</strong>
- The presentation briefly mentions that GAs are applicable to a wide range of problems beyond the TSP.
- GAs offer benefits such as easy understanding, flexibility, and the ability to exploit previous solutions.

<br>

<strong>Benefits of GAs:</strong>
- GAs provide a solution even if not optimal, which improves with iterations.
- They are not limited to specific applications and can be applied to various problem domains.

<hr>
<h1>Key Computational points </h1>

<strong>Evolutionary Computing:</strong>
 GAs are a branch of computational intelligence that falls under the category of evolutionary computing. It involves using biological evolution principles to solve complex problems through iterative optimization processes.

<strong>Metaheuristics:</strong> 
GAs are classified as metaheuristics, which are problem-independent optimization algorithms. In contrast to specific algorithms designed for particular optimization problems, metaheuristics offer a general approach that is applicable to many optimization problems.

<strong>Search Heuristics:</strong> 
GAs are considered global search heuristics. Their approach involves exploring the entire search space without making assumptions about the problem. In complex and large-scale problems, GAs can effectively search for solutions through a diverse population and evolutionary mechanisms.

<strong>Selection, Crossover, and Mutation:</strong> 
 GAs utilize selection, crossover, and mutation operations to guide the search process. It preserves desirable traits by allowing the fittest individuals to reproduce. Crossover combines genetic material from parent individuals to create offspring with a mix of their characteristics. By introducing random mutations to genetic material, mutations promote exploration and diversity.

<strong>Fitness Evaluation:</strong> 
 Fitness evaluation plays a crucial role in GAs. Based on a problem-specific fitness function, it assesses the quality or suitability of individuals in a population. Selection is guided by the fitness function, which determines how well an individual solves a problem.

<strong>Optimization Problems:</strong> 
GAs are commonly used for solving optimization problems, where the goal is to find the best possible solution among a set of alternatives. The presented example of the Traveling Salesman Problem (TSP) demonstrates how GAs can be applied to find an optimal route that visits a set of cities.

<strong>Hybrid Approaches:</strong> 
GAs can be combined with other algorithms or techniques to enhance their performance or address specific problem characteristics. This flexibility allows for the development of hybrid algorithms that leverage the strengths of different approaches, such as combining GAs with local search methods or problem-specific heuristics.

<hr>
