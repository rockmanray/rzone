
ZeroI
data
conv_1_w
conv_1_bconv_1"Conv*

stride*
pad*

kernelq
conv_1

bn_1_scale
	bn_1_bias
	bn_1_mean
bn_1_varbn_1"	SpatialBN*
is_test*
epsilon¬Å'7*
order"NCHWA
bn_1
	scale_1_wscale_1_internal"Mul*
axis*
	broadcastD
scale_1_internal
	scale_1_bscale_1"Add*
axis*
	broadcast
scale_1relu_1"Relul
relu_1
residual_1/conv_1_w
residual_1/conv_1_bresidual_1/conv_1"Conv*

stride*
pad*

kernelÂ
residual_1/conv_1
residual_1/bn_1/bn_scale
residual_1/bn_1/bn_bias
residual_1/bn_1/bn_mean
residual_1/bn_1/bn_varresidual_1/bn_1/bn"	SpatialBN*
is_test*
epsilon¬Å'7*
order"NCHWe
residual_1/bn_1/bn
residual_1/bn_1/bn_wresidual_1/bn_1/bn_internal"Mul*
axis*
	broadcaste
residual_1/bn_1/bn_internal
residual_1/bn_1/bn_bresidual_1/bn_1/bn"Add*
axis*
	broadcast.
residual_1/bn_1/bnresidual_1/bn_1/bn"Relux
residual_1/bn_1/bn
residual_1/conv_2_w
residual_1/conv_2_bresidual_1/conv_2"Conv*

stride*
pad*

kernelÂ
residual_1/conv_2
residual_1/bn_2/bn_scale
residual_1/bn_2/bn_bias
residual_1/bn_2/bn_mean
residual_1/bn_2/bn_varresidual_1/bn_2/bn"	SpatialBN*
is_test*
epsilon¬Å'7*
order"NCHWe
residual_1/bn_2/bn
residual_1/bn_2/bn_wresidual_1/bn_2/bn_internal"Mul*
axis*
	broadcaste
residual_1/bn_2/bn_internal
residual_1/bn_2/bn_bresidual_1/bn_2/bn"Add*
axis*
	broadcast1
relu_1
residual_1/bn_2/bnresidual_1/add"Sum&
residual_1/addresidual_1/out"Relut
residual_1/out
residual_2/conv_1_w
residual_2/conv_1_bresidual_2/conv_1"Conv*

stride*
pad*

kernelÂ
residual_2/conv_1
residual_2/bn_1/bn_scale
residual_2/bn_1/bn_bias
residual_2/bn_1/bn_mean
residual_2/bn_1/bn_varresidual_2/bn_1/bn"	SpatialBN*
is_test*
epsilon¬Å'7*
order"NCHWe
residual_2/bn_1/bn
residual_2/bn_1/bn_wresidual_2/bn_1/bn_internal"Mul*
axis*
	broadcaste
residual_2/bn_1/bn_internal
residual_2/bn_1/bn_bresidual_2/bn_1/bn"Add*
axis*
	broadcast.
residual_2/bn_1/bnresidual_2/bn_1/bn"Relux
residual_2/bn_1/bn
residual_2/conv_2_w
residual_2/conv_2_bresidual_2/conv_2"Conv*

stride*
pad*

kernelÂ
residual_2/conv_2
residual_2/bn_2/bn_scale
residual_2/bn_2/bn_bias
residual_2/bn_2/bn_mean
residual_2/bn_2/bn_varresidual_2/bn_2/bn"	SpatialBN*
is_test*
epsilon¬Å'7*
order"NCHWe
residual_2/bn_2/bn
residual_2/bn_2/bn_wresidual_2/bn_2/bn_internal"Mul*
axis*
	broadcaste
residual_2/bn_2/bn_internal
residual_2/bn_2/bn_bresidual_2/bn_2/bn"Add*
axis*
	broadcast9
residual_1/out
residual_2/bn_2/bnresidual_2/add"Sum&
residual_2/addresidual_2/out"Relut
residual_2/out
residual_3/conv_1_w
residual_3/conv_1_bresidual_3/conv_1"Conv*

stride*
pad*

kernelÂ
residual_3/conv_1
residual_3/bn_1/bn_scale
residual_3/bn_1/bn_bias
residual_3/bn_1/bn_mean
residual_3/bn_1/bn_varresidual_3/bn_1/bn"	SpatialBN*
is_test*
epsilon¬Å'7*
order"NCHWe
residual_3/bn_1/bn
residual_3/bn_1/bn_wresidual_3/bn_1/bn_internal"Mul*
axis*
	broadcaste
residual_3/bn_1/bn_internal
residual_3/bn_1/bn_bresidual_3/bn_1/bn"Add*
axis*
	broadcast.
residual_3/bn_1/bnresidual_3/bn_1/bn"Relux
residual_3/bn_1/bn
residual_3/conv_2_w
residual_3/conv_2_bresidual_3/conv_2"Conv*

stride*
pad*

kernelÂ
residual_3/conv_2
residual_3/bn_2/bn_scale
residual_3/bn_2/bn_bias
residual_3/bn_2/bn_mean
residual_3/bn_2/bn_varresidual_3/bn_2/bn"	SpatialBN*
is_test*
epsilon¬Å'7*
order"NCHWe
residual_3/bn_2/bn
residual_3/bn_2/bn_wresidual_3/bn_2/bn_internal"Mul*
axis*
	broadcaste
residual_3/bn_2/bn_internal
residual_3/bn_2/bn_bresidual_3/bn_2/bn"Add*
axis*
	broadcast9
residual_2/out
residual_3/bn_2/bnresidual_3/add"Sum&
residual_3/addresidual_3/out"Relut
residual_3/out
residual_4/conv_1_w
residual_4/conv_1_bresidual_4/conv_1"Conv*

stride*
pad*

kernelÂ
residual_4/conv_1
residual_4/bn_1/bn_scale
residual_4/bn_1/bn_bias
residual_4/bn_1/bn_mean
residual_4/bn_1/bn_varresidual_4/bn_1/bn"	SpatialBN*
is_test*
epsilon¬Å'7*
order"NCHWe
residual_4/bn_1/bn
residual_4/bn_1/bn_wresidual_4/bn_1/bn_internal"Mul*
axis*
	broadcaste
