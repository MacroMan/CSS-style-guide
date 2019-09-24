# CSS Style guide

## “Outside In” — Ordering CSS Properties by Importance

A [poll on CSS tricks][1] found that a staggering 39% of developers order their CSS rules randomly, while 45% group by type.

I have taken ordering by type one step further, and created groups of properties with properties ordered within.

This method attempts to start with big picture stuff, like layout and size, and works towards finer details, like typography and list styles.

The name and inspiration for this method comes from [Guy Routledge][2] in [this article][3]. 

The grouping and order I use is as follows: 
* Layout (position, display, top, bottom, flex, etc)
* Box Model Properties (width, height, margin, padding, overflow, etc)
* Border (width, height, radius, image, etc)
* Background (color, image, position, size, etc)
* Animation (transition, animation, etc)
* Typography (font, line-height, align, color, shadow, decoration, quotes, white-space, etc)
* List (style, position, type, image)
* Table (layout, empty-cells, border-spacing, etc)
* Navigation (nav-index, nav-left, etc)
* Misc (zoom, counter, cursor, pointer-events)

Some other rules that I work by:
* Width before Height
* Properties affecting sides are ordered same as the shorthand order
  * left, top, right, bottom
* Blank lines between groups of properties (if there are more than 4 properties)

## How to use this repo

You can view a full list of all properties in the correct order in `All properties.txt`

For a list suitable for use in an IDE, see `IDE.txt` or you can import the `.editorconfig` file

##### Other files (for those curious enough)
* `styles` directory
  * Contains individual files for each group of properties
* `build.sh`
  * Generates `All properties.txt` and `IDE.txt` from the files in `styles`

[1]: https://css-tricks.com/poll-results-how-do-you-order-your-css-properties/
[2]: http://www.guyroutledge.co.uk/
[3]: https://webdesign.tutsplus.com/articles/outside-in-ordering-css-properties-by-importance--cms-21685
