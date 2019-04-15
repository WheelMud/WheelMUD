//-----------------------------------------------------------------------------
// <copyright file="GlobalAssemblyInfo.cs" company="WheelMUD Development Team">
//   Copyright (c) WheelMUD Development Team.  See LICENSE.txt.  This file is 
//   subject to the Microsoft Public License.  All other rights reserved.
// </copyright>
// <summary>
//   Global Assembly information inherited by all projects in the WheelMUD solution.
//   Additional identifying information will be housed in each AssemblyInfo, with a
//   file "link" in each library to inherit these as well.
// </summary>
//-----------------------------------------------------------------------------

using System.Reflection;
using System.Runtime.InteropServices;

[assembly: AssemblyProduct("WheelMUD Multi-User Dungeon/Dimension Server")]
[assembly: AssemblyCompany("WheelMUD Development Team")]
[assembly: AssemblyCopyright("Copyright © WheelMUD Development Team 1998-2019")]

[assembly: ComVisible(false)] // Do not need to expose any of these to COM.

#if DEBUG
[assembly: AssemblyConfiguration("Debug")]
#else
[assembly: AssemblyConfiguration("Release")]
#endif

[assembly: AssemblyVersion("0.4.5.*")]