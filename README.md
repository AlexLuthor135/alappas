## PUSH_SWAP

The Push swap project is a very simple and a highly straightforward algorithm project:
data must be sorted.
I had at your disposal a set of integer values, 2 stacks, and a set of instructions
to manipulate both stacks.
My goal was to write a program in C called push_swap which calculates and displays
on the standard output the smallest program, made of Push swap language instructions,
that sorts the integers received as arguments.

## WHAT DID I USE TO ACCOMPLISH IT?

For sorting I used two algorithm - Quick Sort and implementation of Turk Algorithm which
takes cost to swap arguments as the main parameter for sorting. Quick Sort is being
used during the initial push of values, while Turk Algorithm sorts the second part.

## HOW EFFECTIVE IT TURNED OUT TO BE?

Quick Sort turned out to be a much better approach than just pushing all the values to
the "Stack B", a method of which is used in a Radix sort, which is also not a very 
efficient method. Using both of Quick Sort and Turk Algorithm helped me get the
most efficient sorting which helped get a very little amount of movements for sorting.
