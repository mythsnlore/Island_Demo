// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Upgrade NOTE: commented out 'sampler2D unity_Lightmap', a built-in variable
// Upgrade NOTE: replaced tex2D unity_Lightmap with UNITY_SAMPLE_TEX2D
 
 
// Unlit shader.
// - no lighting
// - lightmap_kj support
// - vertex color
 
Shader "Custom/unlit+vertexcolor+lightmap" {
 
    Properties
    {
        _MainTex ("Base", 2D) = "white" {}
    }
    SubShader
    {
        Tags { "RenderType"="Opaque" }
 
        Pass
        {
            CGPROGRAM
                #include "UnityCG.cginc"
                #pragma vertex vert
                #pragma fragment frag
                #pragma multi_compile LIGHTMAP_ON LIGHTMAP_OFF
                struct v2f
                {
                    half4 color : COLOR;
                    fixed4 pos : SV_POSITION;
                    fixed2 uv[2] : TEXCOORD0;
                };
         
                sampler2D _MainTex;
                fixed4 _MainTex_ST;
                #ifdef LIGHTMAP_ON
                //fixed4 unity_LightmapST;
                // sampler2D unity_Lightmap;
                #endif
                v2f vert(appdata_full v)
                {
 
                    v2f o;
                    UNITY_INITIALIZE_OUTPUT(v2f, o); // HLSL compiler needs it on Unity 5
 
                    o.pos = UnityObjectToClipPos(v.vertex);
                    o.uv[0] = TRANSFORM_TEX(v.texcoord, _MainTex);
                 
                    #ifdef LIGHTMAP_ON
                    o.uv[1] = v.texcoord1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
                    #endif
                    o.color = v.color;
                    return o;
                }
     
                fixed4 frag(v2f i) : COLOR
                {
                    fixed4 c = tex2D(_MainTex, i.uv[0]) * i.color;
                    #ifdef LIGHTMAP_ON
                    c.rgb *= DecodeLightmap(UNITY_SAMPLE_TEX2D(unity_Lightmap, i.uv[1]));
                    #endif
                    return c;
                }
            ENDCG
        }
    }
   
   
   
   
}