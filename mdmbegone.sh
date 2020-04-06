echo -e '  __  __   _____    __  __                    
 |  \/  | |  __ \  |  \/  |                   
 | \  / | | |  | | | \  / |                   
 | |\/| | | |  | | | |\/| |                   
 | |  | | | |__| | | |  | |                   
 |_|  |_| |_____/  |_|  |_|                   
                                              
  ____                                        
 |  _ \                                       
 | |_) |   ___    __ _    ___    _ __     ___ 
 |  _ <   / _ \  / _` |  / _ \  | \_ \   / _ \
 | |_) | |  __/ | (_| | | (_) | | | | | |  __/
 |____/   \___|  \__, |  \___/  |_| |_|  \___|
                  __/ |                       
                 |___/                        '
echo By Randomblock1
echo Removing MDM will result in all of your configuration profiles to be deleted.
echo Continue? (y/n)
read answer
if [ "$answer" != "${answer#[Yy]}" ]; then
  rm -rf /private/var/containers/Shared/SystemGroup/systemgroup.com.apple.configurationprofiles/
  echo $'\nAll Done!\nReboot for this to take effect!\nIf it does not work, please follow these instructions:\n\nedit CloudConfigurationDetails.plist and CloudConfigurationSetAsideDetails.plist. \nSet AllowPairing to true, \nConfigurationURL to https://example.com, \nisMDMUnremovable to 0, \nIsMandatory to false, and \nIsSupervised to false. \nThen, reboot and go into Setup. At the Remote Management step, press skip and you will be freed!'
fi