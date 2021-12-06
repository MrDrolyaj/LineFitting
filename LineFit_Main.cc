#include "LineFit.hh"


#include "TROOT.h"
#include "TApplication.h"


int main(int argc, char * argv[])
{
     TApplication *theApp = new TApplication("theApp",&argc,argv);

     LineFit * ptr = new LineFit();


     theApp -> Run();
     return 0;
}
