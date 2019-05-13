
#include "sysdep.h"
#include "bfd.h"
#include "ld.h"
#include "ldexp.h"
#include "ldlang.h"
#include "plugin-api.h"
#include "plugin.h"

void onload (struct ld_plugin_tv *tv)
{
	printf("hello from plugin\n");	  
	fflush (NULL);
}

