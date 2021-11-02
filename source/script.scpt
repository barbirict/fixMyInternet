property c1 : "Active MTU: 1500 (Current Setting: 1500)"
do shell script "networksetup getMTU en0"

if result is equal to c1 then
	do shell script "networksetup -setMTU en0 1501"
	display alert "mtu set to 1501"
else
	do shell script "networksetup -setMTU en0 1500"
	display alert "mtu set to 1500"
end if
