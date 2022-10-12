# Managing Local Groups

## Create a Local Group

```bash
groupadd [options] [group_name] 
```

**Example**:
```bash
# Create `developers` group:
groupadd developers
```

- A user can have a primary group as well as secondary groups.
- When a user launches a program, the file runs with the permissions of the user and their group
- When a user creates a file, the user and group owners of the file are the user and their primary group

## Modify a Local Group

- `gpasswd [option] [group_name]`
- `groupmod [option] [group_name]`

- Add user to group:
```bash
gpasswd --add john developers` # or -a
```
- Remove user from group:
```bash
gpasswd --delete john developers` # or -d
```
- Change group name:
```bash
groupmod --new-name devs developers` # or -n
```

## Delete a Local Group

```bash
groupdel [group_name]
```

- Delete developers group:
```bash
groupdel developers
```

> Note: Groups that are set as primary for at least 1 user cannot be deleted

## Useful commands

- See the groups a user belongs to:
```bash
groups john
```

- Change primary group for user:
```bash
usermod -g developers john
```

- Change secondary groups for user:
```bash
usermod -G developers,root john
```
