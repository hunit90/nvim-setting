return {
    'goolord/alpha-nvim',
    dependencies = {
        'nvim-tree/nvim-web-devicons',
        'nvim-lua/plenary.nvim'
    },
    config = function ()
        local alpha = require("alpha")
        local dashboard = require("alpha.themes.dashboard")

        -- set header
        dashboard.section.header.val = {
        "HHHHHHHHH     HHHHHHHHH                                    iiii          tttt          ",
        "H:::::::H     H:::::::H                                   i::::i      ttt:::t          ",
        "H:::::::H     H:::::::H                                    iiii       t:::::t          ",
        "HH::::::H     H::::::HH                                               t:::::t          ",
          "H:::::H     H:::::H  uuuuuu    uuuuuunnnn  nnnnnnnn    iiiiiiittttttt:::::ttttttt    ",
          "H:::::H     H:::::H  u::::u    u::::un:::nn::::::::nn  i:::::it:::::::::::::::::t    ",
          "H::::::HHHHH::::::H  u::::u    u::::un::::::::::::::nn  i::::it:::::::::::::::::t    ",
          "H:::::::::::::::::H  u::::u    u::::unn:::::::::::::::n i::::itttttt:::::::tttttt    ",
          "H:::::::::::::::::H  u::::u    u::::u  n:::::nnnn:::::n i::::i      t:::::t          ",
          "H::::::HHHHH::::::H  u::::u    u::::u  n::::n    n::::n i::::i      t:::::t          ",
          "H:::::H     H:::::H  u::::u    u::::u  n::::n    n::::n i::::i      t:::::t          ",
          "H:::::H     H:::::H  u:::::uuuu:::::u  n::::n    n::::n i::::i      t:::::t    tttttt",
        "HH::::::H     H::::::HHu:::::::::::::::uun::::n    n::::ni::::::i     t::::::tttt:::::t",
        "H:::::::H     H:::::::H u:::::::::::::::un::::n    n::::ni::::::i     tt::::::::::::::t",
        "H:::::::H     H:::::::H  uu::::::::uu:::un::::n    n::::ni::::::i       tt:::::::::::tt",
        "HHHHHHHHH     HHHHHHHHH    uuuuuuuu  uuuunnnnnn    nnnnnniiiiiiii         ttttttttttt  ",
        }

        -- set menu items
        dashboard.section.buttons.val = {
            dashboard.button( "n", "  > New file" , ":ene <BAR> startinsert <CR>"),
            dashboard.button( "f", "  > Find file", ":Telescope find_files<CR>"),
            dashboard.button( "w", "  > Find Word", ":Telescope live_grep <CR>"),
            dashboard.button( "r", "  > Recent"   , ":Telescope oldfiles<CR>"),
            dashboard.button( "q", "  > Quit", ":qa<CR>"),
        }

        alpha.setup(dashboard.opts)
    end
};
