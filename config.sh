##########################################################################################
# Defines
##########################################################################################

# Is this a cache mod?
CACHEMOD=true

# This will be the folder name under /magisk or /cache/magisk
# This should also be the same as the id in your module.prop to prevent confusion
MODID=ViperAtmos

# Set to true if you need automount
# Most mods would like it to be enabled
AUTOMOUNT=true

# Set to true if you need post-fs script (Only available in cache mods)
POSTFS=true

# Set to true if you need post-fs-data script (Only available in non-cache mods)
POSTFSDATA=true

# Set to true if you need late_start service script (Only available in non-cache mods)
LATESTARTSERVICE=false

##########################################################################################
# Installation Message
##########################################################################################

# Set what you want to show when installing your mod

print_modname() {
  ui_print "*******************************"
  ui_print "      Viper|Atmos 5.4 Stock    "
  ui_print "*******************************"
}

##########################################################################################
# Replace list
##########################################################################################

# List all directories you want to directly replace in the system
# By default Magisk will merge your files with the original system
# Directories listed here however, will be directly mounted to the correspond directory in the system

# This is an example

# Construct your own list

##########################################################################################
# Permissons
##########################################################################################

# NOTE: This part has to be adjusted to fit your own needs

set_permissions() {
  # Default permissions, don't remove them
  set_perm_recursive  $MODPATH  0  0  0755  0644

  # Only some special files require specific permission settings
  # The default permissions should be good enough for most cases

  # Some templates if you have no idea what to do:

  # set_perm_recursive  <dirname>                <owner> <group> <dirpermission> <filepermission> <contexts> (default: u:object_r:system_file:s0)
  # set_perm_recursive  $MODPATH/system/lib       0       0       0755            0644

  # set_perm  <filename>                         <owner> <group> <permission> <contexts> (default: u:object_r:system_file:s0)
  # set_perm  $MODPATH/system/bin/app_process32   0       2000    0755         u:object_r:zygote_exec:s0
  # set_perm  $MODPATH/system/bin/dex2oat         0       2000    0755         u:object_r:dex2oat_exec:s0
  # set_perm  $MODPATH/system/lib/libart.so       0       0       0644
  
  # Custom permissions
  set_perm_recursive $MODPATH/system/bin  0  2000  0755  0755
  set_perm_recursive $MODPATH/system/xbin  0  0  0755  0755
}
