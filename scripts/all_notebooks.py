from pathlib import Path
import json

p = Path('.')
flatten = lambda t: [item for sublist in t for item in sublist]

nb_paths = flatten([
    list(p.glob('wrapper/wplib/Notebooks/Tutorial.wpn')),
    list(p.glob('wrapper/wplib/Exercise_sheets/Lec_*.wpe')),
])

del nb_paths[1]

def nb_from_blocks(blocks):
    return {
        "exerciseSheet": False,
        "blocks": blocks
    }

if __name__ == '__main__':
    # print(nb_paths)
    blocks = []

    for notebook in nb_paths:
        if not notebook.exists():
            continue
        with notebook.open() as f:
            try:
                nb = json.load(f)
                if "blocks" not in nb:
                    raise Exception("Wrong JSON format.")
                nb["blocks"].append({"type": 'text', "text": '==='*20})
                # print(nb["blocks"])
                blocks.extend(nb['blocks'])
            except:
                print("TODO: something went wrong, skipping...")
                continue

    p = Path('./All_Notebooks.wpn')
    with p.open("w") as f:
        json.dump(nb_from_blocks(blocks), f, indent=2)
    # p.write_text(nb_from_blocks(blocks))
