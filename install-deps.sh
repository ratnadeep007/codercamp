echo "Installing pre-defined dependencies"

npm install

echo "\n\n Tailwind css"

npm install -D tailwindcss@latest postcss@latest autoprefixer@latest
cp ../codecamp2/tailwind.config.js .
cat <<EOF >postcss.config.js
module.exports = {
  plugins: {
    tailwindcss: {},
    autoprefixer: {},
  },
}
EOF
cat <<EOF >src/index.css
@tailwind base;
@tailwind components;
@tailwind utilities;
EOF