# In linux, run this script when system start up

## Set Trackball wheel direction, left-handed mode
## Change 'ExpertBT5.0 Mouse' to correct one.
## Find via `xinput list`

# scroll direction
xinput set-prop 'ExpertBT5.0 Mouse' 289 1
# left-hand mode
xinput set-prop 'ExpertBT5.0 Mouse' 305 1
