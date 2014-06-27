# TOM Cable Management Alternate Parts

I printed [Ellindsey's TOM build platform cable management
system](http://www.thingiverse.com/thing:16069), because I wanted better strain
relied than I had been using. Unfortunately, I found two problems. First, the
cable from the Heated Build Platform would not reach the side of the Y axis and
back to the front right corner of my TOM. Second, I had already added
[MakeALot's Linear Bearing X Axis Carriage for
ToM](http://www.thingiverse.com/thing:9420), so there were no vertical ribs to
attach the x stage mount to.

So, I used OpenSCAD to generate a few new parts to make the system work on my TOM.

## Instructions for Printing

If your cable is too short, print the cable\_guide\_t\_link.stl.

If your build platform no longer has vertical ribs, print the
cable\_guide\_x\_stage\_anchor\_90.stl.

To use the t-link, put the cable management system together as described in the
original thing, but without running the heater wires back to the midpoint.
Instead, find the spot where the links going from the base to the midpoint are
approximately the same height as the build platform and replace a couple of
links with the t-link. Make certain the *T* is oriented towards the center of the
front of the TOM.

Now run the links from the build platform to the *T* this should still move
nicely without kinking the cables (or trying to pull them out of the base).

To use the rotated x-stage anchor, follow the directions in the original thing,
except you will want to mount it on the bottom horizontal wood plate of the HBP
instead of on the rib. The spacing here is a little tight, so I would suggest
using one of the low-profile M3 screws instead of a normal M3 screw. Connect
the linkage to the anchor and you should have reasonable strain relief.
