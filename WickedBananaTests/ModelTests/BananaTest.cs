using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Xunit;
using WickedBanana.Models;

namespace WickedBananaTests.ModelTests
{
    public class BananaTest
    {
        [Fact]
        public void Get_Name_Test()
        {
            //Arrange
            var banana = new Banana();
            //Act
            banana.Name = "Lena";
            var result = banana.Name;

            //Assert
            Assert.Equal("Lena", result);
        }
    }
}
