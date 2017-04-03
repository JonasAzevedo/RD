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
#if defined __STDC__ || defined __BORLANDC__ || defined _MSC_VER
#define args		args
#define ARG(type, arg)		type arg
#define ARGLIST(arg)
#else
#define args		()
#define ARG(type, arg)		arg
#define ARGLIST(arg)	arg;
#endif

#if defined __BORLANDC__ && defined __WIN32__
#define EXPORT _export
#else
#define EXPORT
#endif

#define ERREXIT(status, rc)	{isc_print_status(status); return rc;}
