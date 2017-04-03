/*
 * The contents of this file are subject to the Interbase Public
 * License Version 1.0 (the "License"); you may not use this file
 * except in compliance with the License. You may obtain a copy
 * of the License at:
 * http://www.borland.com/devsupport/interbase/opensource/IPL.html
 *
 * Software distributed under the License is distributed on an
 * "AS IS" basis, WITHOUT WARRANTY OF ANY KIND, either express
 * or implied. See the License for the specific language governing
 * rights and limitations under the License.
 *
 * The Original Code was created by Borland Software Corporation
 * and its predecessors.  Portions created by Borland are Copyright (c) 
 * 1994 - 2001 Borland Software Corporation.
 * All rights reserved.
 *
 * Contributor(s): 
 *                 Aaron Ruddick InterBase QA, Borland Software Corp.
 *                 Dan Mikhayltsa  InterBase QA, Borland Software Corp.
 */
#ifdef VMS
#define ALIGN(n,b)              (n)
#endif

#ifdef sun
#ifdef sparc
#define ALIGN(n,b)          ((n + b - 1) & ~(b - 1))
#endif
#endif

#ifdef hpux
#define ALIGN(n,b)          ((n + b - 1) & ~(b - 1))
#endif

#ifdef ultrix
#define ALIGN(n,b)          ((n + b - 1) & ~(b - 1))
#endif

#ifdef sgi
#define ALIGN(n,b)          ((n + b - 1) & ~(b - 1))
#endif

#ifdef _AIX
#define ALIGN(n,b)          ((n + b - 1) & ~(b - 1))
#endif
 
#ifdef __m88k__
#define ALIGN(n,b)          ((n + b - 1) & ~(b - 1))
#endif
 
#if (defined __osf__ && defined __alpha)
#define ALIGN(n,b)          ((n + b - 1) & ~(b - 1))
#endif

#ifdef mpexl
#define ALIGN(n,b)          ((n + b - 1) & ~(b - 1))
#endif

#if (defined(_MSC_VER) && defined(WIN32)) || (defined(__BORLANDC__) \
    && defined(__WIN32__))
#define ALIGN(n,b)          ((n + b - 1) & ~(b - 1))
#endif

#ifndef ALIGN
#define ALIGN(n,b)          ((n+1) & ~1)
#endif