residual_4/bn_1/bn_internal
residual_4/bn_1/bn_bresidual_4/bn_1/bn"Add*
axis*
	broadcast.
residual_4/bn_1/bnresidual_4/bn_1/bn"Relux
residual_4/bn_1/bn
residual_4/conv_2_w
residual_4/conv_2_bresidual_4/conv_2"Conv*

stride*
pad*

kernelÂ
residual_4/conv_2
residual_4/bn_2/bn_scale
residual_4/bn_2/bn_bias
residual_4/bn_2/bn_mean
residual_4/bn_2/bn_varresidual_4/bn_2/bn"	SpatialBN*
is_test*
epsilon¬Å'7*
order"NCHWe
residual_4/bn_2/bn
residual_4/bn_2/bn_wresidual_4/bn_2/bn_internal"Mul*
axis*
	broadcaste
residual_4/bn_2/bn_internal
residual_4/bn_2/bn_bresidual_4/bn_2/bn"Add*
axis*
	broadcast9
residual_3/out
residual_4/bn_2/bnresidual_4/add"Sum&
residual_4/addresidual_4/out"Relut
residual_4/out
residual_5/conv_1_w
residual_5/conv_1_bresidual_5/conv_1"Conv*

stride*
pad*

kernelÂ
residual_5/conv_1
residual_5/bn_1/bn_scale
residual_5/bn_1/bn_bias
residual_5/bn_1/bn_mean
residual_5/bn_1/bn_varresidual_5/bn_1/bn"	SpatialBN*
is_test*
epsilon¬Å'7*
order"NCHWe
residual_5/bn_1/bn
residual_5/bn_1/bn_wresidual_5/bn_1/bn_internal"Mul*
axis*
	broadcaste
residual_5/bn_1/bn_internal
residual_5/bn_1/bn_bresidual_5/bn_1/bn"Add*
axis*
	broadcast.
residual_5/bn_1/bnresidual_5/bn_1/bn"Relux
residual_5/bn_1/bn
residual_5/conv_2_w
residual_5/conv_2_bresidual_5/conv_2"Conv*

stride*
pad*

kernelÂ
residual_5/conv_2
residual_5/bn_2/bn_scale
residual_5/bn_2/bn_bias
residual_5/bn_2/bn_mean
residual_5/bn_2/bn_varresidual_5/bn_2/bn"	SpatialBN*
is_test*
epsilon¬Å'7*
order"NCHWe
residual_5/bn_2/bn
residual_5/bn_2/bn_wresidual_5/bn_2/bn_internal"Mul*
axis*
	broadcaste
residual_5/bn_2/bn_internal
residual_5/bn_2/bn_bresidual_5/bn_2/bn"Add*
axis*
	broadcast9
residual_4/out
residual_5/bn_2/bnresidual_5/add"Sum&
residual_5/addresidual_5/out"Relut
residual_5/out
residual_6/conv_1_w
residual_6/conv_1_bresidual_6/conv_1"Conv*

stride*
pad*

kernelÂ
residual_6/conv_1
residual_6/bn_1/bn_scale
residual_6/bn_1/bn_bias
residual_6/bn_1/bn_mean
residual_6/bn_1/bn_varresidual_6/bn_1/bn"	SpatialBN*
is_test*
epsilon¬Å'7*
order"NCHWe
residual_6/bn_1/bn
residual_6/bn_1/bn_wresidual_6/bn_1/bn_internal"Mul*
axis*
	broadcaste
residual_6/bn_1/bn_internal
residual_6/bn_1/bn_bresidual_6/bn_1/bn"Add*
axis*
	broadcast.
residual_6/bn_1/bnresidual_6/bn_1/bn"Relux
residual_6/bn_1/bn
residual_6/conv_2_w
residual_6/conv_2_bresidual_6/conv_2"Conv*

stride*
pad*

kernelÂ
residual_6/conv_2
residual_6/bn_2/bn_scale
residual_6/bn_2/bn_bias
residual_6/bn_2/bn_mean
residual_6/bn_2/bn_varresidual_6/bn_2/bn"	SpatialBN*
is_test*
epsilon¬Å'7*
order"NCHWe
residual_6/bn_2/bn
residual_6/bn_2/bn_wresidual_6/bn_2/bn_internal"Mul*
axis*
	broadcaste
residual_6/bn_2/bn_internal
residual_6/bn_2/bn_bresidual_6/bn_2/bn"Add*
axis*
	broadcast9
residual_5/out
residual_6/bn_2/bnresidual_6/add"Sum&
residual_6/addresidual_6/out"Relut
residual_6/out
residual_7/conv_1_w
residual_7/conv_1_bresidual_7/conv_1"Conv*

stride*
pad*

kernelÂ
residual_7/conv_1
residual_7/bn_1/bn_scale
residual_7/bn_1/bn_bias
residual_7/bn_1/bn_mean
residual_7/bn_1/bn_varresidual_7/bn_1/bn"	SpatialBN*
is_test*
epsilon¬Å'7*
order"NCHWe
residual_7/bn_1/bn
residual_7/bn_1/bn_wresidual_7/bn_1/bn_internal"Mul*
axis*
	broadcaste
residual_7/bn_1/bn_internal
residual_7/bn_1/bn_bresidual_7/bn_1/bn"Add*
axis*
	broadcast.
residual_7/bn_1/bnresidual_7/bn_1/bn"Relux
residual_7/bn_1/bn
residual_7/conv_2_w
residual_7/conv_2_bresidual_7/conv_2"Conv*

stride*
pad*

kernelÂ
residual_7/conv_2
residual_7/bn_2/bn_scale
residual_7/bn_2/bn_bias
residual_7/bn_2/bn_mean
residual_7/bn_2/bn_varresidual_7/bn_2/bn"	SpatialBN*
is_test*
epsilon¬Å'7*
order"NCHWe
residual_7/bn_2/bn
residual_7/bn_2/bn_wresidual_7/bn_2/bn_internal"Mul*
axis*
	broadcaste
