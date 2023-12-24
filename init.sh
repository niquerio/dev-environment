#!/bin/bash

if [ -d ~/.config/nvim ]; then
  echo "📋 ~/.config/nvim exists. Leaving alone"
else
  echo "📋 ~/.config/nvim does not exist. Copying."
  cp -r nvim ~/.config/nvim
fi

if [ -f ~/.tmux.conf ]; then
  echo "📋 ~/.tmux.conf exists. Leaving alone"
else
  echo "📋 ~/.tmux.conf does not exists. Copying."
  cp .tmux.conf ~/.tmux.conf
fi

if [ -f ~/.bashrc ]; then
  echo "📋 ~/.bashrc exists. Leaving alone"
else
  echo "📋 ~/.bashrc does not exists. Copying."
  cp .bashrc ~/.bashrc
fi


