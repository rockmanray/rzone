
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
epsilon??'7*
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

kernel?
residual_1/conv_1
residual_1/bn_1/bn_scale
residual_1/bn_1/bn_bias
residual_1/bn_1/bn_mean
residual_1/bn_1/bn_varresidual_1/bn_1/bn"	SpatialBN*
is_test*
epsilon??'7*
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

kernel?
residual_1/conv_2
residual_1/bn_2/bn_scale
residual_1/bn_2/bn_bias
residual_1/bn_2/bn_mean
residual_1/bn_2/bn_varresidual_1/bn_2/bn"	SpatialBN*
is_test*
epsilon??'7*
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

kernel?
residual_2/conv_1
residual_2/bn_1/bn_scale
residual_2/bn_1/bn_bias
residual_2/bn_1/bn_mean
residual_2/bn_1/bn_varresidual_2/bn_1/bn"	SpatialBN*
is_test*
epsilon??'7*
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

kernel?
residual_2/conv_2
residual_2/bn_2/bn_scale
residual_2/bn_2/bn_bias
residual_2/bn_2/bn_mean
residual_2/bn_2/bn_varresidual_2/bn_2/bn"	SpatialBN*
is_test*
epsilon??'7*
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

kernel?
residual_3/conv_1
residual_3/bn_1/bn_scale
residual_3/bn_1/bn_bias
residual_3/bn_1/bn_mean
residual_3/bn_1/bn_varresidual_3/bn_1/bn"	SpatialBN*
is_test*
epsilon??'7*
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

kernel?
residual_3/conv_2
residual_3/bn_2/bn_scale
residual_3/bn_2/bn_bias
residual_3/bn_2/bn_mean
residual_3/bn_2/bn_varresidual_3/bn_2/bn"	SpatialBN*
is_test*
epsilon??'7*
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

kernel?
residual_4/conv_1
residual_4/bn_1/bn_scale
residual_4/bn_1/bn_bias
residual_4/bn_1/bn_mean
residual_4/bn_1/bn_varresidual_4/bn_1/bn"	SpatialBN*
is_test*
epsilon??'7*
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

kernel?
residual_4/conv_2
residual_4/bn_2/bn_scale
residual_4/bn_2/bn_bias
residual_4/bn_2/bn_mean
residual_4/bn_2/bn_varresidual_4/bn_2/bn"	SpatialBN*
is_test*
epsilon??'7*
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

kernel?
residual_5/conv_1
residual_5/bn_1/bn_scale
residual_5/bn_1/bn_bias
residual_5/bn_1/bn_mean
residual_5/bn_1/bn_varresidual_5/bn_1/bn"	SpatialBN*
is_test*
epsilon??'7*
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

kernel?
residual_5/conv_2
residual_5/bn_2/bn_scale
residual_5/bn_2/bn_bias
residual_5/bn_2/bn_mean
residual_5/bn_2/bn_varresidual_5/bn_2/bn"	SpatialBN*
is_test*
epsilon??'7*
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
residual_5/addresidual_5/out"Relu\
residual_5/out
move_conv_w
move_conv_b	move_conv"Conv*

stride*
pad *

kernel?
	move_conv
move1_bn_scale
move1_bn_bias
move1_bn_mean
move1_bn_varmove1_bn"	SpatialBN*
is_test*
epsilon??'7*
order"NCHWM
move1_bn
move1_scale_wmove1_scale_internal"Mul*
axis*
	broadcastP
move1_scale_internal
move1_scale_bmove1_scale"Add*
axis*
	broadcast
move1_scale
move1_relu"Relu/

move1_relu
	move_fc_w
	move_fc_bmove_fc"FC#
move_fcflatten_sl_move"Flatten#
flatten_sl_movesoftmax"SoftmaxV
residual_5/out
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
epsilon??'7*
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
bn_1_scale:	bn_1_bias:	bn_1_mean:bn_1_var:	scale_1_w:	scale_1_b:residual_1/conv_1_w:residual_1/conv_1_b:residual_1/bn_1/bn_scale:residual_1/bn_1/bn_bias:residual_1/bn_1/bn_mean:residual_1/bn_1/bn_var:residual_1/bn_1/bn_w:residual_1/bn_1/bn_b:residual_1/conv_2_w:residual_1/conv_2_b:residual_1/bn_2/bn_scale:residual_1/bn_2/bn_bias:residual_1/bn_2/bn_mean:residual_1/bn_2/bn_var:residual_1/bn_2/bn_w:residual_1/bn_2/bn_b:residual_2/conv_1_w:residual_2/conv_1_b:residual_2/bn_1/bn_scale:residual_2/bn_1/bn_bias:residual_2/bn_1/bn_mean:residual_2/bn_1/bn_var:residual_2/bn_1/bn_w:residual_2/bn_1/bn_b:residual_2/conv_2_w:residual_2/conv_2_b:residual_2/bn_2/bn_scale:residual_2/bn_2/bn_bias:residual_2/bn_2/bn_mean:residual_2/bn_2/bn_var:residual_2/bn_2/bn_w:residual_2/bn_2/bn_b:residual_3/conv_1_w:residual_3/conv_1_b:residual_3/bn_1/bn_scale:residual_3/bn_1/bn_bias:residual_3/bn_1/bn_mean:residual_3/bn_1/bn_var:residual_3/bn_1/bn_w:residual_3/bn_1/bn_b:residual_3/conv_2_w:residual_3/conv_2_b:residual_3/bn_2/bn_scale:residual_3/bn_2/bn_bias:residual_3/bn_2/bn_mean:residual_3/bn_2/bn_var:residual_3/bn_2/bn_w:residual_3/bn_2/bn_b:residual_4/conv_1_w:residual_4/conv_1_b:residual_4/bn_1/bn_scale:residual_4/bn_1/bn_bias:residual_4/bn_1/bn_mean:residual_4/bn_1/bn_var:residual_4/bn_1/bn_w:residual_4/bn_1/bn_b:residual_4/conv_2_w:residual_4/conv_2_b:residual_4/bn_2/bn_scale:residual_4/bn_2/bn_bias:residual_4/bn_2/bn_mean:residual_4/bn_2/bn_var:residual_4/bn_2/bn_w:residual_4/bn_2/bn_b:residual_5/conv_1_w:residual_5/conv_1_b:residual_5/bn_1/bn_scale:residual_5/bn_1/bn_bias:residual_5/bn_1/bn_mean:residual_5/bn_1/bn_var:residual_5/bn_1/bn_w:residual_5/bn_1/bn_b:residual_5/conv_2_w:residual_5/conv_2_b:residual_5/bn_2/bn_scale:residual_5/bn_2/bn_bias:residual_5/bn_2/bn_mean:residual_5/bn_2/bn_var:residual_5/bn_2/bn_w:residual_5/bn_2/bn_b:move_conv_w:move_conv_b:move1_bn_scale:move1_bn_bias:move1_bn_mean:move1_bn_var:move1_scale_w:move1_scale_b:	move_fc_w:	move_fc_b:	VN_conv_w:	VN_conv_b:VN_bn_scale:
VN_bn_bias:
VN_bn_mean:	VN_bn_var:
VN_Scale_w:
VN_Scale_b:VN_IP1_w:VN_IP1_b:VN_IP2_w:VN_IP2_bBtanh