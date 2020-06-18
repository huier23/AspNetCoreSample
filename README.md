## Link
* **Azure DevOps** https://dev.azure.com/
* **Azure Portal** https://portal.azure.com
* **Sample Code (ASP .NET Core)** https://github.com/huier23/AspNetCoreSample.git
* **HelloWorld.Lib** https://github.com/huier23/HelloWorld.Lib.git
* **Register free Azure account** https://azure.microsoft.com/zh-tw/free/
* **Repo backup** https://huier-teamservice@dev.azure.com/huier-teamservice/OpenRepository/_git/OpenRepository

### Update
### 2020/06 
- update to .NET Core 3.1
- When fisrt time to build and do unit test of this project, you can find the one error issue of unit test result.
- Controllers / HomeController.cs
    ```
        public class HomeController : Controller
        {
            public IActionResult Index()
            {
                ViewData["Message"] = "Success!";

                return View();
            }
    ```
    "Success!" > "DevOps Workshop"

## Azure Pipelines Build 
### AspNetCore.Sample

<image src="https://github.com/huier23/AspNetCoreSample/blob/master/png/CI-AspNetCore.Sample.png?raw=true" width="50%" height="50%"><br/>

* **Test Assemblies** : edit Test files </br>
 ```
**\$(BuildConfiguration)\**\*UnitTest.dll
!**\obj\**
```
### HelloWorldNuGet
<image src="https://github.com/huier23/AspNetCoreSample/blob/master/png/CI-HelloWorldNuGet.png?raw=true" width="50%" height="50%"><br/>

#### Setting Pack Option <br/>
<image src="https://github.com/huier23/AspNetCoreSample/blob/master/png/CI-HelloWorldNuGet2.png?raw=true" width="100%" height="100%"><br/>

## Azure Pipelines Release
### AspNetCore.Sample
Dev <br/>
<image src="https://github.com/huier23/AspNetCoreSample/blob/master/png/CD.Dev-AspNetCore.Sample.png?raw=true" width="50%" height="50%"><br/>
Production <br/>
<image src="https://github.com/huier23/AspNetCoreSample/blob/master/png/CD.Production-AspNetCore.Sample.png?raw=true" width="50%" height="50%"><br/>


### HelloWorldNuGet

<image src="https://github.com/huier23/AspNetCoreSample/blob/master/png/CD-HelloWorldNuGet.png?raw=true" width="100%" height="100%"><br/>