residual_7/bn_2/bn_internal
residual_7/bn_2/bn_bresidual_7/bn_2/bn"Add*
axis*
	broadcast9
residual_6/out
residual_7/bn_2/bnresidual_7/add"Sum&
residual_7/addresidual_7/out"Relut
residual_7/out
residual_8/conv_1_w
residual_8/conv_1_bresidual_8/conv_1"Conv*

stride*
pad*

kernelÂ
residual_8/conv_1
residual_8/bn_1/bn_scale
residual_8/bn_1/bn_bias
residual_8/bn_1/bn_mean
residual_8/bn_1/bn_varresidual_8/bn_1/bn"	SpatialBN*
is_test*
epsilon¬Å'7*
order"NCHWe
residual_8/bn_1/bn
residual_8/bn_1/bn_wresidual_8/bn_1/bn_internal"Mul*
axis*
	broadcaste
residual_8/bn_1/bn_internal
residual_8/bn_1/bn_bresidual_8/bn_1/bn"Add*
axis*
	broadcast.
residual_8/bn_1/bnresidual_8/bn_1/bn"Relux
residual_8/bn_1/bn
residual_8/conv_2_w
residual_8/conv_2_bresidual_8/conv_2"Conv*

stride*
pad*

kernelÂ
residual_8/conv_2
residual_8/bn_2/bn_scale
residual_8/bn_2/bn_bias
residual_8/bn_2/bn_mean
residual_8/bn_2/bn_varresidual_8/bn_2/bn"	SpatialBN*
is_test*
epsilon¬Å'7*
order"NCHWe
residual_8/bn_2/bn
residual_8/bn_2/bn_wresidual_8/bn_2/bn_internal"Mul*
axis*
	broadcaste
residual_8/bn_2/bn_internal
residual_8/bn_2/bn_bresidual_8/bn_2/bn"Add*
axis*
	broadcast9
residual_7/out
residual_8/bn_2/bnresidual_8/add"Sum&
residual_8/addresidual_8/out"Relut
residual_8/out
residual_9/conv_1_w
residual_9/conv_1_bresidual_9/conv_1"Conv*

stride*
pad*

kernelÂ
residual_9/conv_1
residual_9/bn_1/bn_scale
residual_9/bn_1/bn_bias
residual_9/bn_1/bn_mean
residual_9/bn_1/bn_varresidual_9/bn_1/bn"	SpatialBN*
is_test*
epsilon¬Å'7*
order"NCHWe
residual_9/bn_1/bn
residual_9/bn_1/bn_wresidual_9/bn_1/bn_internal"Mul*
axis*
	broadcaste
residual_9/bn_1/bn_internal
residual_9/bn_1/bn_bresidual_9/bn_1/bn"Add*
axis*
	broadcast.
residual_9/bn_1/bnresidual_9/bn_1/bn"Relux
residual_9/bn_1/bn
residual_9/conv_2_w
residual_9/conv_2_bresidual_9/conv_2"Conv*

stride*
pad*

kernelÂ
residual_9/conv_2
residual_9/bn_2/bn_scale
residual_9/bn_2/bn_bias
residual_9/bn_2/bn_mean
residual_9/bn_2/bn_varresidual_9/bn_2/bn"	SpatialBN*
is_test*
epsilon¬Å'7*
order"NCHWe
residual_9/bn_2/bn
residual_9/bn_2/bn_wresidual_9/bn_2/bn_internal"Mul*
axis*
	broadcaste
residual_9/bn_2/bn_internal
residual_9/bn_2/bn_bresidual_9/bn_2/bn"Add*
axis*
	broadcast9
residual_8/out
residual_9/bn_2/bnresidual_9/add"Sum&
residual_9/addresidual_9/out"Reluw
residual_9/out
residual_10/conv_1_w
residual_10/conv_1_bresidual_10/conv_1"Conv*

stride*
pad*

kernelÈ
residual_10/conv_1
residual_10/bn_1/bn_scale
residual_10/bn_1/bn_bias
residual_10/bn_1/bn_mean
residual_10/bn_1/bn_varresidual_10/bn_1/bn"	SpatialBN*
is_test*
epsilon¬Å'7*
order"NCHWh
residual_10/bn_1/bn
residual_10/bn_1/bn_wresidual_10/bn_1/bn_internal"Mul*
axis*
	broadcasth
residual_10/bn_1/bn_internal
residual_10/bn_1/bn_bresidual_10/bn_1/bn"Add*
axis*
	broadcast0
residual_10/bn_1/bnresidual_10/bn_1/bn"Relu|
residual_10/bn_1/bn
residual_10/conv_2_w
residual_10/conv_2_bresidual_10/conv_2"Conv*

stride*
pad*

kernelÈ
residual_10/conv_2
residual_10/bn_2/bn_scale
residual_10/bn_2/bn_bias
residual_10/bn_2/bn_mean
residual_10/bn_2/bn_varresidual_10/bn_2/bn"	SpatialBN*
is_test*
epsilon¬Å'7*
order"NCHWh
residual_10/bn_2/bn
residual_10/bn_2/bn_wresidual_10/bn_2/bn_internal"Mul*
axis*
	broadcasth
residual_10/bn_2/bn_internal
residual_10/bn_2/bn_bresidual_10/bn_2/bn"Add*
axis*
	broadcast;
residual_9/out
residual_10/bn_2/bnresidual_10/add"Sum(
residual_10/addresidual_10/out"Relux
residual_10/out
residual_11/conv_1_w
residual_11/conv_1_bresidual_11/conv_1"Conv*

stride*
pad*

kernelÈ
residual_11/conv_1
residual_11/bn_1/bn_scale
residual_11/bn_1/bn_bias
residual_11/bn_1/bn_mean
residual_11/bn_1/bn_varresidual_11/bn_1/bn"	SpatialBN*
is_test*
epsilon¬Å'7*
order"NCHWh
residual_11/bn_1/bn
residual_11/bn_1/bn_wresidual_11/bn_1/bn_internal"Mul*
axis*
	broadcasth
