#!/usr/bin/env python3

import time
import random
import sys
import signal
import os

# TODO: disable keyboard
#       cant really do that and send a signal through the keyboard
#       So disable every key except, ctrl and well,,,, the signal buttons.

bye_falicia = "): | D: | ); | D; | :$ |"
def sigint_handler(signum, handler):
    print("\n\n Camera and Recording has initiated. HI\n\n")
    sys.exit(0)

if __name__ == "__main__":
    faces = [":)", "^_^", "-_-", ":P", ";)",
             ".... Compiling ....",
             "-_-;", "^_^;", "(>^_^)>",
             "<(^_^)>", "<(^_^<)","^_-", "-_^", "=)"]

    signal.signal(signal.SIGILL, sigint_handler)

    random.seed()

    try:
        while (True):
            random.shuffle(faces)

            for face in faces:
                print(face, end=' | ')
            print()

            time.sleep(1)
    except KeyboardInterrupt:
        print("\n\n", bye_falicia)
