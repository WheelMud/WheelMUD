//-----------------------------------------------------------------------------
// <copyright file="TestPlayerBehavior.cs" company="WheelMUD Development Team">
//   Copyright (c) WheelMUD Development Team.  See LICENSE.txt.  This file is 
//   subject to the Microsoft Public License.  All other rights reserved.
// </copyright>
// <summary>
// </summary>
//-----------------------------------------------------------------------------

namespace WheelMUD.Tests.Behaviors
{
    using Microsoft.VisualStudio.TestTools.UnitTesting;
    using WheelMUD.Core;

    /// <summary>Tests for the ExitBehavior class.</summary>
    [TestClass]
    public class TestPlayerBehavior
    {
        /// <summary>The behavior being tested.</summary>
        private PlayerBehavior playerBehavior;

        /// <summary>Common preparation for the PlayerBehavior tests.</summary>
        [TestInitialize]
        public void Init()
        {
            this.playerBehavior = new PlayerBehavior();
        }

        /// <summary>Tests a password with spaces.</summary>
        [TestMethod]
        public void TestPasswordWithSpaces()
        {
            string password = "correct horse battery staple";

            this.playerBehavior.SetPassword(password);

            Verify.AreSame(this.playerBehavior.Password, password);
        }

        /// <summary>Tests a password with outside spaces.</summary>
        [TestMethod]
        public void TestPasswordWithOutsideSpaces()
        {
            string password = "  foo bar  ";

            this.playerBehavior.SetPassword(password);

            Verify.AreSame(this.playerBehavior.Password, password);
        }
    }
}