#include "crt_stubs.h"
#include <lua.h>
#include <lualib.h>
#include <lauxlib.h>
#include <eadk.h>
#include "eadk_lib.h"
#include "storage.h"

const char eadk_app_name[] __attribute__((section(".rodata.eadk_app_name"))) = "Lua interpreter";
const uint32_t eadk_api_level  __attribute__((section(".rodata.eadk_api_level"))) = 0;

// TODO: Check why __exidx_start/__exidx_end is needed
void __exidx_start() { }
void __exidx_end() { }

// int main(int argc, char ** argv) {
int main() {
  lua_State * L = luaL_newstate();
  luaL_openlibs(L);
  load_eadk_lib(L);

  // We read "lua.py"
  size_t file_len = 0;
  const char * code_from_file = extapp_fileRead("lua.py", &file_len);

  // DONE: I wasn't able to compile while depending on external data, but it works if reading from a local 'lua.py' file.
  // const char * code = eadk_external_data;

  const char * code = (code_from_file == NULL && file_len <= 0) ? "print(\"Hi from Lua interpreter! sleep(3s)\")\neadk.timing_msleep(3000)" : (code_from_file + 1);

  if (luaL_loadstring(L, code) == LUA_OK) {
    if (lua_pcall(L, 0, 0, 0) == LUA_OK) {
      lua_pop(L, lua_gettop(L));
    } else {
      printf("Error from Lua:\n%s\n", lua_tostring(L,-1));
      eadk_timing_msleep(3000);
    }
  }

  eadk_timing_msleep(3000);
  lua_close(L);
  return 0;
}
