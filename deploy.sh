#!/usr/bin/env bash

#Project validation

read -p "Enter the project path:" project_path

if [[ -z "${project_path}" ]]; then
	echo "Project path can't be empty."
	exit 1
fi
if [[ -d "${project_path}" ]]; then
	echo "Project directory exist."
else
	echo "Project directory not exist."
	exit 1
fi

read -p "Continue deployment?(y/n)" confirm_deploy

if [[ "${confirm_deploy}" == 'y' || "${confirm_deploy}" == 'Y' ]]; then
	echo "Continuing Deployment..."
else
	echo "Deployment cancelled."
	exit 0
fi

