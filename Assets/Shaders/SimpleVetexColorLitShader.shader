Shader "Custom/SimpleVetexColorLitShader" {
     Properties {
        _MainTex ("Base (RGB)", 2D) = "white" {}
        _LightingOn ("Lighting On", Int) = 1
     }
     SubShader {
        Pass {
        	if(_LightingOn == 1)
        	{
            	Lighting On
            }
            else
            {
            	Lighting Off
            }
            ColorMaterial AmbientAndDiffuse
            SetTexture [_MainTex] {
               combine texture * primary DOUBLE
            }
        }
     }
	FallBack "Diffuse"
}
