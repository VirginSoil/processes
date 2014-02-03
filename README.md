This will serve as a folder to hold all of our proc files/nginx config and git update script.  Holla! :whale:


git_update will allow you to pull down all versions of master

**Procfile** needs to be changed depending on where in the file structure your apps live***

***Example**** 

## Procfile to get processes running

Take this repo and place it in the root path of the meta-project.  For example, your directories could look like:

```
PlantingSeason
|\
| processes/
| planting_season_auth/
| planting_season_coordinator/
| planting_season_API/

```

Install foreman if you don't have it already

```
gem install foreman
```

Then cd in to the processes directory (`cd processes`) run `foreman start` and all the processes will launch
