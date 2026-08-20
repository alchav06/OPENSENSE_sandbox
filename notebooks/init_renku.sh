#!/bin/bash
cd ..

echo 'Installing Python submodules into session venv...'
pip install -e ./pycomlink --no-deps
pip install -e ./PyNNcml --no-deps

echo 'Registering R kernel...'
Rscript -e "IRkernel::installspec()"

echo '...done'