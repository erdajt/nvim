<h1 align="center">My neovim config</h3>

<img width="1919" height="1078" alt="image" src="https://github.com/user-attachments/assets/b290db0b-8f8b-4d6c-b559-31c029ead2f5" />

<a name="readme-top"></a>


[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]


<!-- PROJECT LOGO -->
<br />
<div align="center">
  
<img width="1915" height="1080" alt="image" src="https://github.com/user-attachments/assets/5b53e83b-8168-4126-898e-f83b7437e52e" />


<h2 align="center">NOTE: my config has been rewritten. for the old version go to: <a href="https://github.com/ErdajtSopjani/nvim/tree/old">Old branch</a>

  <p align="center">
    My personal neovim config with all my plugins and shortcuts
    <br />
    <br />
    ·
    <a href="https://github.com/ErdajtSopjani/nvim/issues">Report Bug</a>
    ·
    <a href="https://github.com/ErdajtSopjani/nvim/issues">Request Feature</a>
  </p>
</div>


<!-- ABOUT THE PROJECT -->
## About

<img width="861" height="104" alt="image" src="https://github.com/user-attachments/assets/ea69b5cf-8941-46a6-b3f0-a88876c42002" />

Everyone needs their own setup or tweak to the software they use everyday, to guarantee productivity and most importantly ***fun*** while working/coding.

This is just my config with these features

* Language servers (LSP)'s
* Custom transparency keybinds, for tiling wm users. ```<Leader>+t+t``` to toggle transparency
* Custom terminal shortcuts to open terminals inside the editor in 3 possible places. ```<Alt>+1 or <Alt>+2 or <Alt>+3```
* Snacks as a fuzzyfinder to quickly navigate through your codebase. ```<Leader>+s``` to see all available shortcuts
* Bufferlines and Bufferwindows for better awareness while coding.
* Nvimtree as the file *"tree"* for devs that are used to that. ```<Leader>+e``` to toggle it
* Different colorschemes with a shortcut to switch between them. ```<Leader>+t+h```
* Custom git client
* Markdown view toggle
* Custom DB client

And alot more, pretty much anything you can think of that would be neat to have.

The Leader key is set to space

And alot more features that help you improve your productivity.
I'm not suggesting you to use my config! 

I'm suggesting you make your own, If you don't know how to get started check out: 
    [Kickstarter.nvim](https://github.com/nvim-lua/kickstart.nvim).
It's how I started this config too as you can see in the commit history.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<img width="1916" height="1080" alt="image" src="https://github.com/user-attachments/assets/cefcec12-1daf-4130-a4d3-33dd44741c4c" />

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- GETTING STARTED -->
## Getting Started

Although I recommend you to make your own config,
Here are a couple of steps you can follow to get started with using nvim

### Installation

1. Make sure you have neovim installed: [Read more about it here](https://github.com/neovim/neovim/blob/master/INSTALL.md)

2. Clone my config

   ```sh
      git clone https://github.com/ErdajtSopjani/nvim
   ```
   
3. Make sure you have the necessary tools/languages installed for the LSP's here is the command for arch-based distros:
   ```sh
     sudo pacman -S nodejs clang python3 dotnet-sdk lua
   ```
   
5. Run neovim and let lazy install the plugins
   ```sh
     nvim
   ```
   
![Wed Apr 17 02:05:25 PM CEST 2024](https://github.com/ErdajtSopjani/nvim/assets/120386306/ec5ec858-d0b2-447e-afe8-102e22dc0d7e)


<p align="right">(<a href="#readme-top">back to top</a>)</p>



For the new dashboard, install: `gh ext install meiji163/gh-notify`

<!-- USAGE EXAMPLES -->
## Usage

If your're not familiar with vim/neovim and you want to get started open up neovim ```nvim``` and run ```:Tutor```.
This will open up a window that will guide you through vim bindings: 

![Wed Apr 17 02:14:02 PM CEST 2024](https://github.com/ErdajtSopjani/nvim/assets/120386306/a09e7840-f9ae-4c57-b613-ff9262c38bd8)


If you want more info on the keybinds you can press SPACE as it's set as the main key.
And a plugin called which key will guide you through the shortcuts:

![Wed Apr 17 02:03:49 PM CEST 2024](https://github.com/ErdajtSopjani/nvim/assets/120386306/87342ac1-2eca-4599-accd-f387e06c8566)

<p align="right">(<a href="#readme-top">back to top</a>)</p>




<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/ErdajtSopjani/nvim?style=for-the-badge
[contributors-url]: https://github.com/ErdajtSopjani/nvim/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/ErdajtSopjani/nvim?style=for-the-badge
[forks-url]: https://github.com/ErdajtSopjani/nvim/network/members
[stars-shield]: https://img.shields.io/github/stars/ErdajtSopjani/nvim?style=for-the-badge
[stars-url]: https://github.com/ErdajtSopjani/nvim/stargazers
[issues-shield]: https://img.shields.io/github/issues/ErdajtSopjani/nvim?style=for-the-badge
[issues-url]: https://github.com/ErdajtSopjani/nvim/issues
[Bootstrap.com]: https://img.shields.io/github/languages/top/ErdajtSopjani/nvim?color=purple&style=for-the-badge
[Bootstrap-url]: https://dotnet.microsoft.com/en-us/download
