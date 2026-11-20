# WASTED: 3 Years of Waiting

This entry turns the long GTA 6 wait into a GTA-style death screen. Three years and two delays later, the make.fun ghost is already paid while the player waits on the curb.

`design.html` builds the 1600×1600 sunset scene and references the make.fun ghost press-kit image. `render.sh` captures it as `meme.png` with local headless Chromium. `main.ts` copies the post URL file for the grader; `POST.json` holds a placeholder until the post is published.

Run the grader program from this repository with:

```sh
mkdir -p out && MAKEFUN_BOT_DIR=. MAKEFUN_OUTPUT_DIR=out node main.ts
```

The program creates the output directory if needed and copies `POST.json` to `out/POST.json`. After publishing the meme from a public X account, replace the placeholder URL with the post’s status URL.
