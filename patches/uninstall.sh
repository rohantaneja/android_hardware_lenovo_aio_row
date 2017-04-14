echo $1
rootdirectory="$PWD"
# ---------------------------------

dirs="bionic frameworks/av frameworks/native frameworks/opt/telephony frameworks/opt/net/ims hardware/libhardware packages/apps/Settings packages/services/Telecomm packages/services/Telephony system/netd system/core system/bt"

for dir in $dirs ; do
	cd $rootdirectory
	cd $dir
	echo "Reverting $dir patches..."
	git reset --hard
	git clean -f -d
	echo " "
done

# -----------------------------------
echo "Changing to build directory..."
cd $rootdirectory
