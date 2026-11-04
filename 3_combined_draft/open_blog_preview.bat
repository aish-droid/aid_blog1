@echo off
rem Opens the blog draft preview (blog_preview.html) through a small local web server.
rem The preview embeds the interactive pages in the sibling folder 2_cgd_interactives, so the server covers the whole cleaned_110426 folder.
rem Opening blog_preview.html by double-clicking it will NOT load the interactives.
rem
rem What this does each time you run it:
rem   1. closes servers left over from earlier runs of this file (window title "Blog preview server")
rem   2. picks the first free port from 8002 upwards
rem   3. starts the server minimised and opens the page in your default browser
rem Close the minimised "Blog preview server" window when you are done.
rem
rem To keep your text edits: tick "Edit text" on the page, type, then use "Download edited page" and save the file
rem in this same folder (3_combined_draft) so its figure links keep working.

cd /d "%~dp0.."

taskkill /F /T /FI "WINDOWTITLE eq Blog preview server*" >nul 2>&1

set PORT=8002
:findport
netstat -ano | findstr /R /C:":%PORT% .*LISTENING" >nul
if %errorlevel%==0 (
  set /a PORT+=1
  goto findport
)

where python >nul 2>&1
if %errorlevel%==0 (set PY=python) else (set PY=py)

start "Blog preview server" /min %PY% -m http.server %PORT%
timeout /t 2 /nobreak >nul
start "" http://localhost:%PORT%/3_combined_draft/blog_preview.html
