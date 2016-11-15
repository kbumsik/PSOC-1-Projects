//----------------------------------------------------------------------------
// Lab 7A
//----------------------------------------------------------------------------

#include <m8c.h>        // part specific constants and macros
#include "PSoCAPI.h"    // PSoC API definitions for all User Modules


void main(void)
{
	//BYTE bRefSignal;
	//start each of the RefMux User Modules with high power
	RefHiMux_Start(RefHiMux_HIGHPOWER);
	//bRefSignal = RefHiMux_REFHI;
	//RefHiMux_RefSelect(bRefSignal);
	RefLoMux_Start(RefLoMux_HIGHPOWER);
	//bRefSignal = RefLoMux_REFLO;
	//RefLoMux_RefSelect(bRefSignal);
	RefAgndMux_Start(RefAgndMux_HIGHPOWER);
	//bRefSignal = RefAgndMux_AGND;
	//RefAgndMux_RefSelect(bRefSignal);
	
	while (1);
}