residual_11/bn_1/bn_internal
residual_11/bn_1/bn_bresidual_11/bn_1/bn"Add*
axis*
	broadcast0
residual_11/bn_1/bnresidual_11/bn_1/bn"Relu|
residual_11/bn_1/bn
residual_11/conv_2_w
residual_11/conv_2_bresidual_11/conv_2"Conv*

stride*
pad*

kernelÈ
residual_11/conv_2
residual_11/bn_2/bn_scale
residual_11/bn_2/bn_bias
residual_11/bn_2/bn_mean
residual_11/bn_2/bn_varresidual_11/bn_2/bn"	SpatialBN*
is_test*
epsilon¬Å'7*
order"NCHWh
residual_11/bn_2/bn
residual_11/bn_2/bn_wresidual_11/bn_2/bn_internal"Mul*
axis*
	broadcasth
residual_11/bn_2/bn_internal
residual_11/bn_2/bn_bresidual_11/bn_2/bn"Add*
axis*
	broadcast<
residual_10/out
residual_11/bn_2/bnresidual_11/add"Sum(
residual_11/addresidual_11/out"Relux
residual_11/out
residual_12/conv_1_w
residual_12/conv_1_bresidual_12/conv_1"Conv*

stride*
pad*

kernelÈ
residual_12/conv_1
residual_12/bn_1/bn_scale
residual_12/bn_1/bn_bias
residual_12/bn_1/bn_mean
residual_12/bn_1/bn_varresidual_12/bn_1/bn"	SpatialBN*
is_test*
epsilon¬Å'7*
order"NCHWh
residual_12/bn_1/bn
residual_12/bn_1/bn_wresidual_12/bn_1/bn_internal"Mul*
axis*
	broadcasth
residual_12/bn_1/bn_internal
residual_12/bn_1/bn_bresidual_12/bn_1/bn"Add*
axis*
	broadcast0
residual_12/bn_1/bnresidual_12/bn_1/bn"Relu|
residual_12/bn_1/bn
residual_12/conv_2_w
residual_12/conv_2_bresidual_12/conv_2"Conv*

stride*
pad*

kernelÈ
residual_12/conv_2
residual_12/bn_2/bn_scale
residual_12/bn_2/bn_bias
residual_12/bn_2/bn_mean
residual_12/bn_2/bn_varresidual_12/bn_2/bn"	SpatialBN*
is_test*
epsilon¬Å'7*
order"NCHWh
residual_12/bn_2/bn
residual_12/bn_2/bn_wresidual_12/bn_2/bn_internal"Mul*
axis*
	broadcasth
residual_12/bn_2/bn_internal
residual_12/bn_2/bn_bresidual_12/bn_2/bn"Add*
axis*
	broadcast<
residual_11/out
residual_12/bn_2/bnresidual_12/add"Sum(
residual_12/addresidual_12/out"Relux
residual_12/out
residual_13/conv_1_w
residual_13/conv_1_bresidual_13/conv_1"Conv*

stride*
pad*

kernelÈ
residual_13/conv_1
residual_13/bn_1/bn_scale
residual_13/bn_1/bn_bias
residual_13/bn_1/bn_mean
residual_13/bn_1/bn_varresidual_13/bn_1/bn"	SpatialBN*
is_test*
epsilon¬Å'7*
order"NCHWh
residual_13/bn_1/bn
residual_13/bn_1/bn_wresidual_13/bn_1/bn_internal"Mul*
axis*
	broadcasth
residual_13/bn_1/bn_internal
residual_13/bn_1/bn_bresidual_13/bn_1/bn"Add*
axis*
	broadcast0
residual_13/bn_1/bnresidual_13/bn_1/bn"Relu|
residual_13/bn_1/bn
residual_13/conv_2_w
residual_13/conv_2_bresidual_13/conv_2"Conv*

stride*
pad*

kernelÈ
residual_13/conv_2
residual_13/bn_2/bn_scale
residual_13/bn_2/bn_bias
residual_13/bn_2/bn_mean
residual_13/bn_2/bn_varresidual_13/bn_2/bn"	SpatialBN*
is_test*
epsilon¬Å'7*
order"NCHWh
residual_13/bn_2/bn
residual_13/bn_2/bn_wresidual_13/bn_2/bn_internal"Mul*
axis*
	broadcasth
residual_13/bn_2/bn_internal
residual_13/bn_2/bn_bresidual_13/bn_2/bn"Add*
axis*
	broadcast<
residual_12/out
residual_13/bn_2/bnresidual_13/add"Sum(
residual_13/addresidual_13/out"Relux
residual_13/out
residual_14/conv_1_w
residual_14/conv_1_bresidual_14/conv_1"Conv*

stride*
pad*

kernelÈ
residual_14/conv_1
residual_14/bn_1/bn_scale
residual_14/bn_1/bn_bias
residual_14/bn_1/bn_mean
residual_14/bn_1/bn_varresidual_14/bn_1/bn"	SpatialBN*
is_test*
epsilon¬Å'7*
order"NCHWh
residual_14/bn_1/bn
residual_14/bn_1/bn_wresidual_14/bn_1/bn_internal"Mul*
axis*
	broadcasth
residual_14/bn_1/bn_internal
residual_14/bn_1/bn_bresidual_14/bn_1/bn"Add*
axis*
	broadcast0
residual_14/bn_1/bnresidual_14/bn_1/bn"Relu|
residual_14/bn_1/bn
residual_14/conv_2_w
residual_14/conv_2_bresidual_14/conv_2"Conv*

stride*
pad*

kernelÈ
residual_14/conv_2
residual_14/bn_2/bn_scale
residual_14/bn_2/bn_bias
residual_14/bn_2/bn_mean
residual_14/bn_2/bn_varresidual_14/bn_2/bn"	SpatialBN*
is_test*
epsilon¬Å'7*
order"NCHWh
residual_14/bn_2/bn
residual_14/bn_2/bn_wresidual_14/bn_2/bn_internal"Mul*
axis*
	broadcasth
residual_14/bn_2/bn_internal
residual_14/bn_2/bn_bresidual_14/bn_2/bn"Add*
axis*
	broadcast<
