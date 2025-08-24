
====================================================================
             SETUP GUIDE FOR TAMU GRACE HPRC (with MobaXterm)
====================================================================

1. Download and Install MobaXterm:
   - Visit: https://mobaxterm.mobatek.net/download.html
   - Download the *Home Edition Installer* and install it on your system.

2. Launch MobaXterm and Start a New SSH Session:
   - Click the **Session** button in the top-left corner.
   - Choose **SSH** from the options.

3. Fill in the SSH Configuration:
   - Remote host: grace.hprc.tamu.edu
   - Check the box for "Specify username" and enter your **NetID**.
   - Port: 22 (default)
   - Ensure **X11 forwarding** is checked (for remote GUI apps).

4. Click **OK** to connect and enter your TAMU NetID password when prompted.

5. Navigate to your scratch directory:
   cd /scratch/user/<net-id>/

6. Setup Miniconda in your environment:
   wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda.sh
   bash ~/miniconda.sh -u -p ~/miniconda3
   /scratch/user/<net-id>/miniconda3/bin/conda init
   source ~/.bashrc

   - Confirm installation:
     conda --version
     conda info --envs
     You should see:
     base  *  /scratch/user/<net-id>/miniconda3

   - If `conda` is still not recognized:
     - Add this to `~/.bashrc`:
       export PATH="/scratch/user/<net-id>/miniconda3/bin:$PATH"
     - Reload config:
       source ~/.bashrc

7. Upload the project folder into:
   /scratch/user/<net-id>/

8. Navigate to the project directory:
   cd /scratch/user/<net-id>/<your-project-folder>/

9. Create and activate the Conda environment:
    conda create -n in-context-td python=3.10
    conda activate in-context-td

10. Install packages using:
     pip install .

11. Manually install any additional missing packages if needed using: 
    pip install <package-name>

12. Place your `run1.sh` script in the project directory:
    /scratch/user/<net-id>/<your-project-folder>/

13. Replace <net-id> in run1.sh and execute the training job:
    sbatch run1.sh

14. The output generated from program execution can be found in output.txt and error.txt

15. Training output figures will be saved in the following directories:
    i) ./logs/YYYY-MM-DD-HH-MM-SS/linear_standard/averaged_figures/ (aggregated results across all seeds)
    ii) ./logs/YYYY-MM-DD-HH-MM-SS/linear_standard/seed_SEED/figures/ (diagnostic figures for each individual seed)

Notes: Training on HPRC with the configuration mentioned in run1.sh takes nearly 40 minutes.

====================================================================
