#!/usr/bin/env python3

validate_version_number = (
    lambda x: re.search("\.", x)
    and len(x.split(".")) == 3
    and all(_.isdigit() for _ in x.split("."))
)


def compare_version_numbers(old_version: str = None, new_version: str = None):
    if (
        not old_version
        or type(old_version) != str
        or not validate_version_number(old_version)
    ):
        return (
            "0.0.1"
            if not new_version
            or type(new_version) != str
            or not validate_version_number(new_version)
            else new_version
        )

    if (
        not new_version
        or type(new_version) != str
        or not validate_version_number(new_version)
    ):
        return old_version

    while old_version > new_version:
        olds = [x for x in old_version.split(".")]
        news = [x for x in new_version.split(".")]

        for index, (old, new) in enumerate(zip(olds, news)):
            news[index] = old if old > new else new

        new_version = ".".join(news)

    return new_version


def update(version: str = None, build: str = None):
    try:
        # Check version number is provided and matches the appropriate pattern of 3 numbers connected by dots e.g 1.0.0
        if (
            not version
            or not isinstance(version, str)
            or not validate_version_number(version)
        ):
            new_version = input(
                "[Optional]. Enter the version number. This is three numbers separated by dots, such as 1.0.0: "
            )
        else:
            new_version = version

        if new_version:

            while not validate_version_number(new_version):
                new_version = input(
                    "[Optional]. Enter the version number. This is three numbers separated by dots, such as 1.0.0: "
                )

        # Check build number is provided and is a digit
        if not build or not isinstance(build, str) or not build.isdigit():
            new_build = input(
                "[Optional]. Enter the build number. This is a single number such as 1: "
            )
        else:
            new_build = build

        if not new_build:
            # Generate from current datetime consisting of year(e.g 2013), month(e.g 09), day(e.g 08) & hour(e.g 07)

            from datetime import datetime
            from dateutil import tz

            new_build = datetime.now(tz=tz.gettz("Africa/Nairobi")).strftime("%Y%m%d%H")

        else:
            # Ensure digit given

            while not new_build.isdigit():
                new_build = input(
                    "[Optional]. Enter the build number. This is a single number such as 1: "
                )

        import sys

        import fileinput

        for line in fileinput.input(["pubspec.yaml"], inplace=True):
            if line.strip().startswith("version: "):
                old_version, old_build = tuple(line.split(":")[-1].strip().split("+"))
                version_number = compare_version_numbers(
                    new_version=new_version, old_version=old_version
                )
                # Build number must change for successful release of Android App on Google Play
                # Therefore if new & old version and build numbers are the same, add 1 to build number
                build_number = (
                    int(new_build) + 1
                    if version_number == old_version and new_build <= old_build
                    else new_build
                )
                line = f"version: {version_number}+{build_number}\n"
            sys.stdout.write(line)

        import subprocess
        import shlex

        subprocess.run(shlex.split("flutter pub get"))
    except (BaseException,) as err:
        print(err)


if __name__ == "__main__":
    import argparse

    # Create the parser
    my_parser = argparse.ArgumentParser(
        description="Update the app’s version and build numbers which is usually something like 1.0.0+1"
    )

    # Add the arguments
    my_parser.add_argument(
        "-v",
        "--version_number",
        action="store",
        help="The version number is three numbers separated by dots, such as 1.0.0 and will be followed by +",
    )
    my_parser.add_argument(
        "-b",
        "--build_number",
        action="store",
        help="The build number is single number such as 1 and will come after +",
    )

    # Execute the parse_args() method
    args = my_parser.parse_args()

    import os

    if not os.path.isfile("pubspec.yaml"):
        raise FileNotFoundError("Pubspec file missing")

    import re

    update(version=args.version_number, build=args.build_number)
