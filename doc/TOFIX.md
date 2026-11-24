# TOFIX

Findings from a code scan on 2026-10-04.

## High

- `scripts/deploy.sh:4` - `kubectl create -f '*.yaml'` quotes the glob, so the shell does not expand it and kubectl (which does not glob) fails with "the path \"*.yaml\" does not exist"; same in `scripts/delete.sh:3`. Use `kubectl create -f .` (or unquote the glob and pass each file with its own `-f`).

## Medium

- `exercises/05_create_my_image_run_it_and_see_logs/deployment.yaml:18` - uses image `03_create_my_image_run_it_and_see_logs`, but `build.sh` tags the image with the folder name `05_create_my_image_run_it_and_see_logs`; with `imagePullPolicy: Never` the pod ends in `ErrImageNeverPull`. Renumbering leftover; use the current folder name.
- `exercises/07_apply_vs_run/deployment.yaml:17` - same renumbering leftover: image `04_apply_vs_run`, while `build_minikube.sh` / `build_docker.sh` tag `07_apply_vs_run`; fix the image name.
- `exercises/06_create_websever_and_port_forward_to_it/run.sh:3` - runs image `flask_app`, but `build.sh:3` tags it `flask:local`; `move_to_k8s.sh:3` saves `flask` (i.e. `flask:latest`), which also does not exist. Use `flask:local` consistently.
- `exercises/04_first_service/undeploy.sh:3` - `kubectl delete -f ./*.yaml` expands to `-f a.yaml b.yaml c.yaml`; only the first file is a `-f` argument and the rest are parsed as resource names, so the command errors out. Use `kubectl delete -f .`.
- `exercises/20_using_helm/connect.sh:13` - inside the single-quoted `bash -c` string, `--password=\$\{MYSQL_ROOT_PASSWORD\}` escapes the `$` and braces, so the inner bash passes the literal text `${MYSQL_ROOT_PASSWORD}` as the password and login fails; use `--password="${MYSQL_ROOT_PASSWORD}"` unescaped inside the single quotes.
- `exercises/10_use_kubectl_run_directly/exercise.md:5` - the command reads `kubectl run kubectl run nginx ...` (duplicated) and uses `--replicas`, which `kubectl run` no longer supports (it only creates a single pod); line 6 also tells the student to use `kubectl kill`, which does not exist (`kubectl delete pod`). Rewrite with `kubectl create deployment nginx --image=nginx --replicas=2`.

## Low

- `exercises/30_mucho_virtual_ram/exercise.md:1` - the text is a copy of exercise 12 ("Limit memory of pod", "Create a python program"), while this exercise is a C program that allocates virtual memory (`app.c`); write the matching description.
- `exercises/30_mucho_virtual_ram/app:1` - a compiled static ELF binary is committed; it is the output of `before_build.sh` and should be built, not tracked (remove it and add it to the build steps).
- `exercises/00_install_infra/install_kind_and_kubectl.txt:8` - `kubectl -version` is not a valid command (`kubectl version --client`), and the `go get sigs.k8s.io/kind@v0.9.0` instructions (line 25) no longer install binaries on current Go (`go install sigs.k8s.io/kind@latest`); update or delete the file in favour of `install_kubectl_minikube.sh`.
- `exercises/00_install_infra/install_kubectl_minikube.sh:30` - appends the PATH line to `~/.bashrc` unconditionally, so every re-run adds another duplicate line; check with `grep -q` first.
- `exercises/11_first_job/app.py:4` - docstring says "sum of squares until 1,000,000" but the loop runs to 100,000,000 (line 15); `exercises/24_logs/app.py:4` carries the same copied docstring for a program that just counts. Fix the docstrings.
