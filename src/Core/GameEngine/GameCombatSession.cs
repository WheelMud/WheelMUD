//-----------------------------------------------------------------------------
// <copyright file="GameCombatSession.cs" company="WheelMUD Development Team">
//   Copyright (c) WheelMUD Development Team. See LICENSE.txt. This file is
//   subject to the Microsoft Public License. All other rights reserved.
// </copyright>
// <summary>
//   Deals with combatants.
// </summary>
//-----------------------------------------------------------------------------

namespace WheelMUD.Core
{
    using System.Collections.Generic;

    /// <summary>Implements the mechanism to deal with combat rounds/turns</summary>
    public class GameCombatSession
    {
        /// <summary>Keeps a list of all the members of this combat session.</summary>
        private readonly List<Thing> combatants = new List<Thing>();

        /// <summary>Gets the entities that are part of this combat session.</summary>
        public List<Thing> Combatants
        {
            get { return this.combatants; }
        }

        /// <summary>Adds a combatant to this session.</summary>
        /// <param name="combatant">The Entity that needs to be added.</param>
        public void AddCombatant(ref Thing combatant)
        {
            this.combatants.Add(combatant);
        }

        /// <summary>Remove a combatant from this session.</summary>
        /// <param name="combatant">The Entity that needs to be removed.</param>
        public void RemoveCombatant(ref Thing combatant)
        {
            this.combatants.Remove(combatant);
        }
    }
}