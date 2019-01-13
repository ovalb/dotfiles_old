#!/usr/bin/env python3

import os
import subprocess

def cmd(cmd):
	return subprocess.check_output(cmd, shell=True).decode("utf-8")

dotfiles = cmd("ls | egrep -v 'README.md|init.py'")

homedir = os.path.expanduser("~")

for file in dotfiles.split('\n')[0:-1]:
	if not os.path.isfile(f'{homedir}/.{file}'):
		print(f"\n~/.{file} doesn't exist. If you decide to overwrite it, it will be created")
	answer = input(f"The file .{file} will be overwritten. Continue? (Y/n): ")
	if (answer != 'n' or answer != 'N' or answer != 'no'):
		cmd(f"echo 'source {homedir}/.dotfiles/{file}' > {homedir}/.{file}")
		print(f".{file} has been overwritten")
print("\nConfiguration Complete!")
