local ls = require("luasnip");


local s = ls.s;

local fmt = require("luasnip.extras.fmt").fmt;

local i = ls.insert_node;

local rep = require("luasnip.extras").rep;

ls.snippets = {
  java = {
    s("soutv", fmt("System.out.println(".."{} --> ".. "+ {});", { i(1, "---"), rep(1)}));
  },
  lua = {
    s("soutv", fmt("System.out.println(".."{} --> ".. "+ {});", { i(1, "---"), rep(1)}));
  }
}









