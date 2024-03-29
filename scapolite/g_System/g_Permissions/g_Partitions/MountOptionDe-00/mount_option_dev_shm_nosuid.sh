<sub idref="org.ssgproject.RHEL-8:function_include_mount_options_functions" use="legacy"/>
include_mount_options_functions

function perform_remediation {
	# test "$mount_has_to_exist" = 'yes'
	if test "no" = 'yes'; then
		assert_mount_point_in_fstab /dev/shm || { echo "Not remediating, because there is no record of /dev/shm in /etc/fstab" >&2; return 1; }
	fi

	ensure_mount_option_in_fstab "/dev/shm" "nosuid" "tmpfs" "tmpfs"

	ensure_partition_is_mounted "/dev/shm"
}

perform_remediation

              
