## PUSH_SWAP

The Push swap project is a very simple and a highly straightforward algorithm project:
data must be sorted.
I had at my disposal a set of integer values, 2 stacks, and a set of instructions
to manipulate both stacks.
My goal was to write a program in C called push_swap which calculates and displays
on the standard output the smallest program, made of Push swap language instructions,
that sorts the integers received as arguments.

## LIMITATIONS OF SORT MOVEMENTS

The amount of movements to accomplish the whole stack being sorted ideally was less than
700 for 100 elements and less than 5500 for 500 elements.

## HOW EFFECTIVE IT TURNED OUT TO BE?

During the sorting of 100 elements the amount of movements is always less than 650 moves,
mostly not exceeding 600 moves. As for 500 elements, the algorithm usually perform around
4500 movements, which is less than the required amount for over a thousand moves.
Quick Sort turned out to be a much better approach than just pushing all the values to
the "Stack B", a method of which is used in a Radix sort, which is also not a very 
efficient method. Using both of Quick Sort and Turk Algorithm helped me get the
most efficient sorting which helped get a very little amount of movements for sorting.

## 100 MOVEMENTS

![ps_100](https://github.com/AlexLuthor135/push_swap/assets/134649029/04291ae4-a6c0-4ebc-a45a-8b203075d10b)

## 500 MOVEMENTS

![ps_500](https://github.com/AlexLuthor135/push_swap/assets/134649029/53fb6a81-48e0-47e9-b113-8c43685787b7)

## WHAT DID I USE TO ACCOMPLISH IT?

For sorting I used two algorithm - Quick Sort and implementation of Turk Algorithm which
takes cost to swap arguments as the main parameter for sorting. Quick Sort is being
used during the initial push of values, while Turk Algorithm sorts the second part.
