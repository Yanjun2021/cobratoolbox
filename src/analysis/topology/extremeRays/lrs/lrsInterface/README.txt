Must have lrs installed to compute extreme pathways
http://cgm.cs.mcgill.ca/~avis/C/lrs.html

lrslib Ver 4.2 is a self-contained ANSI C implementation as a callable library of the reverse search algorithm for  
vertex enumeration/convex hull problems and comes with a choice of three arithmetic packages. Input file formats are
 compatible with Komei Fukuda's cdd package. All computations are done exactly in either multiple  precision or fixed
 integer arithmetic. Output is not stored in memory, so even problems with very large output sizes can sometimes be solved. 
The program is intended for Unix/Linux platforms, but will compile using gcc/cygwin on Windows. 

See testLrsInterface.m in the cobra toolbox to see how to use lrs from within the cobra toolbox.
