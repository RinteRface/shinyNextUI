import { heroui } from "@heroui/theme"

/** @type {import('tailwindcss').Config} */
module.exports = {
  content: {
    files: [
      // ...
      "./node_modules/@heroui/theme/dist/**/*.{js,ts,jsx,tsx}",
      "../inst/examples/**/*.R",
      "../inst/showcase/modules/*.R",
      "../R/*.R"
    ],
    extract: {
      R: (content) => {
        let cls = content.match(/(?<=((?<=[\s,.:;"']|^)["']))(?:(?=(\\?))\2.)*?(?=\1)/);

        if (cls == null)
          return [];

        return cls[0].split(/\s/);
      }
    }
  },
  theme: {
    extend: {
      fontFamily: {
        sans: ["var(--font-sans)"],
        mono: ["var(--font-mono)"],
      }
    },
  },
  darkMode: "class",
  plugins: [heroui()],
};

