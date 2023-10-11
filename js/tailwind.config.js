const {nextui} = require("@nextui-org/react");

/** @type {import('tailwindcss').Config} */
module.exports = {
  content: {
      files: [
        // ...
        "./node_modules/@nextui-org/theme/dist/**/*.{js,ts,jsx,tsx}",
        "../inst/examples/accordion/*.R",
        "../R/*.R"
      ],
      extract: {
        R: (content) => {
          let cls = content.match(/(?<=((?<=[\s,.:;"']|^)["']))(?:(?=(\\?))\2.)*?(?=\1)/);

        if(cls == null)
          return [];

        return cls[0].split(/\s/);
      }
    }
  },
  theme: {
    extend: {},
  },
  darkMode: "class",
  plugins: [nextui()],
};

