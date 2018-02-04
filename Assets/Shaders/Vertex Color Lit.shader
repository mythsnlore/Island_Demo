Shader "Custom/Vertex Color Lit" {
	Properties {
		_MainTex ("Base (RGB)", 2D) = "white" {}

	}
	SubShader {
		//Tags { "Queue"="Geometry" }
		Pass {
			BindChannels{
				Bind "Color", color
				Bind "Vertex", vertex
				Bind "TexCoord", texcoord
			}
			Lighting On
			ColorMaterial AmbientAndDiffuse
			SetTexture [_MainTex] {
				combine texture * primary DOUBLE
			}
		}
	}
	FallBack "Diffuse"
}
