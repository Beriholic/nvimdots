---@type ChadrcConfig
local M = {}

M.ui = {
    theme = "aquarium",
    theme_toggle = { "aquarium", "aquarium" },

    hl_override = {
        NvDashAscii = {
            bg = "none",
            fg = "blue",
        },

        -- NvDashButtons = {
        --   bg = "none",
        --   fg = "light_grey",
        -- },
    },
    -- hl_override = highlights.override, hl_add = highlights.add,
    nvdash = {
        load_on_startup = true,

        -- header = {
        --   "           ▄ ▄                   ",
        --   "       ▄   ▄▄▄     ▄ ▄▄▄ ▄ ▄     ",
        --   "       █ ▄ █▄█ ▄▄▄ █ █▄█ █ █     ",
        --   "    ▄▄ █▄█▄▄▄█ █▄█▄█▄▄█▄▄█ █     ",
        --   "  ▄ █▄▄█ ▄ ▄▄ ▄█ ▄▄▄▄▄▄▄▄▄▄▄▄▄▄  ",
        --   "  █▄▄▄▄ ▄▄▄ █ ▄ ▄▄▄ ▄ ▄▄▄ ▄ ▄ █ ▄",
        --   "▄ █ █▄█ █▄█ █ █ █▄█ █ █▄█ ▄▄▄ █ █",
        --   "█▄█ ▄ █▄▄█▄▄█ █ ▄▄█ █ ▄ █ █▄█▄█ █",
        --   "    █▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄█ █▄█▄▄▄█    ",
        -- },
        -- header = {
        --   [[⠀⠐⢐⢐⠔⡐⡡⠀⠀⠀⠀⠀⠇⠁⠀⠀⠀⠀⠀⢂⢊⢄⣠⣐⣐⣌⢍⡛⡻⠿⠿⣿⣿⡇⢂⠰⣽⣻⠀⡂⣲⢽⢽⠽⠚⠉⣁⣤]],
        --   [[⠀⠈⡐⠄⢕⠐⠌⠀⠀⠀⠀⡀⠁⠀⡀⣄⡴⣖⡾⣯⢿⣝⡲⣭⡳⢯⡿⣽⢯⣟⣶⠄⠉⠨⢀⢘⢞⡎⡐⣼⢯⠏⠁⢀⣤⣾⣿⣿]],
        --   [[⠀⠀⠐⢅⠑⢌⢐⢀⠀⠀⠄⢀⣴⣺⢽⣳⢷⡝⣯⢿⣽⢬⠻⣶⡹⣷⡹⢯⣟⡷⡇⠀⢀⡀⠀⠀⠙⡆⣸⢏⠆⠀⣠⣿⣿⣿⣿⣿]],
        --   [[⠀⠐⠈⠠⡑⢌⢢⢑⠄⣰⢼⢳⡳⣯⢿⢼⡯⡿⣎⢿⣞⣟⣷⡱⡹⣮⢫⡧⡻⣽⡄⠀⠀⠈⠃⠄⠀⠈⠺⡈⠄⡂⢅⢠⢢⡹⣝⠻]],
        --   [[⠀⠀⠀⡑⡌⣊⠢⣱⢼⣽⡫⣿⣹⢽⣯⡳⣟⣯⢿⡎⢷⣻⢾⡽⡜⡜⣷⡹⡿⣜⢟⡶⣄⡄⡀⠀⠀⠀⠀⠈⣲⢮⣻⣳⡻⣝⠯⡯]],
        --   [[⠀⠀⠀⠢⡊⢢⣱⢯⣿⣺⣺⢷⢹⣻⢾⢽⡎⣯⢿⣽⡢⢻⢽⡯⣿⡹⣆⢯⡫⡿⣮⢹⠦⠧⢭⢻⢽⣺⡰⡐⠌⠪⡢⡊⢎⢍⢛⢮]],
        --   [[⠀⡈⠀⠕⢌⣞⡯⣳⣳⢧⣻⣻⢸⡾⣽⢯⣗⢝⣿⣺⣧⠱⡙⣭⡵⣵⢘⢶⡹⣜⢯⣷⢙⢛⣚⡮⢧⡹⡷⣌⠵⡄⠈⠘⢐⠕⠌⡂]],
        --   [[⠠⠀⡘⢬⢯⡿⣼⡳⡽⡇⣷⡻⡕⣿⢽⣻⢾⡜⣺⡳⣻⢌⢺⢼⢹⣻⢼⣔⢝⢾⡹⣞⣷⢰⢣⣵⡝⣮⡹⡷⣕⢽⡄⠀⠀⠻⣳⣄]],
        --   [[⠀⡂⣰⢯⢯⡳⣗⢽⡯⡇⣟⣧⢻⣞⡯⣿⢽⣳⡸⡗⡜⡇⢝⡷⣑⡙⢊⣉⣉⡘⠝⡺⣽⣎⢮⢺⠔⢜⣇⠻⣽⡆⢷⠀⠀⠀⠹⣞]],
        --   [[⣄⢰⡯⣿⢽⣺⣇⢿⡽⡇⣝⡞⡊⢭⢿⡸⢯⣷⣳⡹⣸⢱⣹⡰⡂⣴⠋⠁⠙⢻⣦⠨⣳⢿⡸⡬⡸⣜⠪⢫⢮⡻⡜⡅⠀⢀⠀⠸]],
        --   [[⢢⡿⣽⢯⣗⡽⣎⢯⡯⣗⢕⡜⣽⡨⢹⢳⣅⢻⡺⢇⢛⣞⣮⢿⢼⢧⠛⠀⠀⠠⡷⡽⣜⣯⡧⣻⣽⡣⡑⢅⢇⠧⣯⠢⠀⠀⢆⠀]],
        --   [[⣼⣫⢿⣱⣗⢯⣗⡗⣿⡊⢎⣟⣦⡓⡕⢳⡱⣵⣺⢯⡯⣗⣯⢿⢽⣻⢦⣀⢢⡰⡝⡝⡮⣺⣽⢼⣞⡗⢌⠢⣹⣸⢯⣇⠀⠀⣪⠄]],
        --   [[⣗⡽⣯⣳⣗⢧⢳⣻⡌⢷⡑⢬⣳⠋⣡⠖⠒⠢⣯⢯⡯⣟⣞⣯⢿⣺⢯⡯⡷⣝⢮⡳⣽⡸⣾⡪⣾⣲⣳⢵⠣⣿⢽⡗⠀⠀⣷⢱]],
        --   [[⢕⣟⡷⣽⢾⡝⣆⢪⢻⡔⢼⡬⡆⢰⣿⠰⠂⠀⠹⡽⣽⢹⢾⢽⡽⣞⣯⢿⢽⣽⣳⣻⣺⡎⣯⡇⣿⠪⡉⡋⡵⢽⢯⡇⠀⠀⣿⣪]],
        --   [[⢸⡯⡯⣞⣯⢿⣘⢆⠱⡨⡨⢽⣫⢄⡻⣧⡀⠠⡨⡯⣗⣯⢿⢽⣽⣻⣺⡽⣏⣺⣞⣗⣯⡗⣽⡧⡫⢢⢑⠌⢯⢺⣻⠅⠀⢨⣷⣳]],
        --   [[⢸⡯⡯⣻⣞⣿⡸⡥⡑⢔⢘⢌⡫⣯⣟⡼⣝⢝⡽⣽⣻⣺⢯⣟⣾⣺⣳⢟⡴⣗⣷⣻⣺⣝⢞⣗⠍⡢⢡⠣⢹⣺⡝⠀⠀⣺⣞⡷]],
        --   [[⢸⣻⡯⣺⣗⡿⣎⣷⠨⠢⡑⠔⢅⠣⣳⢝⢦⡳⣝⣗⣟⡾⣝⢺⣺⣱⢯⡯⣯⣟⣞⣗⣟⣮⢫⡗⡑⢌⠢⢑⢑⣷⠃⠀⢰⣻⣞⣯]],
        --   [[⠘⣾⢽⢼⣳⣟⣗⡿⡌⡪⡘⢌⠔⢅⢂⢫⣗⡯⣗⣟⡾⣽⢽⢯⣗⣯⢿⢽⣳⣗⣟⣞⣷⡻⢸⡞⢌⢢⠐⠀⣰⠗⠀⢀⣟⢞⡞⡷]],
        --   [[⠀⢿⢝⣷⣻⣞⣷⣻⢷⠨⡨⠢⡑⡱⡐⢄⠳⣟⡽⡾⣽⢽⢯⣟⡾⣽⢽⢯⣗⣷⣻⣞⠞⢌⢺⡏⡌⡢⡑⢠⠞⠀⠀⡞⢼⡝⢡⢏]],
        --   [[⠀⠀⠀⠀⠈⠉⠚⠫⠿⣇⢊⢪⠨⡂⢎⠢⠢⡢⡙⠻⠽⣽⣻⣺⡽⣽⢽⣻⣺⣳⠗⢅⠕⢅⢽⢊⠆⢕⠐⠌⠀⠌⠀⠰⠋⠀⠎⢮]],
        --   [[⠀⠀⠐⠈⠀⠀⠄⠀⢀⠀⠈⠐⠑⠌⠆⡅⠣⡪⡘⢌⢊⠢⡢⡑⢍⠝⠍⠋⢋⠪⡘⢔⢑⠅⡟⡌⡪⡘⠠⠀⠀⠀⠀⠀⠀⢀⠀⠈]],
        --   [[⠀⠀⠄⠀⠠⠀⠠⠀⠀⠀⠐⠀⠠⡐⢌⠪⡈⢆⠪⡢⠡⠑⠔⢅⣑⡑⠀⠀⠀⠑⢜⢐⢅⢕⢇⠪⢢⠑⡀⠀⠀⠁⠀⠈⠀⠀⠀⠀]],
        --   [[⠀⠀⠀⠀⡀⠀⡀⠀⠈⢀⡄⢶⡑⢌⠂⢕⢌⠢⠁⠀⠀⠀⣝⢜⠦⠁⠀⠀⠀⠁⠡⡑⠔⢕⢌⠪⢢⠁⠀⠀⠀⠄⠀⠀⡀⠐⠀⠀]],
        --   [[⠀⠀⡀⠁⠀⠀⢀⢤⢾⣎⢿⡄⠻⣌⠪⡀⠈⠊⠢⠀⡀⢨⡪⣪⠃⠀⡀⠠⠀⠠⠐⠈⢌⠆⢆⠣⡑⠀⠀⠂⠀⠀⠀⠀⠀⡀⠀⠄]],
        -- },
        --
        -- header = {
        --     [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⣤⡀⠀⠹⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
        --     [[⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⠀⠀⠙⠛⠂⠀⠀⠹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
        --     [[⠀⠀⠀⠀⠀⠀⢠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣤⣤⣤⣤⡀⠀⠀⢸⣿⣿⣿⣦⠉⠉⠉⠛⠋]],
        --     [[⠀⠀   ⣠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡏⢻⣿⡿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡆⠀⣌⢿⣿⣿⣿⣷⡀⠀⠀⠀]],
        --     [[⠀⠀ ⠀⢡⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⡈⣿⣿⡹⣿⣿⡹⣿⣿⣿⣿⣿⣿⣟⣫⣤⣿⣿⣿⡇⠀⠈⢷⣝⣿⣿⣿⣷⡀⠀⠀]],
        --     [[⠀⠀⠀⢀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠹⣿⣷⣜⣿⣧⢻⣿⣧⡘⢿⣿⣿⣿⣿⣿⣿⡿⢛⣿⣿⡇⠀⠀⠀⠉⢻⣿⣿⣿⣷⡀⠀]],
        --     [[⠀⠀ ⣼⣿⣿⣿⣿⣿⣿⣿⣿⣯⣿⣿⡇⢹⣿⣿⣭⣯⣧⠻⣿⣷⣌⠻⣿⣿⣿⡿⢟⣡⡿⢿⣿⡇⠀⠀⠀⠀⠀⠙⠿⣿⣿⣿⠀]],
        --     [[⠀⠀ ⣿⣿⣿⣿⣿⡿⡏⣿⣿⣿⡸⡟⣷⢸⣿⠟⣻⣭⠯⠦⠝⠿⠿⢷⣿⣿⣿⡶⣿⠟⢡⢿⣿⡇⠀⠀⠀⢰⣄⡀⠀⠀⣹⣿⣾]],
        --     [[⠀⠀⣼⣿⣿⣿⣿⣿⠁⡇⣸⣿⢿⣧⠁⣼⣿⣿⣴⠋⣀⠀⠀⠀⠆⣦⣠⣽⣿⣿⣏⣀⣠⠏⠼⣿⡇⠀⠀⠀⢸⣿⣿⣿⣾⣿⣿⣿]],
        --     [[⠀⠀⣿⣿⣿⣿⣿⣿⢸⠷⣛⣛⠛⢿⣷⣿⣿⣿⣿⣶⣿⡀⠀⠀⢀⣿⣿⣿⣿⣿⣿⣿⣿⣶⣋⣿⡇⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿]],
        --     [[⠀⠀⣿⣿⣿⣿⣿⣿⠘⠎⢁⠀⠀⠼⣿⣿⣿⣿⣿⣿⣿⣿⣤⣴⣾⣿⣿⣿⣿⣿⣿⣿⣿⣷⠀⢸⡇⠀⠀⠀⢸⣿⣿⡏⣿⣿⣿⣿]],
        --     [[⠀⢸⣿⢿⣿⣿⣿⣿⠀⢀⢻⣄⠀⢀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠋⠀⢸⡇⠀⠀⢠⣾⣿⣿⡇⣿⣿⣿⣿]],
        --     [[⠀⢸⣿⢸⣿⣿⣿⣿⠀⠀⣷⣿⡖⣸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⣤⢼⣿⣤⣶⣿⣿⣿⣿⡇⣿⣿⣿⣿]],
        --     [[⠀⢸⣿⢸⣿⣿⣿⣿⠀⠀⢸⣿⣷⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⠁⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⠇⣿⣿⡏⢸]],
        --     [[⠀⠘⣿⠘⣿⣿⣿⣿⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠏⠀⠀⠀⠀⢰⣿⣿⣿⡇⣿⣿⣿⢀⣿⣿⠇⣿]],
        --     [[⠀⠀⣿⠀⢿⡸⣿⣿⠀⠀⠈⣿⣿⣿⣿⣿⣿⣻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠏⠁⠀⠀⠀⠀⠀⣾⣿⣿⣿⢁⣿⣿⠇⣸⣿⡟⣸⠃]],
        --     [[⠀⠀⢻⡀⠘⣇⢻⣿⡇⠀⠀⠈⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⣿⡟⠀⠀⠀⠀⠀⠀⢰⣿⣿⣿⠃⠜⣿⠏⠐⢫⠋⠔⢁⣼]],
        --     [[⠀⠀⠈⣇⠀⠹⡄⢻⣷⠃⠀⠀⠀⠈⠻⢿⣿⣿⣿⣿⣿⠿⠟⠋⠁⢰⡟⠀⠀⠀⠀⠀⠀⢀⣿⣿⡿⠃⠀⡸⠋⢺⠁⠀⠀⣠⣿⣿]],
        --     [[⠀⠀⠀⠹⡄⠀⢹⣆⢻⣿⠀⠀⠀⠀⠀⠀⠉⠉⠉ ⠀⠀⠀⠀⠠⠋⠀⠀⠀⠀⠀⠀⠠⠚⠛⠁⠀⠀⠀⠀⠀⠘⠀⠀⢸⣿⣿⣿]],
        --     [[⠀⠀⠀⠀⠈⠀⢸⣿⣗⣻⡀⠀⠀⠀ ⠀⣀⣠⣀⠠⠓⠈⠀ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣾⠀⠀⠘⣿⣿⣿]],
        --     [[⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⠑⠀⠀⠀⠀⠙⢿⠟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠲⢤⣄⡀⠀⠀⠀⠀⠀⢰⣿⠀⠀⠀⠈⢻⣿]],
        --     [[⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢿⣷⣦⣀⠀⠀⠀⠙⠀⠀⠀⠀⠀⠹]],
        --     [[⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⠀⠀   ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢿⣿⣷⣄⠀⠀⠀⠀⠀⠀⠀⠀]],
        -- },
        header = {
            [[      ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
            [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢷⡀⠀⠀⠀⣸⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
            [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣿⣿⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣷⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
            [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⣿⣿⣿⣷⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
            [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⢦⣄⠀⠀⠀⠀⣰⣿⣿⣿⣿⣿⣷⡄⠀⠀⠀⠀⠀⠀⠀⢠⣿⣿⣿⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
            [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠳⣄⠀⣰⣿⣿⣿⣿⣿⣿⣿⣿⣦⡀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣧⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
            [[⠀⠀⠀⠀⠀⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣄⠀⠀⠀⠀⢰⣿⣾⡿⠿⠿⢿⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
            [[⠀⠀⠀⠀⠀⣾⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⣿⣿⠟⠋⢁⣀⡀⠹⣿⣿⣿⣿⣿⣷⡄⠀⠀⢸⡟⣁⡤⠤⢤⡀⠙⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
            [[⠀⠀⠀⠀⠀⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⠟⢁⣤⣾⣯⠉⠙⣷⣾⣿⣿⣿⣿⣿⣿⡄⠀⣼⠟⠿⢏⠀⠈⣿⠀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
            [[⠀⠀⠀⠀⠀⢹⡇⠀⠀⠀⠀⠀⠀⠀⠀⠸⠏⢠⣾⠃⠙⠋⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣷⣧⣿⠀⠀⠀⠀⢀⣿⣴⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
            [[⠀⠀⠀⠀⠀⠀⠻⠀⠀⠀⠀⠀⠀⠀⠀⠀⣦⣸⣿⠀⠀⠀⠀⠀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣆⡀⠾⣠⣾⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
            [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⣿⣿⣧⣄⣁⣛⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
            [[⢷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
            [[⡈⢿⣷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
            [[⣿⣦⡻⣿⣷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
            [[⣿⣿⣿⣾⣿⣿⣷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠅⠀⠀⠀⠀⠀⠀⠀⠀⣠⣆⠀⠀⠀]],
            [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣄⢠⡄⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣻⣭⣿⣿⣿⣿⣿⣿⣽⣿⣿⠀⠀⠀⠀⠀⠀⠀⣠⣞⣿⡿⣀⠀⠀]],
            [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡳⣿⣆⠀⠀⠀⠀⢀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢿⣯⣷⣿⣿⣿⣿⣿⡇⠀⠀⠀⢠⡶⣾⢿⣾⣿⣿⣿⡄⠀]],
            [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣌⠻⡆⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣾⣍⢽⣟⣿⣽⣿⣿⣿⣿⣿⣿⡇⠀⠀⣠⢟⣞⣵⣿⣿⣿⣿⣿⣷⠀]],
            [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣜⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠀⣠⡾⣛⣵⣿⣿⣿⣿⣿⣿⣿⡟⠀]],
            [[⣻⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣔⠀⠘⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣾⣫⣾⣿⣿⣿⣿⣿⣿⣿⡿⠋⠀⠀]],
            [[⣿⣷⣝⡿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣄⡻⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠋⠀⠀⠀⠀]],
            [[⣿⣿⣿⣿⣮⣿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣭⣛⡻⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠛⠁⠀⠀⠀⠀⠀⠀]],
        },


        buttons = {
            { "  Find File", "Spc f f", "Telescope find_files" },
            { "󰈚  Recent Files", "Spc f o", "Telescope oldfiles" },
            { "󰈭  Find Word", "Spc f w", "Telescope live_grep" },
            { "  Bookmarks", "Spc m a", "Telescope marks" },
            { "  Themes", "Spc t h", "Telescope themes" },
            { "  Mappings", "Spc c h", "NvCheatsheet" },
        },
    },
    statusline = {
        theme = "vscode_colored", -- default/vscode/vscode_colored/minimal
        -- default/round/block/arrow separators work only for default statusline theme
        -- round and block will work for minimal theme only
        separator_style = "default",
        overriden_modules = nil,
    },
    telescope = { style = "bordered" }, -- borderless / bordered

    -- cmp themeing
    cmp = {
        icons = true,
        lspkind_text = true,
        style = "atom",               -- default/flat_light/flat_dark/atom/atom_colored
        border_color = "grey_fg",     -- only applicable for "default" style, use color names from base30 variables
        selected_item_bg = "colored", -- colored / simple
    },
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"
require "custom.plugins"

return M
