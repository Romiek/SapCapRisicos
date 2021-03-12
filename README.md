# Getting Started

Welcome to your new project.

It contains these folders and files, following our recommended project layout:

File or Folder | Purpose
---------|----------
`app/` | content for UI frontends goes here
`db/` | your domain models and data go here
`srv/` | your service models and code go here
`package.json` | project metadata and configuration
`readme.md` | this getting started guide

## Setup
follow instructions on https://cap.cloud.sap/docs/advanced/deploy-to-cloud#build-config
cf install-plugin multiapps
npm install -g mbt
download gnumake-4.3-x64 -> Place in folder and rename to make.exe. Add this folder to PATH

## Next Steps

- Open a new terminal and run `cds watch` 
- (in VS Code simply choose _**Terminal** > Run Task > cds watch_)
- Start adding content, for example, a [db/schema.cds](db/schema.cds).


## Learn More

Learn more at https://cap.cloud.sap/docs/get-started/.

## Commands

cf login
cds init <projectName>
cds watch
cds add mta

-- build
cds build
mbt build
cf deploy SapCapRisicos_1.0.0.mtar