# new-projects

For making new projects. For example a NextJS page or Python project.

S every time I make a project I should make it using this and improve it with time.


## What is should do

[GUI App??](https://www.youtube.com/watch?v=iM3kjbbKHQU)

[Docs](https://docs.github.com/en/migrations/importing-source-code/using-the-command-line-to-import-source-code/adding-locally-hosted-code-to-github)

1. Create a github repo
CD FOLDER_PATH
git init
git add .
git commit -m "First Commit"




**NextJS**
1. Create a new NextJS project using npx create-next-app@latest --ts --eslint --no-interactive
[npx] (https://nextjs.org/docs/pages/api-reference/create-next-app)
npx create-next-app@latest <project-directory> --ts --eslint --app --use-pnpm
1. Have it in typescript.
1. Create a run batch file?

1. Choose name
1. Format it to folder name
1. Create the directory
1. Run: `npx create-next-app@latest <project-directory> --ts --eslint --app --use-pnpm`

**Python**
1. Create a .venv `python -m venv .venv`
1. Activate the .venv `source .venv/Scripts/activate` <!--  Mac: `source .venv/bin/activate` -->
1. Create a requirements file `pip freeze > requirements.txt`
1. Create a main.py, with:

```
def main():
    print("Main")

if __name__ == '__main__':
    main()
```


## Basics

Create a venv `python -m venv .venv` <!-- Name the folder whatever you want. -->

Activate it - Win: `source .venv/Scripts/activate` <!--  Mac: `source .venv/bin/activate` -->


### Requirements

`pip freeze > requirements.txt` - Create the requirements.txt
`pip install -r requirements.txt` - Installs it.
