pushd %~dp0
rem set REPO=C:\Users\klaasnienhuis\Documents\GitHub\sphinx-demo
rem md docs


  move docs html
  cd html
  call make.bat html

  cd ..
  move html docs


pause