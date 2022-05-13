cbuffer ConstBufferDataMaterial : register(b0)
{
	float4 color; // êF(RGBA)
};

float4 main() : SV_TARGET
{
	return color; //float4(1.0f, 1.0f, 1.0f, 1.0f);
}

