2018-12-25.blocks
===

This is a recreation of one of my favourite puzzles up to this point.

The problem is to place a number of blocks inside a box.

Puzzle parts
---

The puzzle consists of these parts:

* A box with `5 * 5 * 5` units of space in it.
* 5 blocks of size `1 * 1 * 1`.
* 6 blocks of size `2 * 2 * 3`.
* 6 blocks of size `1 * 2 * 4`.

How to build
---

* You need an installation of [OpenSCAD](https://www.openscad.org).
* Execute `build.sh` to generate `.stl` files.
* This will create the following files:
  * `box.stl` - the box to sort the blocks into.
  * `small.stl` - single block of size `1 * 1 * 1`.
  * `mid.stl` - single block of size `2 * 2 * 3`.
  * `big.stl` - single block of size `1 * 2 * 4`.
  * `complete.stl` - a composition of all blocks required and the box.
* You can now produce the `.stl` files for example using a 3D printer or something similar.

Alternatively you can use the above parts description to produce the blocks by the method of your choice.

Background
---

I first stumbled across this puzzle in `2007` when I found it on a shelf of a friends parents where it apparently sat unsolved for years.
I felt challanged by this and tried to solve it for several hours without any luck.

The next day I took the puzzle to school to discuss it with some friends.
Still we had no luck solving it.

However I started to write a solver in Java, and a friend wrote one in C.
It turned out that my solver was horribly slow and did not find a solution when running for more than 24h.
However my friends solver was written in a more concise manner and found a solution.
The next day at school we assembled this solution during a break and where deligthed by the arrangement of blocks.

Since then I've also had the pleasure of witnessing someone solving the puzzle using logical reasoning to find constraints.
This approach to my mind is a bit more rewarding as the process and discussion about constraints turned out to be very exciting.

If you have a bit of time to spare please feel encouraged to give this puzzle a try.

There is a `solution.scad` file provided in case that you decide to give up on solving it yourself.
You can view that file with OpenSCAD or read it as text to retrace the solution.
Still I recommend this only as a last resort as it takes away from the joy of finding the solution yourself.

License
---

The code is published under MIT license, but I'm uncertain about the origin of the puzzle.
Since the puzzle is relatively simple in nature and I've come across it a few times and
I currently assume that the idea is somewhat close to the public domain.
However I'm just speculating about that and am neither aquinted with the specific legal situation surrounding this puzzle or your jurisdiction.