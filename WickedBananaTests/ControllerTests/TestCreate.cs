using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Xunit;
using WickedBanana.Models;
using WickedBanana.Controllers;
using Microsoft.AspNetCore.Mvc;

namespace WickedBananaTests.ControllerTests
{
    public class BananaControllerTest
    {
        [Fact]
        public void Get_Create_View_Test()
        {
            //Arrange
            BananaController controller = new BananaController();
            //Act
            var result = controller.Create();
            //Assert
            Assert.IsType<ViewResult>(result);
        }
    }
}
