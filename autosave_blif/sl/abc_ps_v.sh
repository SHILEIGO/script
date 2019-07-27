#!/bin/bash
for file in *.blif; do
    abc -c "read $file; strash; print_stats"
done