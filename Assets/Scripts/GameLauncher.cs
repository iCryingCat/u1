#define XLUA_ENABLE
using System.IO;
using System.Text;

using UnityEngine;
using Com.BaiZe.U2Tool;

#if XLUA_ENABLE
using XLua;

#endif

namespace Com.BaiZe.U2Framework
{
    public class GameLauncher : MonoBehaviour
    {
#if XLUA_ENABLE
        public readonly LuaEnv luaEnv = new LuaEnv();
#endif

        private void Start()
        {
#if XLUA_ENABLE
            this.luaEnv.AddLoader(this.LoopLogicLoader);
            this.luaEnv.DoString("require 'game_launcher'");
#endif
        }

        private void Update()
        {
#if XLUA_ENABLE
            this.luaEnv.Tick();
#endif
        }

        private byte[] LoopLogicLoader(ref string filepath)
        {
            string luaGameLauncher = null;
#if UNITY_EDITOR
            luaGameLauncher = Path.Combine("../lua", filepath + ".lua");
#else
            luaGameLauncher = Path.Combine( "lua", filepath + ".lua");
#endif
            if (luaGameLauncher == null) ;
            return Encoding.UTF8.GetBytes(ResourceManager.ReadAllText(luaGameLauncher));
        }
    }
}