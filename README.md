# Oh-my-posh

### .bashrc (Linux)
```
eval "$(oh-my-posh init bash --config 'https://raw.githubusercontent.com/seabro/omp/refs/heads/main/customtheme.omp.toml')"
```

### .zshrc (MacOS)
```
eval "$(oh-my-posh init zsh --config 'https://raw.githubusercontent.com/seabro/omp/refs/heads/main/customtheme.omp.toml')"
```

### .pwsh (WIN)
```
notepad $PROFILE
oh-my-posh init pwsh --config "c:\Users\username\.config\customTheme.omp.toml" | Invoke-Expression
```
