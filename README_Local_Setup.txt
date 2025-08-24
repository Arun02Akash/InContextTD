
====================================================================
    SETUP GUIDE FOR LOCAL MACHINE RUN (with VSCODE and MINICONDA)
====================================================================

1. Install Visual Studio Code:
   - Go to: https://code.visualstudio.com/
   - Download and install VS Code for your system (Windows/macOS/Linux).
   - Open VS Code after installation.

2. Install Miniconda:
   - Go to: https://www.anaconda.com/download/success
   - Download the Miniconda installer for your OS (64-bit, Python 3.x).
   - Run the installer and follow the setup instructions.

3. Add Miniconda to Your PATH (Windows):
   - Open the Start menu and search for “Edit the system environment variables.”
   - In the System Properties window, click Environment Variables (under the Advanced tab).
   - In the User variables section (for your username), select Path and click Edit.
   - Click New and add the following two paths:
           -  C:\Users\<username>\miniconda3
           -  C:\Users\<username>\miniconda3\Scripts

4. Open a new terminal on VSCode and confirm installation:
     conda --version
     conda info --envs
     You should see:
     base*  C:\Users\<username>\miniconda3

5. Upload the `InContextTD` project folder into the folder directory of your choice:
    - C:\Users\<username>\<project-directory>

6.  Open the project folder in VS Code, then launch a terminal and navigate to the same directory using:
   cd C:\Users\<username>\<project-directory>

7. Create and activate the Conda environment:
    conda create -n in-context-td python=3.10
    conda activate in-context-td

8. Install necessary libraries using pip:
    pip install .

9. Install any missing packages manually if required:
    pip install <package-name>

10. Execute the training job:
    python main.py --suffix=linear_standard -v

11. Training output figures will be saved in the following directories:
    i) ./logs/YYYY-MM-DD-HH-MM-SS/linear_standard/averaged_figures/ (aggregated results across all seeds)
    ii) ./logs/YYYY-MM-DD-HH-MM-SS/linear_standard/seed_SEED/figures/ (diagnostic figures for each individual seed)

Notes: Training locally took nearly 2 hours on my machine.

====================================================================
