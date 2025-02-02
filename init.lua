--[[init.lua]]
--[[
                          &
                        &&&&
                     && &&&
                &    &&&&& &
               &&&&&&&&&|&&&&
             &&&&&&&&&&&&&&&&& &
               &&&&&&&&&&&&&&
               &&&&&&/&&|&&& &&&
               &&&&&/~&/&\~&&&&&
               &&&&&|\//~|\&&&&&&& &
          &&&&&&&&&\|&/|\&/&& &&
         &&&&&&&&&&&|//|\&&&&&       &
         &&&&&&\&_\\|\/|\&&&&/ &   & &&&
          && & \__ |\|/~/|\ & &&    &&&&
      &&  &&&&&_  /|\|/ /|\  &  &&&&&/&&
     &&&&__&&  && /\/~  |/       //_&/&&& &&
 & &&  &&&&&&      |/~~~        / /    &&&&
            & &  \/~~|/        \|
            &  &  //~/ / _//_/_/_/
                   \/~/   /
                    //~
       :___________./~~~\.___________:
        \         Init File         / 
         \_________________________/ 
         (_)                     (_)
]]

-- Set <space> as the leader key
-- Needs to be first in order to not be overwrited
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

require 'config'
require 'after'
