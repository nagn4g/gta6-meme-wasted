import { copyFile, mkdir } from 'node:fs/promises';
import { join } from 'node:path';

const botDir = process.env.MAKEFUN_BOT_DIR || '/bot';
const outputDir = process.env.MAKEFUN_OUTPUT_DIR || '/output';
const source = join(botDir, 'POST.json');
const destination = join(outputDir, 'POST.json');

try {
  await mkdir(outputDir, { recursive: true });
  await copyFile(source, destination);
} catch (error) {
  const detail = error instanceof Error ? error.message : String(error);
  console.error(`main.ts: could not copy ${source} to ${destination}: ${detail}`);
  process.exitCode = 1;
}
