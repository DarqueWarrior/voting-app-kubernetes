Configuration iis_setup {

   Param ()

   Import-DscResource -ModuleName PSDesiredStateConfiguration

   Node 'localhost'
   {
      WindowsFeature WebServerRole {
         Name   = "Web-Server"
         Ensure = "Present"
      }
   }
}