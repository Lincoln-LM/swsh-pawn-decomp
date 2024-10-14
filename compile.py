"""Compiles and disassembles .p files in the scripts directory"""

import subprocess
import os
import hashlib
import json
import glob
from pathlib import Path
from pawn_script import PawnDisassembler

with open("file_hashes.json", "r", encoding="utf-8") as f:
    file_hashes = json.load(f)

os.makedirs("build", exist_ok=True)
os.chdir("build")

for full_path in glob.glob("../scripts/*.p"):
    path = Path(full_path)
    script = path.stem

    print(f"Compiling {script}.p")
    subprocess.check_call(
        [
            "../gf-pawncc/build/compiler/gf-pawncc",
            f"../scripts/{script}.p",
            "-d0",
            "-i=../scripts/",
            "-a",
            "-S1024",
        ],
    )
    subprocess.check_call(
        [
            "../gf-pawncc/build/compiler/gf-pawncc",
            f"../scripts/{script}.p",
            "-d0",
            "-i../scripts/",
            "-S1024",
        ],
    )

    subprocess.check_call(["mv", f"../scripts/{script}.amx", "."])

    subprocess.check_call(["mv", f"../scripts/{script}.asm", "."])

    disasm = PawnDisassembler(f"{script}.amx")
    with open(f"{script}.pasm", "w+", encoding="utf-8") as f:
        f.write(disasm.infodump())
        f.write(disasm.disasm())
    disasm.dump_data(f"{script}.data.bin")

    subprocess.run(
        ["git", "diff", "--no-index", f"../disasm/{script}.pasm", f"{script}.pasm"],
        check=False,
    )

    with open(f"{script}.amx", "rb") as f:
        FILE_HASH = hashlib.sha1(f.read()).hexdigest()

    assert FILE_HASH == file_hashes[f"{script}.amx"], (
        FILE_HASH,
        file_hashes[f"{script}.amx"],
    )
