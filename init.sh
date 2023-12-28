#!/bin/bash

if [ -d ~/.config/nvim ]; then
  echo "📋 ~/.config/nvim exists. Leaving alone"
else
  echo "📋 ~/.config/nvim does not exist. Copying."
  cp -r nvim ~/.config/nvim
fi

if [ -d ~/.config/powerline-shell ]; then
  echo "📋 ~/.config/powerline-shell exists. Leaving alone"
else
  echo "📋 ~/.config/powerline-shell does not exist. Copying."
  cp -r powerline-shell ~/.config/powerline-shell
fi

if [ -d ~/.config/tmux-powerline ]; then
  echo "📋 ~/.config/tmux-powerline exists. Leaving alone"
else
  echo "📋 ~/.config/tmux-powerline does not exist. Copying."
  cp -r tmux-powerline ~/.config/tmux-powerline
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


