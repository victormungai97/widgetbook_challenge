#!/usr/bin/env python3

validate_version_number = (
    lambda x: re.search("\.", x)
    and len(x.split(".")) == 3
    and all(_.isdigit() for _ in x.split("."))
)


def update(version_number: str = None, build_number: str = None):
    try:
        # Check version number is provided and matches the appropriate pattern of 3 numbers connected by dots e.g 1.0.0
        if (
            not version_number
            or not isinstance(version_number, str)
            or not validate_version_number(version_number)
        ):
            version_number = input(
                "[Optional]. Enter the version number. This is three numbers separated by dots, such as 1.0.0: "
            )

        if version_number:

            while not validate_version_number(version_number):
                version_number = input(
                    "[Optional]. Enter the version number. This is three numbers separated by dots, such as 1.0.0: "
                )

        # Check build number is provided and is a digit
        if (
            not build_number
            or not isinstance(build_number, str)
            or not build_number.isdigit()
        ):
            build_number = input(
                "[Optional]. Enter the build number. This is a single number such as 1: "
            )

        if not build_number:
            # Generate from current date and time, consisting of year (e.g 2013), month (e.g 09), day (e.g 08) and hour (e.g 07)

            import datetime
            from dateutil import tz

            build_number = datetime.datetime.now(
                tz=tz.gettz("Africa/Nairobi")
            ).strftime("%Y%m%d%H")

        else:
            # Ensure digit given

            while not build_number.isdigit():
                build_number = input(
                    "[Optional]. Enter the build number. This is a single number such as 1: "
                )

        import sys

        import fileinput

        for line in fileinput.input(["pubspec.yaml"], inplace=True):
            if line.strip().startswith("version: "):
                prev_version, prev_build = tuple(line.split(":")[-1].strip().split("+"))
                line = f"version: {version_number or prev_version}+{build_number or prev_build}\n"
            sys.stdout.write(line)
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

    update(version_number=args.version_number, build_number=args.build_number)
