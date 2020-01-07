# Old Episerver Versions
Old working versions of Episerver CMS for testing.

## Setup Instructions
1. Clone the version you want.
2. Open the solution in Visual Studio.
3. Use NuGet to restore packages (assuming you have the Episerver Nuget feed added already).
4. Right click on the `App_Data` folder in the VS Solution Explorer, select Add -> New Item. Add a SQL Server Database called 'EPiServerDB.mdf'.
5. Run `Initialize-EPiDatabase` in the Package Manager Console.
6. Start the site without debugging in Visual Studio.
7. Visit http://localhost:YOURPORT/hax.aspx to create an user with username: `Administrator` password: `Administrator`.
8. Access the site at http://localhost:YOURPORT/episerver using `Administrator/Administrator`.