residual_13/out
residual_14/bn_2/bnresidual_14/add"Sum(
residual_14/addresidual_14/out"Relux
residual_14/out
residual_15/conv_1_w
residual_15/conv_1_bresidual_15/conv_1"Conv*

stride*
pad*

kernelÈ
residual_15/conv_1
residual_15/bn_1/bn_scale
residual_15/bn_1/bn_bias
residual_15/bn_1/bn_mean
residual_15/bn_1/bn_varresidual_15/bn_1/bn"	SpatialBN*
is_test*
epsilon¬Å'7*
order"NCHWh
residual_15/bn_1/bn
residual_15/bn_1/bn_wresidual_15/bn_1/bn_internal"Mul*
axis*
	broadcasth
residual_15/bn_1/bn_internal
residual_15/bn_1/bn_bresidual_15/bn_1/bn"Add*
axis*
	broadcast0
residual_15/bn_1/bnresidual_15/bn_1/bn"Relu|
residual_15/bn_1/bn
residual_15/conv_2_w
residual_15/conv_2_bresidual_15/conv_2"Conv*

stride*
pad*

kernelÈ
residual_15/conv_2
residual_15/bn_2/bn_scale
residual_15/bn_2/bn_bias
residual_15/bn_2/bn_mean
residual_15/bn_2/bn_varresidual_15/bn_2/bn"	SpatialBN*
is_test*
epsilon¬Å'7*
order"NCHWh
residual_15/bn_2/bn
residual_15/bn_2/bn_wresidual_15/bn_2/bn_internal"Mul*
axis*
	broadcasth
residual_15/bn_2/bn_internal
residual_15/bn_2/bn_bresidual_15/bn_2/bn"Add*
axis*
	broadcast<
residual_14/out
residual_15/bn_2/bnresidual_15/add"Sum(
residual_15/addresidual_15/out"Relux
residual_15/out
residual_16/conv_1_w
residual_16/conv_1_bresidual_16/conv_1"Conv*

stride*
pad*

kernelÈ
residual_16/conv_1
residual_16/bn_1/bn_scale
residual_16/bn_1/bn_bias
residual_16/bn_1/bn_mean
residual_16/bn_1/bn_varresidual_16/bn_1/bn"	SpatialBN*
is_test*
epsilon¬Å'7*
order"NCHWh
residual_16/bn_1/bn
residual_16/bn_1/bn_wresidual_16/bn_1/bn_internal"Mul*
axis*
	broadcasth
residual_16/bn_1/bn_internal
residual_16/bn_1/bn_bresidual_16/bn_1/bn"Add*
axis*
	broadcast0
residual_16/bn_1/bnresidual_16/bn_1/bn"Relu|
residual_16/bn_1/bn
residual_16/conv_2_w
residual_16/conv_2_bresidual_16/conv_2"Conv*

stride*
pad*

kernelÈ
residual_16/conv_2
residual_16/bn_2/bn_scale
residual_16/bn_2/bn_bias
residual_16/bn_2/bn_mean
residual_16/bn_2/bn_varresidual_16/bn_2/bn"	SpatialBN*
is_test*
epsilon¬Å'7*
order"NCHWh
residual_16/bn_2/bn
residual_16/bn_2/bn_wresidual_16/bn_2/bn_internal"Mul*
axis*
	broadcasth
residual_16/bn_2/bn_internal
residual_16/bn_2/bn_bresidual_16/bn_2/bn"Add*
axis*
	broadcast<
residual_15/out
residual_16/bn_2/bnresidual_16/add"Sum(
residual_16/addresidual_16/out"Relux
residual_16/out
residual_17/conv_1_w
residual_17/conv_1_bresidual_17/conv_1"Conv*

stride*
pad*

kernelÈ
residual_17/conv_1
residual_17/bn_1/bn_scale
residual_17/bn_1/bn_bias
residual_17/bn_1/bn_mean
residual_17/bn_1/bn_varresidual_17/bn_1/bn"	SpatialBN*
is_test*
epsilon¬Å'7*
order"NCHWh
residual_17/bn_1/bn
residual_17/bn_1/bn_wresidual_17/bn_1/bn_internal"Mul*
axis*
	broadcasth
residual_17/bn_1/bn_internal
residual_17/bn_1/bn_bresidual_17/bn_1/bn"Add*
axis*
	broadcast0
residual_17/bn_1/bnresidual_17/bn_1/bn"Relu|
residual_17/bn_1/bn
residual_17/conv_2_w
residual_17/conv_2_bresidual_17/conv_2"Conv*

stride*
pad*

kernelÈ
residual_17/conv_2
residual_17/bn_2/bn_scale
residual_17/bn_2/bn_bias
residual_17/bn_2/bn_mean
residual_17/bn_2/bn_varresidual_17/bn_2/bn"	SpatialBN*
is_test*
epsilon¬Å'7*
order"NCHWh
residual_17/bn_2/bn
residual_17/bn_2/bn_wresidual_17/bn_2/bn_internal"Mul*
axis*
	broadcasth
residual_17/bn_2/bn_internal
residual_17/bn_2/bn_bresidual_17/bn_2/bn"Add*
axis*
	broadcast<
residual_16/out
residual_17/bn_2/bnresidual_17/add"Sum(
residual_17/addresidual_17/out"Relux
residual_17/out
residual_18/conv_1_w
residual_18/conv_1_bresidual_18/conv_1"Conv*

stride*
pad*

kernelÈ
residual_18/conv_1
residual_18/bn_1/bn_scale
residual_18/bn_1/bn_bias
residual_18/bn_1/bn_mean
residual_18/bn_1/bn_varresidual_18/bn_1/bn"	SpatialBN*
is_test*
epsilon¬Å'7*
order"NCHWh
residual_18/bn_1/bn
residual_18/bn_1/bn_wresidual_18/bn_1/bn_internal"Mul*
axis*
	broadcasth
residual_18/bn_1/bn_internal
residual_18/bn_1/bn_bresidual_18/bn_1/bn"Add*
axis*
	broadcast0
