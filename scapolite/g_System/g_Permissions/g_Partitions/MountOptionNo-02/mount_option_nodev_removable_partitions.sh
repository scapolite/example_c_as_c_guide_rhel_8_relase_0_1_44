
var_removable_partition="<sub idref="org.ssgproject.RHEL-8:var_removable_partition" use="legacy"/>"
<sub idref="org.ssgproject.RHEL-8:function_include_mount_options_functions" use="legacy"/>
include_mount_options_functions

function perform_remediation {
	# test "$mount_has_to_exist" = 'yes'
	if test "yes" = 'yes'; then
		assert_mount_point_in_fstab "$var_removable_partition" || { echo "Not remediating, because there is no record of $var_removable_partition in /etc/fstab" >&2; return 1; }
	fi

	ensure_mount_option_in_fstab "$var_removable_partition" "nodev" "" ""

	ensure_partition_is_mounted "$var_removable_partition"
}

perform_remediation

              
