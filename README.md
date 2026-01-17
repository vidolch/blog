# Vidol Chalamov's Blog

Personal blog built with [Hugo](https://gohugo.io/) using the [hugo-paper](https://github.com/nanxiaobei/hugo-paper) theme.

## 🚀 Live Site

The blog is automatically deployed to GitHub Pages at: [https://chalamov.dev/](https://chalamov.dev/)

## 📝 About

This is the personal blog of Vidol Chalamov, featuring posts about technology, programming, and personal experiences.

## 🛠️ Development

### Prerequisites

- [Hugo Extended](https://gohugo.io/installation/) version 0.121.0 or higher

### Local Development

1. Clone the repository with submodules:
```bash
git clone --recurse-submodules https://github.com/vidolch/blog.git
cd blog
```

2. If you already cloned without submodules, initialize them:
```bash
git submodule update --init --recursive
```

3. Run the development server:
```bash
hugo server -D
```

4. Open your browser and visit `http://localhost:1313`

### Building

To build the site for production:
```bash
hugo --gc --minify
```

The built site will be in the `public/` directory.

## 🚢 Deployment

The site is automatically deployed to GitHub Pages using GitHub Actions whenever changes are pushed to the `main` or `master` branch.

The deployment workflow:
1. Installs Hugo
2. Checks out the code with submodules
3. Builds the site
4. Deploys to GitHub Pages

### Manual Deployment

You can also manually trigger the deployment from the [Actions tab](https://github.com/vidolch/blog/actions) in GitHub.

## 📂 Project Structure

```
.
├── .github/
│   └── workflows/
│       └── deploy.yml       # GitHub Actions workflow for deployment
├── archetypes/              # Content templates
├── content/                 # Blog content
│   ├── about-me.md         # About page
│   └── posts/              # Blog posts
├── static/                  # Static files (images, etc.)
├── themes/                  # Hugo themes
│   └── hugo-paper/         # The hugo-paper theme (submodule)
└── hugo.toml               # Hugo configuration
```

## 📄 License

This blog's content is copyrighted by Vidol Chalamov. The Hugo theme used is licensed under its own terms.

## 🔗 Connect

- GitHub: [@vidolch](https://github.com/vidolch)
- LinkedIn: [vidolch](https://linkedin.com/in/vidolch)
- Instagram: [@vidol_ch](https://instagram.com/vidol_ch)
