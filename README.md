# ND_recognition

GPU-supported Jupyter notebook/lab/Google Colab via Docker Desktop for neurodegenerative disorders diagnostics.

## How to install & run

### (a) Jupyter Lab environment

1. Build docker image with script
```powershell
.\build.ps1
```

2a. Run jupyter server with script
```powershell
.\run_jupyter.ps1
```

3a. Open generated url with token
```
CTRL + RightClick on the link (Visual Studio Code)

CTRL + C and CTRL + V into browser (anywhere)
```

### (b) Google Colab environment

1. Build docker image with script
```powershell
.\build.ps1
```

2b. Run jupyter server with script
```powershell
.\run_colab.ps1
```

3b. Copy generated URL

4b. Open google colab and start a new notebook

https://colab.research.google.com/

5b. Connect to local runtime

On the top right select down-arrow next to "Connect"

Select "Connect to a local runtime"

Paste URL from step 3b and substitute "127.0.0.1" with "localhost", e.g.

http://127.0.0.1:8888/?token=6f25d065f21c99f9d0168032546a684aec6a22c185c3217d

to

http://localhost:8888/?token=6f25d065f21c99f9d0168032546a684aec6a22c185c3217d