residual_18/bn_1/bnresidual_18/bn_1/bn"Relu|
residual_18/bn_1/bn
residual_18/conv_2_w
residual_18/conv_2_bresidual_18/conv_2"Conv*

stride*
pad*

kernelÈ
residual_18/conv_2
residual_18/bn_2/bn_scale
residual_18/bn_2/bn_bias
residual_18/bn_2/bn_mean
residual_18/bn_2/bn_varresidual_18/bn_2/bn"	SpatialBN*
is_test*
epsilon¬Å'7*
order"NCHWh
residual_18/bn_2/bn
residual_18/bn_2/bn_wresidual_18/bn_2/bn_internal"Mul*
axis*
	broadcasth
residual_18/bn_2/bn_internal
residual_18/bn_2/bn_bresidual_18/bn_2/bn"Add*
axis*
	broadcast<
residual_17/out
residual_18/bn_2/bnresidual_18/add"Sum(
residual_18/addresidual_18/out"Relux
residual_18/out
residual_19/conv_1_w
residual_19/conv_1_bresidual_19/conv_1"Conv*

stride*
pad*

kernelÈ
residual_19/conv_1
residual_19/bn_1/bn_scale
residual_19/bn_1/bn_bias
residual_19/bn_1/bn_mean
residual_19/bn_1/bn_varresidual_19/bn_1/bn"	SpatialBN*
is_test*
epsilon¬Å'7*
order"NCHWh
residual_19/bn_1/bn
residual_19/bn_1/bn_wresidual_19/bn_1/bn_internal"Mul*
axis*
	broadcasth
residual_19/bn_1/bn_internal
residual_19/bn_1/bn_bresidual_19/bn_1/bn"Add*
axis*
	broadcast0
residual_19/bn_1/bnresidual_19/bn_1/bn"Relu|
residual_19/bn_1/bn
residual_19/conv_2_w
residual_19/conv_2_bresidual_19/conv_2"Conv*

stride*
pad*

kernelÈ
residual_19/conv_2
residual_19/bn_2/bn_scale
residual_19/bn_2/bn_bias
residual_19/bn_2/bn_mean
residual_19/bn_2/bn_varresidual_19/bn_2/bn"	SpatialBN*
is_test*
epsilon¬Å'7*
order"NCHWh
residual_19/bn_2/bn
residual_19/bn_2/bn_wresidual_19/bn_2/bn_internal"Mul*
axis*
	broadcasth
residual_19/bn_2/bn_internal
residual_19/bn_2/bn_bresidual_19/bn_2/bn"Add*
axis*
	broadcast<
residual_18/out
residual_19/bn_2/bnresidual_19/add"Sum(
residual_19/addresidual_19/out"Relux
residual_19/out
residual_20/conv_1_w
residual_20/conv_1_bresidual_20/conv_1"Conv*

stride*
pad*

kernelÈ
residual_20/conv_1
residual_20/bn_1/bn_scale
residual_20/bn_1/bn_bias
residual_20/bn_1/bn_mean
residual_20/bn_1/bn_varresidual_20/bn_1/bn"	SpatialBN*
is_test*
epsilon¬Å'7*
order"NCHWh
residual_20/bn_1/bn
residual_20/bn_1/bn_wresidual_20/bn_1/bn_internal"Mul*
axis*
	broadcasth
residual_20/bn_1/bn_internal
residual_20/bn_1/bn_bresidual_20/bn_1/bn"Add*
axis*
	broadcast0
residual_20/bn_1/bnresidual_20/bn_1/bn"Relu|
residual_20/bn_1/bn
residual_20/conv_2_w
residual_20/conv_2_bresidual_20/conv_2"Conv*

stride*
pad*

kernelÈ
residual_20/conv_2
residual_20/bn_2/bn_scale
residual_20/bn_2/bn_bias
residual_20/bn_2/bn_mean
residual_20/bn_2/bn_varresidual_20/bn_2/bn"	SpatialBN*
is_test*
epsilon¬Å'7*
order"NCHWh
residual_20/bn_2/bn
residual_20/bn_2/bn_wresidual_20/bn_2/bn_internal"Mul*
axis*
	broadcasth
residual_20/bn_2/bn_internal
residual_20/bn_2/bn_bresidual_20/bn_2/bn"Add*
axis*
	broadcast<
residual_19/out
residual_20/bn_2/bnresidual_20/add"Sum(
residual_20/addresidual_20/out"Relu]
residual_20/out
move_conv_w
move_conv_b	move_conv"Conv*

stride*
pad *

kernelˆ
	move_conv
move1_bn_scale
move1_bn_bias
move1_bn_mean
move1_bn_varmove1_bn"	SpatialBN*
is_test*
epsilon¬Å'7*
order"NCHWM
move1_bn
move1_scale_wmove1_scale_internal"Mul*
axis*
	broadcastP
move1_scale_internal
move1_scale_bmove1_scale"Add*
axis*
	broadcast
move1_scale	move_relu"Relu7
	move_relu
move_inner_w
move_inner_b
move_inner"FC&

move_innerflatten_sl_move"Flatten#
flatten_sl_movesoftmax"SoftmaxW
residual_20/out
	VN_conv_w
	VN_conv_bVN_conv"Conv*

stride*
pad *

kernelw
VN_conv
VN_bn_scale

VN_bn_bias

VN_bn_mean
	VN_bn_varVN_bn"	SpatialBN*
is_test*
epsilon¬Å'7*
order"NCHWD
VN_bn

VN_Scale_wVN_Scale_internal"Mul*
axis*
	broadcastG
VN_Scale_internal

VN_Scale_bVN_Scale"Add*
axis*
	broadcast
