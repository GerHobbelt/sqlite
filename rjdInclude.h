/* 
   sqlite uses a define named GLOBAL, but, so does exec/types.h that
   is pulled in via pthreads.h. We forcefully include this file as the
   first header file for every translation unit. It pulls in 
   exec/types.h and the UNDEFs GLOBAL
*/

/* 
   NO need for header guards since this gets included once and first,
   with the GCC include option 
*/

#include <exec/types.h>
#undef GLOBAL
