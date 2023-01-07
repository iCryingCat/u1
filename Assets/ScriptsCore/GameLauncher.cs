#define XLUA_ENABLE
using System.IO;
using System.Text;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

using UnityEngine;

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
            this.luaEnv.DoString("require 'bootstrap'");
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
            string bootstrap = Path.Combine(Application.dataPath, filepath + ".lua");
            return Encoding.UTF8.GetBytes(File.ReadAllText(bootstrap));
        }
    }
}