VN_ScaleVN_relu1"Relu*
VN_relu1
VN_IP1_w
VN_IP1_bVN_IP1"FC
VN_IP1VN_relu2"Relu*
VN_relu2
VN_IP2_w
VN_IP2_bVN_IP2"FC
VN_IP2tanh"Tanh:data:conv_1_w:conv_1_b:
bn_1_scale:	bn_1_bias:	bn_1_mean:bn_1_var:	scale_1_w:	scale_1_b:residual_1/conv_1_w:residual_1/conv_1_b:residual_1/bn_1/bn_scale:residual_1/bn_1/bn_bias:residual_1/bn_1/bn_mean:residual_1/bn_1/bn_var:residual_1/bn_1/bn_w:residual_1/bn_1/bn_b:residual_1/conv_2_w:residual_1/conv_2_b:residual_1/bn_2/bn_scale:residual_1/bn_2/bn_bias:residual_1/bn_2/bn_mean:residual_1/bn_2/bn_var:residual_1/bn_2/bn_w:residual_1/bn_2/bn_b:residual_2/conv_1_w:residual_2/conv_1_b:residual_2/bn_1/bn_scale:residual_2/bn_1/bn_bias:residual_2/bn_1/bn_mean:residual_2/bn_1/bn_var:residual_2/bn_1/bn_w:residual_2/bn_1/bn_b:residual_2/conv_2_w:residual_2/conv_2_b:residual_2/bn_2/bn_scale:residual_2/bn_2/bn_bias:residual_2/bn_2/bn_mean:residual_2/bn_2/bn_var:residual_2/bn_2/bn_w:residual_2/bn_2/bn_b:residual_3/conv_1_w:residual_3/conv_1_b:residual_3/bn_1/bn_scale:residual_3/bn_1/bn_bias:residual_3/bn_1/bn_mean:residual_3/bn_1/bn_var:residual_3/bn_1/bn_w:residual_3/bn_1/bn_b:residual_3/conv_2_w:residual_3/conv_2_b:residual_3/bn_2/bn_scale:residual_3/bn_2/bn_bias:residual_3/bn_2/bn_mean:residual_3/bn_2/bn_var:residual_3/bn_2/bn_w:residual_3/bn_2/bn_b:residual_4/conv_1_w:residual_4/conv_1_b:residual_4/bn_1/bn_scale:residual_4/bn_1/bn_bias:residual_4/bn_1/bn_mean:residual_4/bn_1/bn_var:residual_4/bn_1/bn_w:residual_4/bn_1/bn_b:residual_4/conv_2_w:residual_4/conv_2_b:residual_4/bn_2/bn_scale:residual_4/bn_2/bn_bias:residual_4/bn_2/bn_mean:residual_4/bn_2/bn_var:residual_4/bn_2/bn_w:residual_4/bn_2/bn_b:residual_5/conv_1_w:residual_5/conv_1_b:residual_5/bn_1/bn_scale:residual_5/bn_1/bn_bias:residual_5/bn_1/bn_mean:residual_5/bn_1/bn_var:residual_5/bn_1/bn_w:residual_5/bn_1/bn_b:residual_5/conv_2_w:residual_5/conv_2_b:residual_5/bn_2/bn_scale:residual_5/bn_2/bn_bias:residual_5/bn_2/bn_mean:residual_5/bn_2/bn_var:residual_5/bn_2/bn_w:residual_5/bn_2/bn_b:residual_6/conv_1_w:residual_6/conv_1_b:residual_6/bn_1/bn_scale:residual_6/bn_1/bn_bias:residual_6/bn_1/bn_mean:residual_6/bn_1/bn_var:residual_6/bn_1/bn_w:residual_6/bn_1/bn_b:residual_6/conv_2_w:residual_6/conv_2_b:residual_6/bn_2/bn_scale:residual_6/bn_2/bn_bias:residual_6/bn_2/bn_mean:residual_6/bn_2/bn_var:residual_6/bn_2/bn_w:residual_6/bn_2/bn_b:residual_7/conv_1_w:residual_7/conv_1_b:residual_7/bn_1/bn_scale:residual_7/bn_1/bn_bias:residual_7/bn_1/bn_mean:residual_7/bn_1/bn_var:residual_7/bn_1/bn_w:residual_7/bn_1/bn_b:residual_7/conv_2_w:residual_7/conv_2_b:residual_7/bn_2/bn_scale:residual_7/bn_2/bn_bias:residual_7/bn_2/bn_mean:residual_7/bn_2/bn_var:residual_7/bn_2/bn_w:residual_7/bn_2/bn_b:residual_8/conv_1_w:residual_8/conv_1_b:residual_8/bn_1/bn_scale:residual_8/bn_1/bn_bias:residual_8/bn_1/bn_mean:residual_8/bn_1/bn_var:residual_8/bn_1/bn_w:residual_8/bn_1/bn_b:residual_8/conv_2_w:residual_8/conv_2_b:residual_8/bn_2/bn_scale:residual_8/bn_2/bn_bias:residual_8/bn_2/bn_mean:residual_8/bn_2/bn_var:residual_8/bn_2/bn_w:residual_8/bn_2/bn_b:residual_9/conv_1_w:residual_9/conv_1_b:residual_9/bn_1/bn_scale:residual_9/bn_1/bn_bias:residual_9/bn_1/bn_mean:residual_9/bn_1/bn_var:residual_9/bn_1/bn_w:residual_9/bn_1/bn_b:residual_9/conv_2_w:residual_9/conv_2_b:residual_9/bn_2/bn_scale:residual_9/bn_2/bn_bias:residual_9/bn_2/bn_mean:residual_9/bn_2/bn_var:residual_9/bn_2/bn_w:residual_9/bn_2/bn_b:residual_10/conv_1_w:residual_10/conv_1_b:residual_10/bn_1/bn_scale:residual_10/bn_1/bn_bias:residual_10/bn_1/bn_mean:residual_10/bn_1/bn_var:residual_10/bn_1/bn_w:residual_10/bn_1/bn_b:residual_10/conv_2_w:residual_10/conv_2_b:residual_10/bn_2/bn_scale:residual_10/bn_2/bn_bias:residual_10/bn_2/bn_mean:residual_10/bn_2/bn_var:residual_10/bn_2/bn_w:residual_10/bn_2/bn_b:residual_11/conv_1_w:residual_11/conv_1_b:residual_11/bn_1/bn_scale:residual_11/bn_1/bn_bias:residual_11/bn_1/bn_mean:residual_11/bn_1/bn_var:residual_11/bn_1/bn_w:residual_11/bn_1/bn_b:residual_11/conv_2_w:residual_11/conv_2_b:residual_11/bn_2/bn_scale:residual_11/bn_2/bn_bias:residual_11/bn_2/bn_mean:residual_11/bn_2/bn_var:residual_11/bn_2/bn_w:residual_11/bn_2/bn_b:residual_12/conv_1_w:residual_12/conv_1_b:residual_12/bn_1/bn_scale:residual_12/bn_1/bn_bias:residual_12/bn_1/bn_mean:residual_12/bn_1/bn_var:residual_12/bn_1/bn_w:residual_12/bn_1/bn_b:residual_12/conv_2_w:residual_12/conv_2_b:residual_12/bn_2/bn_scale:residual_12/bn_2/bn_bias:residual_12/bn_2/bn_mean:residual_12/bn_2/bn_var:residual_12/bn_2/bn_w:residual_12/bn_2/bn_b:residual_13/conv_1_w:residual_13/conv_1_b:residual_13/bn_1/bn_scale:residual_13/bn_1/bn_bias:residual_13/bn_1/bn_mean:residual_13/bn_1/bn_var:residual_13/bn_1/bn_w:residual_13/bn_1/bn_b:residual_13/conv_2_w:residual_13/conv_2_b:residual_13/bn_2/bn_scale:residual_13/bn_2/bn_bias:residual_13/bn_2/bn_mean:residual_13/bn_2/bn_var:residual_13/bn_2/bn_w:residual_13/bn_2/bn_b:residual_14/conv_1_w:residual_14/conv_1_b:residual_14/bn_1/bn_scale:residual_14/bn_1/bn_bias:residual_14/bn_1/bn_mean:residual_14/bn_1/bn_var:residual_14/bn_1/bn_w:residual_14/bn_1/bn_b:residual_14/conv_2_w:residual_14/conv_2_b:residual_14/bn_2/bn_scale:residual_14/bn_2/bn_bias:residual_14/bn_2/bn_mean:residual_14/bn_2/bn_var:residual_14/bn_2/bn_w:residual_14/bn_2/bn_b:residual_15/conv_1_w:residual_15/conv_1_b:residual_15/bn_1/bn_scale:residual_15/bn_1/bn_bias:residual_15/bn_1/bn_mean:residual_15/bn_1/bn_var:residual_15/bn_1/bn_w:residual_15/bn_1/bn_b:residual_15/conv_2_w:residual_15/conv_2_b:residual_15/bn_2/bn_scale:residual_15/bn_2/bn_bias:residual_15/bn_2/bn_mean:residual_15/bn_2/bn_var:residual_15/bn_2/bn_w:residual_15/bn_2/bn_b:residual_16/conv_1_w:residual_16/conv_1_b:residual_16/bn_1/bn_scale:residual_16/bn_1/bn_bias:residual_16/bn_1/bn_mean:residual_16/bn_1/bn_var:residual_16/bn_1/bn_w:residual_16/bn_1/bn_b:residual_16/conv_2_w:residual_16/conv_2_b:residual_16/bn_2/bn_scale:residual_16/bn_2/bn_bias:residual_16/bn_2/bn_mean:residual_16/bn_2/bn_var:residual_16/bn_2/bn_w:residual_16/bn_2/bn_b:residual_17/conv_1_w:residual_17/conv_1_b:residual_17/bn_1/bn_scale:residual_17/bn_1/bn_bias:residual_17/bn_1/bn_mean:residual_17/bn_1/bn_var:residual_17/bn_1/bn_w:residual_17/bn_1/bn_b:residual_17/conv_2_w:residual_17/conv_2_b:residual_17/bn_2/bn_scale:residual_17/bn_2/bn_bias:residual_17/bn_2/bn_mean:residual_17/bn_2/bn_var:residual_17/bn_2/bn_w:residual_17/bn_2/bn_b:residual_18/conv_1_w:residual_18/conv_1_b:residual_18/bn_1/bn_scale:residual_18/bn_1/bn_bias:residual_18/bn_1/bn_mean:residual_18/bn_1/bn_var:residual_18/bn_1/bn_w:residual_18/bn_1/bn_b:residual_18/conv_2_w:residual_18/conv_2_b:residual_18/bn_2/bn_scale:residual_18/bn_2/bn_bias:residual_18/bn_2/bn_mean:residual_18/bn_2/bn_var:residual_18/bn_2/bn_w:residual_18/bn_2/bn_b:residual_19/conv_1_w:residual_19/conv_1_b:residual_19/bn_1/bn_scale:residual_19/bn_1/bn_bias:residual_19/bn_1/bn_mean:residual_19/bn_1/bn_var:residual_19/bn_1/bn_w:residual_19/bn_1/bn_b:residual_19/conv_2_w:residual_19/conv_2_b:residual_19/bn_2/bn_scale:residual_19/bn_2/bn_bias:residual_19/bn_2/bn_mean:residual_19/bn_2/bn_var:residual_19/bn_2/bn_w:residual_19/bn_2/bn_b:residual_20/conv_1_w:residual_20/conv_1_b:residual_20/bn_1/bn_scale:residual_20/bn_1/bn_bias:residual_20/bn_1/bn_mean:residual_20/bn_1/bn_var:residual_20/bn_1/bn_w:residual_20/bn_1/bn_b:residual_20/conv_2_w:residual_20/conv_2_b:residual_20/bn_2/bn_scale:residual_20/bn_2/bn_bias:residual_20/bn_2/bn_mean:residual_20/bn_2/bn_var:residual_20/bn_2/bn_w:residual_20/bn_2/bn_b:move_conv_w:move_conv_b:move1_bn_scale:move1_bn_bias:move1_bn_mean:move1_bn_var:move1_scale_w:move1_scale_b:move_inner_w:move_inner_b:	VN_conv_w:	VN_conv_b:VN_bn_scale:
VN_bn_bias:
VN_bn_mean:	VN_bn_var:
VN_Scale_w:
VN_Scale_b:VN_IP1_w:VN_IP1_b:VN_IP2_w:VN_IP2_bBtanh