??
??
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
8
Const
output"dtype"
valuetensor"
dtypetype
?
Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

?
FusedBatchNormV3
x"T

scale"U
offset"U	
mean"U
variance"U
y"T

batch_mean"U
batch_variance"U
reserve_space_1"U
reserve_space_2"U
reserve_space_3"U"
Ttype:
2"
Utype:
2"
epsilonfloat%??8"&
exponential_avg_factorfloat%  ??";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
.
Identity

input"T
output"T"	
Ttype
\
	LeakyRelu
features"T
activations"T"
alphafloat%??L>"
Ttype0:
2
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
?
Mul
x"T
y"T
z"T"
Ttype:
2	?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype?
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
.
Rsqrt
x"T
y"T"
Ttype:

2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ?
@
StaticRegexFullMatch	
input

output
"
patternstring
?
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
-
Tanh
x"T
y"T"
Ttype:

2
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.5.02v2.5.0-0-ga4dfb8d1a718??
{
dense_12/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?(* 
shared_namedense_12/kernel
t
#dense_12/kernel/Read/ReadVariableOpReadVariableOpdense_12/kernel*
_output_shapes
:	2?(*
dtype0
?
batch_normalization_24/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?(*-
shared_namebatch_normalization_24/gamma
?
0batch_normalization_24/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_24/gamma*
_output_shapes	
:?(*
dtype0
?
batch_normalization_24/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?(*,
shared_namebatch_normalization_24/beta
?
/batch_normalization_24/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_24/beta*
_output_shapes	
:?(*
dtype0
?
"batch_normalization_24/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?(*3
shared_name$"batch_normalization_24/moving_mean
?
6batch_normalization_24/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_24/moving_mean*
_output_shapes	
:?(*
dtype0
?
&batch_normalization_24/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?(*7
shared_name(&batch_normalization_24/moving_variance
?
:batch_normalization_24/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_24/moving_variance*
_output_shapes	
:?(*
dtype0
?
conv2d_transpose_18/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*+
shared_nameconv2d_transpose_18/kernel
?
.conv2d_transpose_18/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_18/kernel*(
_output_shapes
:??*
dtype0
?
batch_normalization_25/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*-
shared_namebatch_normalization_25/gamma
?
0batch_normalization_25/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_25/gamma*
_output_shapes	
:?*
dtype0
?
batch_normalization_25/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namebatch_normalization_25/beta
?
/batch_normalization_25/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_25/beta*
_output_shapes	
:?*
dtype0
?
"batch_normalization_25/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"batch_normalization_25/moving_mean
?
6batch_normalization_25/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_25/moving_mean*
_output_shapes	
:?*
dtype0
?
&batch_normalization_25/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*7
shared_name(&batch_normalization_25/moving_variance
?
:batch_normalization_25/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_25/moving_variance*
_output_shapes	
:?*
dtype0
?
conv2d_transpose_19/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*+
shared_nameconv2d_transpose_19/kernel
?
.conv2d_transpose_19/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_19/kernel*'
_output_shapes
:@?*
dtype0
?
batch_normalization_26/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*-
shared_namebatch_normalization_26/gamma
?
0batch_normalization_26/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_26/gamma*
_output_shapes
:@*
dtype0
?
batch_normalization_26/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_namebatch_normalization_26/beta
?
/batch_normalization_26/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_26/beta*
_output_shapes
:@*
dtype0
?
"batch_normalization_26/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"batch_normalization_26/moving_mean
?
6batch_normalization_26/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_26/moving_mean*
_output_shapes
:@*
dtype0
?
&batch_normalization_26/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*7
shared_name(&batch_normalization_26/moving_variance
?
:batch_normalization_26/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_26/moving_variance*
_output_shapes
:@*
dtype0
?
conv2d_transpose_20/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*+
shared_nameconv2d_transpose_20/kernel
?
.conv2d_transpose_20/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_20/kernel*&
_output_shapes
:@*
dtype0

NoOpNoOp
?1
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?1
value?1B?1 B?0
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer-6
layer_with_weights-4
layer-7
	layer_with_weights-5
	layer-8

layer-9
layer_with_weights-6
layer-10
trainable_variables
	variables
regularization_losses
	keras_api

signatures
^

kernel
trainable_variables
	variables
regularization_losses
	keras_api
?
axis
	gamma
beta
moving_mean
moving_variance
trainable_variables
	variables
regularization_losses
	keras_api
R
trainable_variables
 	variables
!regularization_losses
"	keras_api
R
#trainable_variables
$	variables
%regularization_losses
&	keras_api
^

'kernel
(trainable_variables
)	variables
*regularization_losses
+	keras_api
?
,axis
	-gamma
.beta
/moving_mean
0moving_variance
1trainable_variables
2	variables
3regularization_losses
4	keras_api
R
5trainable_variables
6	variables
7regularization_losses
8	keras_api
r
9output_padding

:kernel
;trainable_variables
<	variables
=regularization_losses
>	keras_api
?
?axis
	@gamma
Abeta
Bmoving_mean
Cmoving_variance
Dtrainable_variables
E	variables
Fregularization_losses
G	keras_api
R
Htrainable_variables
I	variables
Jregularization_losses
K	keras_api
r
Loutput_padding

Mkernel
Ntrainable_variables
O	variables
Pregularization_losses
Q	keras_api
F
0
1
2
'3
-4
.5
:6
@7
A8
M9
v
0
1
2
3
4
'5
-6
.7
/8
09
:10
@11
A12
B13
C14
M15
 
?
trainable_variables
Rlayer_regularization_losses
Smetrics
	variables

Tlayers
Unon_trainable_variables
regularization_losses
Vlayer_metrics
 
[Y
VARIABLE_VALUEdense_12/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE

0

0
 
?
trainable_variables
Wlayer_regularization_losses
Xmetrics
	variables

Ylayers
Znon_trainable_variables
regularization_losses
[layer_metrics
 
ge
VARIABLE_VALUEbatch_normalization_24/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_24/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_24/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_24/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
2
3
 
?
trainable_variables
\layer_regularization_losses
]metrics
	variables

^layers
_non_trainable_variables
regularization_losses
`layer_metrics
 
 
 
?
trainable_variables
alayer_regularization_losses
bmetrics
 	variables

clayers
dnon_trainable_variables
!regularization_losses
elayer_metrics
 
 
 
?
#trainable_variables
flayer_regularization_losses
gmetrics
$	variables

hlayers
inon_trainable_variables
%regularization_losses
jlayer_metrics
fd
VARIABLE_VALUEconv2d_transpose_18/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE

'0

'0
 
?
(trainable_variables
klayer_regularization_losses
lmetrics
)	variables

mlayers
nnon_trainable_variables
*regularization_losses
olayer_metrics
 
ge
VARIABLE_VALUEbatch_normalization_25/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_25/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_25/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_25/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

-0
.1

-0
.1
/2
03
 
?
1trainable_variables
player_regularization_losses
qmetrics
2	variables

rlayers
snon_trainable_variables
3regularization_losses
tlayer_metrics
 
 
 
?
5trainable_variables
ulayer_regularization_losses
vmetrics
6	variables

wlayers
xnon_trainable_variables
7regularization_losses
ylayer_metrics
 
fd
VARIABLE_VALUEconv2d_transpose_19/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE

:0

:0
 
?
;trainable_variables
zlayer_regularization_losses
{metrics
<	variables

|layers
}non_trainable_variables
=regularization_losses
~layer_metrics
 
ge
VARIABLE_VALUEbatch_normalization_26/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_26/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_26/moving_mean;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_26/moving_variance?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

@0
A1

@0
A1
B2
C3
 
?
Dtrainable_variables
layer_regularization_losses
?metrics
E	variables
?layers
?non_trainable_variables
Fregularization_losses
?layer_metrics
 
 
 
?
Htrainable_variables
 ?layer_regularization_losses
?metrics
I	variables
?layers
?non_trainable_variables
Jregularization_losses
?layer_metrics
 
fd
VARIABLE_VALUEconv2d_transpose_20/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE

M0

M0
 
?
Ntrainable_variables
 ?layer_regularization_losses
?metrics
O	variables
?layers
?non_trainable_variables
Pregularization_losses
?layer_metrics
 
 
N
0
1
2
3
4
5
6
7
	8

9
10
*
0
1
/2
03
B4
C5
 
 
 
 
 
 
 
 
 

0
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

/0
01
 
 
 
 
 
 
 
 
 
 
 
 
 
 

B0
C1
 
 
 
 
 
 
 
 
 
 
 
?
serving_default_dense_12_inputPlaceholder*'
_output_shapes
:?????????2*
dtype0*
shape:?????????2
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_dense_12_inputdense_12/kernel&batch_normalization_24/moving_variancebatch_normalization_24/gamma"batch_normalization_24/moving_meanbatch_normalization_24/betaconv2d_transpose_18/kernelbatch_normalization_25/gammabatch_normalization_25/beta"batch_normalization_25/moving_mean&batch_normalization_25/moving_varianceconv2d_transpose_19/kernelbatch_normalization_26/gammabatch_normalization_26/beta"batch_normalization_26/moving_mean&batch_normalization_26/moving_varianceconv2d_transpose_20/kernel*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????
*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *.
f)R'
%__inference_signature_wrapper_1665129
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_12/kernel/Read/ReadVariableOp0batch_normalization_24/gamma/Read/ReadVariableOp/batch_normalization_24/beta/Read/ReadVariableOp6batch_normalization_24/moving_mean/Read/ReadVariableOp:batch_normalization_24/moving_variance/Read/ReadVariableOp.conv2d_transpose_18/kernel/Read/ReadVariableOp0batch_normalization_25/gamma/Read/ReadVariableOp/batch_normalization_25/beta/Read/ReadVariableOp6batch_normalization_25/moving_mean/Read/ReadVariableOp:batch_normalization_25/moving_variance/Read/ReadVariableOp.conv2d_transpose_19/kernel/Read/ReadVariableOp0batch_normalization_26/gamma/Read/ReadVariableOp/batch_normalization_26/beta/Read/ReadVariableOp6batch_normalization_26/moving_mean/Read/ReadVariableOp:batch_normalization_26/moving_variance/Read/ReadVariableOp.conv2d_transpose_20/kernel/Read/ReadVariableOpConst*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *)
f$R"
 __inference__traced_save_1665781
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_12/kernelbatch_normalization_24/gammabatch_normalization_24/beta"batch_normalization_24/moving_mean&batch_normalization_24/moving_varianceconv2d_transpose_18/kernelbatch_normalization_25/gammabatch_normalization_25/beta"batch_normalization_25/moving_mean&batch_normalization_25/moving_varianceconv2d_transpose_19/kernelbatch_normalization_26/gammabatch_normalization_26/beta"batch_normalization_26/moving_mean&batch_normalization_26/moving_varianceconv2d_transpose_20/kernel*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *,
f'R%
#__inference__traced_restore_1665839??
?
?
E__inference_dense_12_layer_call_and_return_conditional_losses_1664693

inputs1
matmul_readvariableop_resource:	2?(
identity??MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	2?(*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????(2
MatMul}
IdentityIdentityMatMul:product:0^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????(2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????2: 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_24_layer_call_and_return_conditional_losses_1664139

inputs0
!batchnorm_readvariableop_resource:	?(4
%batchnorm_mul_readvariableop_resource:	?(2
#batchnorm_readvariableop_1_resource:	?(2
#batchnorm_readvariableop_2_resource:	?(
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?(*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?(2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?(2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?(*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?(2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????(2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:?(*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?(2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:?(*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?(2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????(2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:??????????(2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????(: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????(
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_26_layer_call_and_return_conditional_losses_1664563

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
%__inference_signature_wrapper_1665129
dense_12_input
unknown:	2?(
	unknown_0:	?(
	unknown_1:	?(
	unknown_2:	?(
	unknown_3:	?(%
	unknown_4:??
	unknown_5:	?
	unknown_6:	?
	unknown_7:	?
	unknown_8:	?$
	unknown_9:@?

unknown_10:@

unknown_11:@

unknown_12:@

unknown_13:@$

unknown_14:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalldense_12_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????
*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *+
f&R$
"__inference__wrapped_model_16641152
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????2: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
'
_output_shapes
:?????????2
(
_user_specified_namedense_12_input
??
?
J__inference_sequential_18_layer_call_and_return_conditional_losses_1665443

inputs:
'dense_12_matmul_readvariableop_resource:	2?(M
>batch_normalization_24_assignmovingavg_readvariableop_resource:	?(O
@batch_normalization_24_assignmovingavg_1_readvariableop_resource:	?(K
<batch_normalization_24_batchnorm_mul_readvariableop_resource:	?(G
8batch_normalization_24_batchnorm_readvariableop_resource:	?(X
<conv2d_transpose_18_conv2d_transpose_readvariableop_resource:??=
.batch_normalization_25_readvariableop_resource:	??
0batch_normalization_25_readvariableop_1_resource:	?N
?batch_normalization_25_fusedbatchnormv3_readvariableop_resource:	?P
Abatch_normalization_25_fusedbatchnormv3_readvariableop_1_resource:	?W
<conv2d_transpose_19_conv2d_transpose_readvariableop_resource:@?<
.batch_normalization_26_readvariableop_resource:@>
0batch_normalization_26_readvariableop_1_resource:@M
?batch_normalization_26_fusedbatchnormv3_readvariableop_resource:@O
Abatch_normalization_26_fusedbatchnormv3_readvariableop_1_resource:@V
<conv2d_transpose_20_conv2d_transpose_readvariableop_resource:@
identity??&batch_normalization_24/AssignMovingAvg?5batch_normalization_24/AssignMovingAvg/ReadVariableOp?(batch_normalization_24/AssignMovingAvg_1?7batch_normalization_24/AssignMovingAvg_1/ReadVariableOp?/batch_normalization_24/batchnorm/ReadVariableOp?3batch_normalization_24/batchnorm/mul/ReadVariableOp?%batch_normalization_25/AssignNewValue?'batch_normalization_25/AssignNewValue_1?6batch_normalization_25/FusedBatchNormV3/ReadVariableOp?8batch_normalization_25/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_25/ReadVariableOp?'batch_normalization_25/ReadVariableOp_1?%batch_normalization_26/AssignNewValue?'batch_normalization_26/AssignNewValue_1?6batch_normalization_26/FusedBatchNormV3/ReadVariableOp?8batch_normalization_26/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_26/ReadVariableOp?'batch_normalization_26/ReadVariableOp_1?3conv2d_transpose_18/conv2d_transpose/ReadVariableOp?3conv2d_transpose_19/conv2d_transpose/ReadVariableOp?3conv2d_transpose_20/conv2d_transpose/ReadVariableOp?dense_12/MatMul/ReadVariableOp?
dense_12/MatMul/ReadVariableOpReadVariableOp'dense_12_matmul_readvariableop_resource*
_output_shapes
:	2?(*
dtype02 
dense_12/MatMul/ReadVariableOp?
dense_12/MatMulMatMulinputs&dense_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????(2
dense_12/MatMul?
5batch_normalization_24/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 27
5batch_normalization_24/moments/mean/reduction_indices?
#batch_normalization_24/moments/meanMeandense_12/MatMul:product:0>batch_normalization_24/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?(*
	keep_dims(2%
#batch_normalization_24/moments/mean?
+batch_normalization_24/moments/StopGradientStopGradient,batch_normalization_24/moments/mean:output:0*
T0*
_output_shapes
:	?(2-
+batch_normalization_24/moments/StopGradient?
0batch_normalization_24/moments/SquaredDifferenceSquaredDifferencedense_12/MatMul:product:04batch_normalization_24/moments/StopGradient:output:0*
T0*(
_output_shapes
:??????????(22
0batch_normalization_24/moments/SquaredDifference?
9batch_normalization_24/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2;
9batch_normalization_24/moments/variance/reduction_indices?
'batch_normalization_24/moments/varianceMean4batch_normalization_24/moments/SquaredDifference:z:0Bbatch_normalization_24/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?(*
	keep_dims(2)
'batch_normalization_24/moments/variance?
&batch_normalization_24/moments/SqueezeSqueeze,batch_normalization_24/moments/mean:output:0*
T0*
_output_shapes	
:?(*
squeeze_dims
 2(
&batch_normalization_24/moments/Squeeze?
(batch_normalization_24/moments/Squeeze_1Squeeze0batch_normalization_24/moments/variance:output:0*
T0*
_output_shapes	
:?(*
squeeze_dims
 2*
(batch_normalization_24/moments/Squeeze_1?
,batch_normalization_24/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2.
,batch_normalization_24/AssignMovingAvg/decay?
5batch_normalization_24/AssignMovingAvg/ReadVariableOpReadVariableOp>batch_normalization_24_assignmovingavg_readvariableop_resource*
_output_shapes	
:?(*
dtype027
5batch_normalization_24/AssignMovingAvg/ReadVariableOp?
*batch_normalization_24/AssignMovingAvg/subSub=batch_normalization_24/AssignMovingAvg/ReadVariableOp:value:0/batch_normalization_24/moments/Squeeze:output:0*
T0*
_output_shapes	
:?(2,
*batch_normalization_24/AssignMovingAvg/sub?
*batch_normalization_24/AssignMovingAvg/mulMul.batch_normalization_24/AssignMovingAvg/sub:z:05batch_normalization_24/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:?(2,
*batch_normalization_24/AssignMovingAvg/mul?
&batch_normalization_24/AssignMovingAvgAssignSubVariableOp>batch_normalization_24_assignmovingavg_readvariableop_resource.batch_normalization_24/AssignMovingAvg/mul:z:06^batch_normalization_24/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02(
&batch_normalization_24/AssignMovingAvg?
.batch_normalization_24/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<20
.batch_normalization_24/AssignMovingAvg_1/decay?
7batch_normalization_24/AssignMovingAvg_1/ReadVariableOpReadVariableOp@batch_normalization_24_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?(*
dtype029
7batch_normalization_24/AssignMovingAvg_1/ReadVariableOp?
,batch_normalization_24/AssignMovingAvg_1/subSub?batch_normalization_24/AssignMovingAvg_1/ReadVariableOp:value:01batch_normalization_24/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?(2.
,batch_normalization_24/AssignMovingAvg_1/sub?
,batch_normalization_24/AssignMovingAvg_1/mulMul0batch_normalization_24/AssignMovingAvg_1/sub:z:07batch_normalization_24/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:?(2.
,batch_normalization_24/AssignMovingAvg_1/mul?
(batch_normalization_24/AssignMovingAvg_1AssignSubVariableOp@batch_normalization_24_assignmovingavg_1_readvariableop_resource0batch_normalization_24/AssignMovingAvg_1/mul:z:08^batch_normalization_24/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02*
(batch_normalization_24/AssignMovingAvg_1?
&batch_normalization_24/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2(
&batch_normalization_24/batchnorm/add/y?
$batch_normalization_24/batchnorm/addAddV21batch_normalization_24/moments/Squeeze_1:output:0/batch_normalization_24/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?(2&
$batch_normalization_24/batchnorm/add?
&batch_normalization_24/batchnorm/RsqrtRsqrt(batch_normalization_24/batchnorm/add:z:0*
T0*
_output_shapes	
:?(2(
&batch_normalization_24/batchnorm/Rsqrt?
3batch_normalization_24/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_24_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?(*
dtype025
3batch_normalization_24/batchnorm/mul/ReadVariableOp?
$batch_normalization_24/batchnorm/mulMul*batch_normalization_24/batchnorm/Rsqrt:y:0;batch_normalization_24/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?(2&
$batch_normalization_24/batchnorm/mul?
&batch_normalization_24/batchnorm/mul_1Muldense_12/MatMul:product:0(batch_normalization_24/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????(2(
&batch_normalization_24/batchnorm/mul_1?
&batch_normalization_24/batchnorm/mul_2Mul/batch_normalization_24/moments/Squeeze:output:0(batch_normalization_24/batchnorm/mul:z:0*
T0*
_output_shapes	
:?(2(
&batch_normalization_24/batchnorm/mul_2?
/batch_normalization_24/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_24_batchnorm_readvariableop_resource*
_output_shapes	
:?(*
dtype021
/batch_normalization_24/batchnorm/ReadVariableOp?
$batch_normalization_24/batchnorm/subSub7batch_normalization_24/batchnorm/ReadVariableOp:value:0*batch_normalization_24/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?(2&
$batch_normalization_24/batchnorm/sub?
&batch_normalization_24/batchnorm/add_1AddV2*batch_normalization_24/batchnorm/mul_1:z:0(batch_normalization_24/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????(2(
&batch_normalization_24/batchnorm/add_1?
leaky_re_lu_30/LeakyRelu	LeakyRelu*batch_normalization_24/batchnorm/add_1:z:0*(
_output_shapes
:??????????(2
leaky_re_lu_30/LeakyRelux
reshape_6/ShapeShape&leaky_re_lu_30/LeakyRelu:activations:0*
T0*
_output_shapes
:2
reshape_6/Shape?
reshape_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
reshape_6/strided_slice/stack?
reshape_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_6/strided_slice/stack_1?
reshape_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_6/strided_slice/stack_2?
reshape_6/strided_sliceStridedSlicereshape_6/Shape:output:0&reshape_6/strided_slice/stack:output:0(reshape_6/strided_slice/stack_1:output:0(reshape_6/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_6/strided_slicex
reshape_6/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_6/Reshape/shape/1x
reshape_6/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_6/Reshape/shape/2y
reshape_6/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :?2
reshape_6/Reshape/shape/3?
reshape_6/Reshape/shapePack reshape_6/strided_slice:output:0"reshape_6/Reshape/shape/1:output:0"reshape_6/Reshape/shape/2:output:0"reshape_6/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
reshape_6/Reshape/shape?
reshape_6/ReshapeReshape&leaky_re_lu_30/LeakyRelu:activations:0 reshape_6/Reshape/shape:output:0*
T0*0
_output_shapes
:??????????2
reshape_6/Reshape?
conv2d_transpose_18/ShapeShapereshape_6/Reshape:output:0*
T0*
_output_shapes
:2
conv2d_transpose_18/Shape?
'conv2d_transpose_18/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_18/strided_slice/stack?
)conv2d_transpose_18/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_18/strided_slice/stack_1?
)conv2d_transpose_18/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_18/strided_slice/stack_2?
!conv2d_transpose_18/strided_sliceStridedSlice"conv2d_transpose_18/Shape:output:00conv2d_transpose_18/strided_slice/stack:output:02conv2d_transpose_18/strided_slice/stack_1:output:02conv2d_transpose_18/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_18/strided_slice|
conv2d_transpose_18/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_18/stack/1|
conv2d_transpose_18/stack/2Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_18/stack/2}
conv2d_transpose_18/stack/3Const*
_output_shapes
: *
dtype0*
value
B :?2
conv2d_transpose_18/stack/3?
conv2d_transpose_18/stackPack*conv2d_transpose_18/strided_slice:output:0$conv2d_transpose_18/stack/1:output:0$conv2d_transpose_18/stack/2:output:0$conv2d_transpose_18/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_18/stack?
)conv2d_transpose_18/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_18/strided_slice_1/stack?
+conv2d_transpose_18/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_18/strided_slice_1/stack_1?
+conv2d_transpose_18/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_18/strided_slice_1/stack_2?
#conv2d_transpose_18/strided_slice_1StridedSlice"conv2d_transpose_18/stack:output:02conv2d_transpose_18/strided_slice_1/stack:output:04conv2d_transpose_18/strided_slice_1/stack_1:output:04conv2d_transpose_18/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_18/strided_slice_1?
3conv2d_transpose_18/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_18_conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype025
3conv2d_transpose_18/conv2d_transpose/ReadVariableOp?
$conv2d_transpose_18/conv2d_transposeConv2DBackpropInput"conv2d_transpose_18/stack:output:0;conv2d_transpose_18/conv2d_transpose/ReadVariableOp:value:0reshape_6/Reshape:output:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2&
$conv2d_transpose_18/conv2d_transpose?
%batch_normalization_25/ReadVariableOpReadVariableOp.batch_normalization_25_readvariableop_resource*
_output_shapes	
:?*
dtype02'
%batch_normalization_25/ReadVariableOp?
'batch_normalization_25/ReadVariableOp_1ReadVariableOp0batch_normalization_25_readvariableop_1_resource*
_output_shapes	
:?*
dtype02)
'batch_normalization_25/ReadVariableOp_1?
6batch_normalization_25/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_25_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype028
6batch_normalization_25/FusedBatchNormV3/ReadVariableOp?
8batch_normalization_25/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_25_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02:
8batch_normalization_25/FusedBatchNormV3/ReadVariableOp_1?
'batch_normalization_25/FusedBatchNormV3FusedBatchNormV3-conv2d_transpose_18/conv2d_transpose:output:0-batch_normalization_25/ReadVariableOp:value:0/batch_normalization_25/ReadVariableOp_1:value:0>batch_normalization_25/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_25/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2)
'batch_normalization_25/FusedBatchNormV3?
%batch_normalization_25/AssignNewValueAssignVariableOp?batch_normalization_25_fusedbatchnormv3_readvariableop_resource4batch_normalization_25/FusedBatchNormV3:batch_mean:07^batch_normalization_25/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02'
%batch_normalization_25/AssignNewValue?
'batch_normalization_25/AssignNewValue_1AssignVariableOpAbatch_normalization_25_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_25/FusedBatchNormV3:batch_variance:09^batch_normalization_25/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02)
'batch_normalization_25/AssignNewValue_1?
leaky_re_lu_31/LeakyRelu	LeakyRelu+batch_normalization_25/FusedBatchNormV3:y:0*0
_output_shapes
:??????????2
leaky_re_lu_31/LeakyRelu?
conv2d_transpose_19/ShapeShape&leaky_re_lu_31/LeakyRelu:activations:0*
T0*
_output_shapes
:2
conv2d_transpose_19/Shape?
'conv2d_transpose_19/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_19/strided_slice/stack?
)conv2d_transpose_19/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_19/strided_slice/stack_1?
)conv2d_transpose_19/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_19/strided_slice/stack_2?
!conv2d_transpose_19/strided_sliceStridedSlice"conv2d_transpose_19/Shape:output:00conv2d_transpose_19/strided_slice/stack:output:02conv2d_transpose_19/strided_slice/stack_1:output:02conv2d_transpose_19/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_19/strided_slice|
conv2d_transpose_19/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_19/stack/1|
conv2d_transpose_19/stack/2Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_19/stack/2|
conv2d_transpose_19/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2
conv2d_transpose_19/stack/3?
conv2d_transpose_19/stackPack*conv2d_transpose_19/strided_slice:output:0$conv2d_transpose_19/stack/1:output:0$conv2d_transpose_19/stack/2:output:0$conv2d_transpose_19/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_19/stack?
)conv2d_transpose_19/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_19/strided_slice_1/stack?
+conv2d_transpose_19/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_19/strided_slice_1/stack_1?
+conv2d_transpose_19/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_19/strided_slice_1/stack_2?
#conv2d_transpose_19/strided_slice_1StridedSlice"conv2d_transpose_19/stack:output:02conv2d_transpose_19/strided_slice_1/stack:output:04conv2d_transpose_19/strided_slice_1/stack_1:output:04conv2d_transpose_19/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_19/strided_slice_1?
3conv2d_transpose_19/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_19_conv2d_transpose_readvariableop_resource*'
_output_shapes
:@?*
dtype025
3conv2d_transpose_19/conv2d_transpose/ReadVariableOp?
$conv2d_transpose_19/conv2d_transposeConv2DBackpropInput"conv2d_transpose_19/stack:output:0;conv2d_transpose_19/conv2d_transpose/ReadVariableOp:value:0&leaky_re_lu_31/LeakyRelu:activations:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2&
$conv2d_transpose_19/conv2d_transpose?
%batch_normalization_26/ReadVariableOpReadVariableOp.batch_normalization_26_readvariableop_resource*
_output_shapes
:@*
dtype02'
%batch_normalization_26/ReadVariableOp?
'batch_normalization_26/ReadVariableOp_1ReadVariableOp0batch_normalization_26_readvariableop_1_resource*
_output_shapes
:@*
dtype02)
'batch_normalization_26/ReadVariableOp_1?
6batch_normalization_26/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_26_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype028
6batch_normalization_26/FusedBatchNormV3/ReadVariableOp?
8batch_normalization_26/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_26_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02:
8batch_normalization_26/FusedBatchNormV3/ReadVariableOp_1?
'batch_normalization_26/FusedBatchNormV3FusedBatchNormV3-conv2d_transpose_19/conv2d_transpose:output:0-batch_normalization_26/ReadVariableOp:value:0/batch_normalization_26/ReadVariableOp_1:value:0>batch_normalization_26/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_26/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2)
'batch_normalization_26/FusedBatchNormV3?
%batch_normalization_26/AssignNewValueAssignVariableOp?batch_normalization_26_fusedbatchnormv3_readvariableop_resource4batch_normalization_26/FusedBatchNormV3:batch_mean:07^batch_normalization_26/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02'
%batch_normalization_26/AssignNewValue?
'batch_normalization_26/AssignNewValue_1AssignVariableOpAbatch_normalization_26_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_26/FusedBatchNormV3:batch_variance:09^batch_normalization_26/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02)
'batch_normalization_26/AssignNewValue_1?
leaky_re_lu_32/LeakyRelu	LeakyRelu+batch_normalization_26/FusedBatchNormV3:y:0*/
_output_shapes
:?????????@2
leaky_re_lu_32/LeakyRelu?
conv2d_transpose_20/ShapeShape&leaky_re_lu_32/LeakyRelu:activations:0*
T0*
_output_shapes
:2
conv2d_transpose_20/Shape?
'conv2d_transpose_20/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_20/strided_slice/stack?
)conv2d_transpose_20/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_20/strided_slice/stack_1?
)conv2d_transpose_20/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_20/strided_slice/stack_2?
!conv2d_transpose_20/strided_sliceStridedSlice"conv2d_transpose_20/Shape:output:00conv2d_transpose_20/strided_slice/stack:output:02conv2d_transpose_20/strided_slice/stack_1:output:02conv2d_transpose_20/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_20/strided_slice|
conv2d_transpose_20/stack/1Const*
_output_shapes
: *
dtype0*
value	B :
2
conv2d_transpose_20/stack/1|
conv2d_transpose_20/stack/2Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_20/stack/2|
conv2d_transpose_20/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_20/stack/3?
conv2d_transpose_20/stackPack*conv2d_transpose_20/strided_slice:output:0$conv2d_transpose_20/stack/1:output:0$conv2d_transpose_20/stack/2:output:0$conv2d_transpose_20/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_20/stack?
)conv2d_transpose_20/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_20/strided_slice_1/stack?
+conv2d_transpose_20/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_20/strided_slice_1/stack_1?
+conv2d_transpose_20/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_20/strided_slice_1/stack_2?
#conv2d_transpose_20/strided_slice_1StridedSlice"conv2d_transpose_20/stack:output:02conv2d_transpose_20/strided_slice_1/stack:output:04conv2d_transpose_20/strided_slice_1/stack_1:output:04conv2d_transpose_20/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_20/strided_slice_1?
3conv2d_transpose_20/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_20_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@*
dtype025
3conv2d_transpose_20/conv2d_transpose/ReadVariableOp?
$conv2d_transpose_20/conv2d_transposeConv2DBackpropInput"conv2d_transpose_20/stack:output:0;conv2d_transpose_20/conv2d_transpose/ReadVariableOp:value:0&leaky_re_lu_32/LeakyRelu:activations:0*
T0*/
_output_shapes
:?????????
*
paddingSAME*
strides
2&
$conv2d_transpose_20/conv2d_transpose?
conv2d_transpose_20/TanhTanh-conv2d_transpose_20/conv2d_transpose:output:0*
T0*/
_output_shapes
:?????????
2
conv2d_transpose_20/Tanh?	
IdentityIdentityconv2d_transpose_20/Tanh:y:0'^batch_normalization_24/AssignMovingAvg6^batch_normalization_24/AssignMovingAvg/ReadVariableOp)^batch_normalization_24/AssignMovingAvg_18^batch_normalization_24/AssignMovingAvg_1/ReadVariableOp0^batch_normalization_24/batchnorm/ReadVariableOp4^batch_normalization_24/batchnorm/mul/ReadVariableOp&^batch_normalization_25/AssignNewValue(^batch_normalization_25/AssignNewValue_17^batch_normalization_25/FusedBatchNormV3/ReadVariableOp9^batch_normalization_25/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_25/ReadVariableOp(^batch_normalization_25/ReadVariableOp_1&^batch_normalization_26/AssignNewValue(^batch_normalization_26/AssignNewValue_17^batch_normalization_26/FusedBatchNormV3/ReadVariableOp9^batch_normalization_26/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_26/ReadVariableOp(^batch_normalization_26/ReadVariableOp_14^conv2d_transpose_18/conv2d_transpose/ReadVariableOp4^conv2d_transpose_19/conv2d_transpose/ReadVariableOp4^conv2d_transpose_20/conv2d_transpose/ReadVariableOp^dense_12/MatMul/ReadVariableOp*
T0*/
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????2: : : : : : : : : : : : : : : : 2P
&batch_normalization_24/AssignMovingAvg&batch_normalization_24/AssignMovingAvg2n
5batch_normalization_24/AssignMovingAvg/ReadVariableOp5batch_normalization_24/AssignMovingAvg/ReadVariableOp2T
(batch_normalization_24/AssignMovingAvg_1(batch_normalization_24/AssignMovingAvg_12r
7batch_normalization_24/AssignMovingAvg_1/ReadVariableOp7batch_normalization_24/AssignMovingAvg_1/ReadVariableOp2b
/batch_normalization_24/batchnorm/ReadVariableOp/batch_normalization_24/batchnorm/ReadVariableOp2j
3batch_normalization_24/batchnorm/mul/ReadVariableOp3batch_normalization_24/batchnorm/mul/ReadVariableOp2N
%batch_normalization_25/AssignNewValue%batch_normalization_25/AssignNewValue2R
'batch_normalization_25/AssignNewValue_1'batch_normalization_25/AssignNewValue_12p
6batch_normalization_25/FusedBatchNormV3/ReadVariableOp6batch_normalization_25/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_25/FusedBatchNormV3/ReadVariableOp_18batch_normalization_25/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_25/ReadVariableOp%batch_normalization_25/ReadVariableOp2R
'batch_normalization_25/ReadVariableOp_1'batch_normalization_25/ReadVariableOp_12N
%batch_normalization_26/AssignNewValue%batch_normalization_26/AssignNewValue2R
'batch_normalization_26/AssignNewValue_1'batch_normalization_26/AssignNewValue_12p
6batch_normalization_26/FusedBatchNormV3/ReadVariableOp6batch_normalization_26/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_26/FusedBatchNormV3/ReadVariableOp_18batch_normalization_26/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_26/ReadVariableOp%batch_normalization_26/ReadVariableOp2R
'batch_normalization_26/ReadVariableOp_1'batch_normalization_26/ReadVariableOp_12j
3conv2d_transpose_18/conv2d_transpose/ReadVariableOp3conv2d_transpose_18/conv2d_transpose/ReadVariableOp2j
3conv2d_transpose_19/conv2d_transpose/ReadVariableOp3conv2d_transpose_19/conv2d_transpose/ReadVariableOp2j
3conv2d_transpose_20/conv2d_transpose/ReadVariableOp3conv2d_transpose_20/conv2d_transpose/ReadVariableOp2@
dense_12/MatMul/ReadVariableOpdense_12/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
b
F__inference_reshape_6_layer_call_and_return_conditional_losses_1665566

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliced
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/1d
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/2e
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :?2
Reshape/shape/3?
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
Reshape/shapex
ReshapeReshapeinputsReshape/shape:output:0*
T0*0
_output_shapes
:??????????2	
Reshapem
IdentityIdentityReshape:output:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????(:P L
(
_output_shapes
:??????????(
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_26_layer_call_and_return_conditional_losses_1664519

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
E__inference_dense_12_layer_call_and_return_conditional_losses_1665457

inputs1
matmul_readvariableop_resource:	2?(
identity??MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	2?(*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????(2
MatMul}
IdentityIdentityMatMul:product:0^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????(2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????2: 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
/__inference_sequential_18_layer_call_fn_1665166

inputs
unknown:	2?(
	unknown_0:	?(
	unknown_1:	?(
	unknown_2:	?(
	unknown_3:	?(%
	unknown_4:??
	unknown_5:	?
	unknown_6:	?
	unknown_7:	?
	unknown_8:	?$
	unknown_9:@?

unknown_10:@

unknown_11:@

unknown_12:@

unknown_13:@$

unknown_14:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_sequential_18_layer_call_and_return_conditional_losses_16647712
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????2: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
5__inference_conv2d_transpose_20_layer_call_fn_1664679

inputs!
unknown:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_conv2d_transpose_20_layer_call_and_return_conditional_losses_16646712
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:+???????????????????????????@: 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_25_layer_call_and_return_conditional_losses_1665610

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?+
?
P__inference_conv2d_transpose_19_layer_call_and_return_conditional_losses_1664489

inputsC
(conv2d_transpose_readvariableop_resource:@?
identity??conv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2P
sub/yConst*
_output_shapes
: *
dtype0*
value	B :2
sub/y\
subSubstrided_slice_1:output:0sub/y:output:0*
T0*
_output_shapes
: 2
subP
mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
mul/yK
mulMulsub:z:0mul/y:output:0*
T0*
_output_shapes
: 2
mulP
add/yConst*
_output_shapes
: *
dtype0*
value	B :2
add/yM
addAddV2mul:z:0add/y:output:0*
T0*
_output_shapes
: 2
addT
sub_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
sub_1/yQ
sub_1Subadd:z:0sub_1/y:output:0*
T0*
_output_shapes
: 2
sub_1T
add_1/yConst*
_output_shapes
: *
dtype0*
value	B : 2	
add_1/yU
add_1AddV2	sub_1:z:0add_1/y:output:0*
T0*
_output_shapes
: 2
add_1T
sub_2/yConst*
_output_shapes
: *
dtype0*
value	B :2	
sub_2/yb
sub_2Substrided_slice_2:output:0sub_2/y:output:0*
T0*
_output_shapes
: 2
sub_2T
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_1/yS
mul_1Mul	sub_2:z:0mul_1/y:output:0*
T0*
_output_shapes
: 2
mul_1T
add_2/yConst*
_output_shapes
: *
dtype0*
value	B :2	
add_2/yU
add_2AddV2	mul_1:z:0add_2/y:output:0*
T0*
_output_shapes
: 2
add_2T
sub_3/yConst*
_output_shapes
: *
dtype0*
value	B :2	
sub_3/yS
sub_3Sub	add_2:z:0sub_3/y:output:0*
T0*
_output_shapes
: 2
sub_3T
add_3/yConst*
_output_shapes
: *
dtype0*
value	B : 2	
add_3/yU
add_3AddV2	sub_3:z:0add_3/y:output:0*
T0*
_output_shapes
: 2
add_3T
stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2	
stack/3?
stackPackstrided_slice:output:0	add_1:z:0	add_3:z:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*'
_output_shapes
:@?*
dtype02!
conv2d_transpose/ReadVariableOp?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+???????????????????????????@*
paddingSAME*
strides
2
conv2d_transpose?
IdentityIdentityconv2d_transpose:output:0 ^conv2d_transpose/ReadVariableOp*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:,????????????????????????????: 2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
8__inference_batch_normalization_26_layer_call_fn_1665664

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_26_layer_call_and_return_conditional_losses_16645632
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?

*__inference_dense_12_layer_call_fn_1665450

inputs
unknown:	2?(
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????(*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_12_layer_call_and_return_conditional_losses_16646932
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????(2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????2: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
8__inference_batch_normalization_25_layer_call_fn_1665579

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_25_layer_call_and_return_conditional_losses_16643382
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
ū
?
J__inference_sequential_18_layer_call_and_return_conditional_losses_1665316

inputs:
'dense_12_matmul_readvariableop_resource:	2?(G
8batch_normalization_24_batchnorm_readvariableop_resource:	?(K
<batch_normalization_24_batchnorm_mul_readvariableop_resource:	?(I
:batch_normalization_24_batchnorm_readvariableop_1_resource:	?(I
:batch_normalization_24_batchnorm_readvariableop_2_resource:	?(X
<conv2d_transpose_18_conv2d_transpose_readvariableop_resource:??=
.batch_normalization_25_readvariableop_resource:	??
0batch_normalization_25_readvariableop_1_resource:	?N
?batch_normalization_25_fusedbatchnormv3_readvariableop_resource:	?P
Abatch_normalization_25_fusedbatchnormv3_readvariableop_1_resource:	?W
<conv2d_transpose_19_conv2d_transpose_readvariableop_resource:@?<
.batch_normalization_26_readvariableop_resource:@>
0batch_normalization_26_readvariableop_1_resource:@M
?batch_normalization_26_fusedbatchnormv3_readvariableop_resource:@O
Abatch_normalization_26_fusedbatchnormv3_readvariableop_1_resource:@V
<conv2d_transpose_20_conv2d_transpose_readvariableop_resource:@
identity??/batch_normalization_24/batchnorm/ReadVariableOp?1batch_normalization_24/batchnorm/ReadVariableOp_1?1batch_normalization_24/batchnorm/ReadVariableOp_2?3batch_normalization_24/batchnorm/mul/ReadVariableOp?6batch_normalization_25/FusedBatchNormV3/ReadVariableOp?8batch_normalization_25/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_25/ReadVariableOp?'batch_normalization_25/ReadVariableOp_1?6batch_normalization_26/FusedBatchNormV3/ReadVariableOp?8batch_normalization_26/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_26/ReadVariableOp?'batch_normalization_26/ReadVariableOp_1?3conv2d_transpose_18/conv2d_transpose/ReadVariableOp?3conv2d_transpose_19/conv2d_transpose/ReadVariableOp?3conv2d_transpose_20/conv2d_transpose/ReadVariableOp?dense_12/MatMul/ReadVariableOp?
dense_12/MatMul/ReadVariableOpReadVariableOp'dense_12_matmul_readvariableop_resource*
_output_shapes
:	2?(*
dtype02 
dense_12/MatMul/ReadVariableOp?
dense_12/MatMulMatMulinputs&dense_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????(2
dense_12/MatMul?
/batch_normalization_24/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_24_batchnorm_readvariableop_resource*
_output_shapes	
:?(*
dtype021
/batch_normalization_24/batchnorm/ReadVariableOp?
&batch_normalization_24/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2(
&batch_normalization_24/batchnorm/add/y?
$batch_normalization_24/batchnorm/addAddV27batch_normalization_24/batchnorm/ReadVariableOp:value:0/batch_normalization_24/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?(2&
$batch_normalization_24/batchnorm/add?
&batch_normalization_24/batchnorm/RsqrtRsqrt(batch_normalization_24/batchnorm/add:z:0*
T0*
_output_shapes	
:?(2(
&batch_normalization_24/batchnorm/Rsqrt?
3batch_normalization_24/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_24_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?(*
dtype025
3batch_normalization_24/batchnorm/mul/ReadVariableOp?
$batch_normalization_24/batchnorm/mulMul*batch_normalization_24/batchnorm/Rsqrt:y:0;batch_normalization_24/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?(2&
$batch_normalization_24/batchnorm/mul?
&batch_normalization_24/batchnorm/mul_1Muldense_12/MatMul:product:0(batch_normalization_24/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????(2(
&batch_normalization_24/batchnorm/mul_1?
1batch_normalization_24/batchnorm/ReadVariableOp_1ReadVariableOp:batch_normalization_24_batchnorm_readvariableop_1_resource*
_output_shapes	
:?(*
dtype023
1batch_normalization_24/batchnorm/ReadVariableOp_1?
&batch_normalization_24/batchnorm/mul_2Mul9batch_normalization_24/batchnorm/ReadVariableOp_1:value:0(batch_normalization_24/batchnorm/mul:z:0*
T0*
_output_shapes	
:?(2(
&batch_normalization_24/batchnorm/mul_2?
1batch_normalization_24/batchnorm/ReadVariableOp_2ReadVariableOp:batch_normalization_24_batchnorm_readvariableop_2_resource*
_output_shapes	
:?(*
dtype023
1batch_normalization_24/batchnorm/ReadVariableOp_2?
$batch_normalization_24/batchnorm/subSub9batch_normalization_24/batchnorm/ReadVariableOp_2:value:0*batch_normalization_24/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?(2&
$batch_normalization_24/batchnorm/sub?
&batch_normalization_24/batchnorm/add_1AddV2*batch_normalization_24/batchnorm/mul_1:z:0(batch_normalization_24/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????(2(
&batch_normalization_24/batchnorm/add_1?
leaky_re_lu_30/LeakyRelu	LeakyRelu*batch_normalization_24/batchnorm/add_1:z:0*(
_output_shapes
:??????????(2
leaky_re_lu_30/LeakyRelux
reshape_6/ShapeShape&leaky_re_lu_30/LeakyRelu:activations:0*
T0*
_output_shapes
:2
reshape_6/Shape?
reshape_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
reshape_6/strided_slice/stack?
reshape_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_6/strided_slice/stack_1?
reshape_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_6/strided_slice/stack_2?
reshape_6/strided_sliceStridedSlicereshape_6/Shape:output:0&reshape_6/strided_slice/stack:output:0(reshape_6/strided_slice/stack_1:output:0(reshape_6/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_6/strided_slicex
reshape_6/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_6/Reshape/shape/1x
reshape_6/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_6/Reshape/shape/2y
reshape_6/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :?2
reshape_6/Reshape/shape/3?
reshape_6/Reshape/shapePack reshape_6/strided_slice:output:0"reshape_6/Reshape/shape/1:output:0"reshape_6/Reshape/shape/2:output:0"reshape_6/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
reshape_6/Reshape/shape?
reshape_6/ReshapeReshape&leaky_re_lu_30/LeakyRelu:activations:0 reshape_6/Reshape/shape:output:0*
T0*0
_output_shapes
:??????????2
reshape_6/Reshape?
conv2d_transpose_18/ShapeShapereshape_6/Reshape:output:0*
T0*
_output_shapes
:2
conv2d_transpose_18/Shape?
'conv2d_transpose_18/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_18/strided_slice/stack?
)conv2d_transpose_18/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_18/strided_slice/stack_1?
)conv2d_transpose_18/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_18/strided_slice/stack_2?
!conv2d_transpose_18/strided_sliceStridedSlice"conv2d_transpose_18/Shape:output:00conv2d_transpose_18/strided_slice/stack:output:02conv2d_transpose_18/strided_slice/stack_1:output:02conv2d_transpose_18/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_18/strided_slice|
conv2d_transpose_18/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_18/stack/1|
conv2d_transpose_18/stack/2Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_18/stack/2}
conv2d_transpose_18/stack/3Const*
_output_shapes
: *
dtype0*
value
B :?2
conv2d_transpose_18/stack/3?
conv2d_transpose_18/stackPack*conv2d_transpose_18/strided_slice:output:0$conv2d_transpose_18/stack/1:output:0$conv2d_transpose_18/stack/2:output:0$conv2d_transpose_18/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_18/stack?
)conv2d_transpose_18/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_18/strided_slice_1/stack?
+conv2d_transpose_18/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_18/strided_slice_1/stack_1?
+conv2d_transpose_18/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_18/strided_slice_1/stack_2?
#conv2d_transpose_18/strided_slice_1StridedSlice"conv2d_transpose_18/stack:output:02conv2d_transpose_18/strided_slice_1/stack:output:04conv2d_transpose_18/strided_slice_1/stack_1:output:04conv2d_transpose_18/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_18/strided_slice_1?
3conv2d_transpose_18/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_18_conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype025
3conv2d_transpose_18/conv2d_transpose/ReadVariableOp?
$conv2d_transpose_18/conv2d_transposeConv2DBackpropInput"conv2d_transpose_18/stack:output:0;conv2d_transpose_18/conv2d_transpose/ReadVariableOp:value:0reshape_6/Reshape:output:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2&
$conv2d_transpose_18/conv2d_transpose?
%batch_normalization_25/ReadVariableOpReadVariableOp.batch_normalization_25_readvariableop_resource*
_output_shapes	
:?*
dtype02'
%batch_normalization_25/ReadVariableOp?
'batch_normalization_25/ReadVariableOp_1ReadVariableOp0batch_normalization_25_readvariableop_1_resource*
_output_shapes	
:?*
dtype02)
'batch_normalization_25/ReadVariableOp_1?
6batch_normalization_25/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_25_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype028
6batch_normalization_25/FusedBatchNormV3/ReadVariableOp?
8batch_normalization_25/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_25_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02:
8batch_normalization_25/FusedBatchNormV3/ReadVariableOp_1?
'batch_normalization_25/FusedBatchNormV3FusedBatchNormV3-conv2d_transpose_18/conv2d_transpose:output:0-batch_normalization_25/ReadVariableOp:value:0/batch_normalization_25/ReadVariableOp_1:value:0>batch_normalization_25/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_25/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2)
'batch_normalization_25/FusedBatchNormV3?
leaky_re_lu_31/LeakyRelu	LeakyRelu+batch_normalization_25/FusedBatchNormV3:y:0*0
_output_shapes
:??????????2
leaky_re_lu_31/LeakyRelu?
conv2d_transpose_19/ShapeShape&leaky_re_lu_31/LeakyRelu:activations:0*
T0*
_output_shapes
:2
conv2d_transpose_19/Shape?
'conv2d_transpose_19/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_19/strided_slice/stack?
)conv2d_transpose_19/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_19/strided_slice/stack_1?
)conv2d_transpose_19/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_19/strided_slice/stack_2?
!conv2d_transpose_19/strided_sliceStridedSlice"conv2d_transpose_19/Shape:output:00conv2d_transpose_19/strided_slice/stack:output:02conv2d_transpose_19/strided_slice/stack_1:output:02conv2d_transpose_19/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_19/strided_slice|
conv2d_transpose_19/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_19/stack/1|
conv2d_transpose_19/stack/2Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_19/stack/2|
conv2d_transpose_19/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2
conv2d_transpose_19/stack/3?
conv2d_transpose_19/stackPack*conv2d_transpose_19/strided_slice:output:0$conv2d_transpose_19/stack/1:output:0$conv2d_transpose_19/stack/2:output:0$conv2d_transpose_19/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_19/stack?
)conv2d_transpose_19/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_19/strided_slice_1/stack?
+conv2d_transpose_19/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_19/strided_slice_1/stack_1?
+conv2d_transpose_19/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_19/strided_slice_1/stack_2?
#conv2d_transpose_19/strided_slice_1StridedSlice"conv2d_transpose_19/stack:output:02conv2d_transpose_19/strided_slice_1/stack:output:04conv2d_transpose_19/strided_slice_1/stack_1:output:04conv2d_transpose_19/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_19/strided_slice_1?
3conv2d_transpose_19/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_19_conv2d_transpose_readvariableop_resource*'
_output_shapes
:@?*
dtype025
3conv2d_transpose_19/conv2d_transpose/ReadVariableOp?
$conv2d_transpose_19/conv2d_transposeConv2DBackpropInput"conv2d_transpose_19/stack:output:0;conv2d_transpose_19/conv2d_transpose/ReadVariableOp:value:0&leaky_re_lu_31/LeakyRelu:activations:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2&
$conv2d_transpose_19/conv2d_transpose?
%batch_normalization_26/ReadVariableOpReadVariableOp.batch_normalization_26_readvariableop_resource*
_output_shapes
:@*
dtype02'
%batch_normalization_26/ReadVariableOp?
'batch_normalization_26/ReadVariableOp_1ReadVariableOp0batch_normalization_26_readvariableop_1_resource*
_output_shapes
:@*
dtype02)
'batch_normalization_26/ReadVariableOp_1?
6batch_normalization_26/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_26_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype028
6batch_normalization_26/FusedBatchNormV3/ReadVariableOp?
8batch_normalization_26/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_26_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02:
8batch_normalization_26/FusedBatchNormV3/ReadVariableOp_1?
'batch_normalization_26/FusedBatchNormV3FusedBatchNormV3-conv2d_transpose_19/conv2d_transpose:output:0-batch_normalization_26/ReadVariableOp:value:0/batch_normalization_26/ReadVariableOp_1:value:0>batch_normalization_26/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_26/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2)
'batch_normalization_26/FusedBatchNormV3?
leaky_re_lu_32/LeakyRelu	LeakyRelu+batch_normalization_26/FusedBatchNormV3:y:0*/
_output_shapes
:?????????@2
leaky_re_lu_32/LeakyRelu?
conv2d_transpose_20/ShapeShape&leaky_re_lu_32/LeakyRelu:activations:0*
T0*
_output_shapes
:2
conv2d_transpose_20/Shape?
'conv2d_transpose_20/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_20/strided_slice/stack?
)conv2d_transpose_20/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_20/strided_slice/stack_1?
)conv2d_transpose_20/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_20/strided_slice/stack_2?
!conv2d_transpose_20/strided_sliceStridedSlice"conv2d_transpose_20/Shape:output:00conv2d_transpose_20/strided_slice/stack:output:02conv2d_transpose_20/strided_slice/stack_1:output:02conv2d_transpose_20/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_20/strided_slice|
conv2d_transpose_20/stack/1Const*
_output_shapes
: *
dtype0*
value	B :
2
conv2d_transpose_20/stack/1|
conv2d_transpose_20/stack/2Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_20/stack/2|
conv2d_transpose_20/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_20/stack/3?
conv2d_transpose_20/stackPack*conv2d_transpose_20/strided_slice:output:0$conv2d_transpose_20/stack/1:output:0$conv2d_transpose_20/stack/2:output:0$conv2d_transpose_20/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_20/stack?
)conv2d_transpose_20/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_20/strided_slice_1/stack?
+conv2d_transpose_20/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_20/strided_slice_1/stack_1?
+conv2d_transpose_20/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_20/strided_slice_1/stack_2?
#conv2d_transpose_20/strided_slice_1StridedSlice"conv2d_transpose_20/stack:output:02conv2d_transpose_20/strided_slice_1/stack:output:04conv2d_transpose_20/strided_slice_1/stack_1:output:04conv2d_transpose_20/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_20/strided_slice_1?
3conv2d_transpose_20/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_20_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@*
dtype025
3conv2d_transpose_20/conv2d_transpose/ReadVariableOp?
$conv2d_transpose_20/conv2d_transposeConv2DBackpropInput"conv2d_transpose_20/stack:output:0;conv2d_transpose_20/conv2d_transpose/ReadVariableOp:value:0&leaky_re_lu_32/LeakyRelu:activations:0*
T0*/
_output_shapes
:?????????
*
paddingSAME*
strides
2&
$conv2d_transpose_20/conv2d_transpose?
conv2d_transpose_20/TanhTanh-conv2d_transpose_20/conv2d_transpose:output:0*
T0*/
_output_shapes
:?????????
2
conv2d_transpose_20/Tanh?
IdentityIdentityconv2d_transpose_20/Tanh:y:00^batch_normalization_24/batchnorm/ReadVariableOp2^batch_normalization_24/batchnorm/ReadVariableOp_12^batch_normalization_24/batchnorm/ReadVariableOp_24^batch_normalization_24/batchnorm/mul/ReadVariableOp7^batch_normalization_25/FusedBatchNormV3/ReadVariableOp9^batch_normalization_25/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_25/ReadVariableOp(^batch_normalization_25/ReadVariableOp_17^batch_normalization_26/FusedBatchNormV3/ReadVariableOp9^batch_normalization_26/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_26/ReadVariableOp(^batch_normalization_26/ReadVariableOp_14^conv2d_transpose_18/conv2d_transpose/ReadVariableOp4^conv2d_transpose_19/conv2d_transpose/ReadVariableOp4^conv2d_transpose_20/conv2d_transpose/ReadVariableOp^dense_12/MatMul/ReadVariableOp*
T0*/
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????2: : : : : : : : : : : : : : : : 2b
/batch_normalization_24/batchnorm/ReadVariableOp/batch_normalization_24/batchnorm/ReadVariableOp2f
1batch_normalization_24/batchnorm/ReadVariableOp_11batch_normalization_24/batchnorm/ReadVariableOp_12f
1batch_normalization_24/batchnorm/ReadVariableOp_21batch_normalization_24/batchnorm/ReadVariableOp_22j
3batch_normalization_24/batchnorm/mul/ReadVariableOp3batch_normalization_24/batchnorm/mul/ReadVariableOp2p
6batch_normalization_25/FusedBatchNormV3/ReadVariableOp6batch_normalization_25/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_25/FusedBatchNormV3/ReadVariableOp_18batch_normalization_25/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_25/ReadVariableOp%batch_normalization_25/ReadVariableOp2R
'batch_normalization_25/ReadVariableOp_1'batch_normalization_25/ReadVariableOp_12p
6batch_normalization_26/FusedBatchNormV3/ReadVariableOp6batch_normalization_26/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_26/FusedBatchNormV3/ReadVariableOp_18batch_normalization_26/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_26/ReadVariableOp%batch_normalization_26/ReadVariableOp2R
'batch_normalization_26/ReadVariableOp_1'batch_normalization_26/ReadVariableOp_12j
3conv2d_transpose_18/conv2d_transpose/ReadVariableOp3conv2d_transpose_18/conv2d_transpose/ReadVariableOp2j
3conv2d_transpose_19/conv2d_transpose/ReadVariableOp3conv2d_transpose_19/conv2d_transpose/ReadVariableOp2j
3conv2d_transpose_20/conv2d_transpose/ReadVariableOp3conv2d_transpose_20/conv2d_transpose/ReadVariableOp2@
dense_12/MatMul/ReadVariableOpdense_12/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_24_layer_call_and_return_conditional_losses_1665503

inputs0
!batchnorm_readvariableop_resource:	?(4
%batchnorm_mul_readvariableop_resource:	?(2
#batchnorm_readvariableop_1_resource:	?(2
#batchnorm_readvariableop_2_resource:	?(
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?(*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?(2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?(2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?(*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?(2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????(2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:?(*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?(2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:?(*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?(2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????(2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:??????????(2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????(: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????(
 
_user_specified_nameinputs
?
g
K__inference_leaky_re_lu_31_layer_call_and_return_conditional_losses_1664746

inputs
identityo
	LeakyRelu	LeakyReluinputs*B
_output_shapes0
.:,????????????????????????????2
	LeakyRelu?
IdentityIdentityLeakyRelu:activations:0*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:,????????????????????????????:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
8__inference_batch_normalization_24_layer_call_fn_1665470

inputs
unknown:	?(
	unknown_0:	?(
	unknown_1:	?(
	unknown_2:	?(
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????(*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_24_layer_call_and_return_conditional_losses_16641392
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????(2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????(: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????(
 
_user_specified_nameinputs
?
?
5__inference_conv2d_transpose_19_layer_call_fn_1664497

inputs"
unknown:@?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_conv2d_transpose_19_layer_call_and_return_conditional_losses_16644892
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:,????????????????????????????: 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?J
?
#__inference__traced_restore_1665839
file_prefix3
 assignvariableop_dense_12_kernel:	2?(>
/assignvariableop_1_batch_normalization_24_gamma:	?(=
.assignvariableop_2_batch_normalization_24_beta:	?(D
5assignvariableop_3_batch_normalization_24_moving_mean:	?(H
9assignvariableop_4_batch_normalization_24_moving_variance:	?(I
-assignvariableop_5_conv2d_transpose_18_kernel:??>
/assignvariableop_6_batch_normalization_25_gamma:	?=
.assignvariableop_7_batch_normalization_25_beta:	?D
5assignvariableop_8_batch_normalization_25_moving_mean:	?H
9assignvariableop_9_batch_normalization_25_moving_variance:	?I
.assignvariableop_10_conv2d_transpose_19_kernel:@?>
0assignvariableop_11_batch_normalization_26_gamma:@=
/assignvariableop_12_batch_normalization_26_beta:@D
6assignvariableop_13_batch_normalization_26_moving_mean:@H
:assignvariableop_14_batch_normalization_26_moving_variance:@H
.assignvariableop_15_conv2d_transpose_20_kernel:@
identity_17??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_2?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*5
value,B*B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*X
_output_shapesF
D:::::::::::::::::*
dtypes
22
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp assignvariableop_dense_12_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp/assignvariableop_1_batch_normalization_24_gammaIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp.assignvariableop_2_batch_normalization_24_betaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp5assignvariableop_3_batch_normalization_24_moving_meanIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp9assignvariableop_4_batch_normalization_24_moving_varianceIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp-assignvariableop_5_conv2d_transpose_18_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp/assignvariableop_6_batch_normalization_25_gammaIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp.assignvariableop_7_batch_normalization_25_betaIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp5assignvariableop_8_batch_normalization_25_moving_meanIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp9assignvariableop_9_batch_normalization_25_moving_varianceIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp.assignvariableop_10_conv2d_transpose_19_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp0assignvariableop_11_batch_normalization_26_gammaIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_batch_normalization_26_betaIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp6assignvariableop_13_batch_normalization_26_moving_meanIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp:assignvariableop_14_batch_normalization_26_moving_varianceIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp.assignvariableop_15_conv2d_transpose_20_kernelIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_159
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_16Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_16?
Identity_17IdentityIdentity_16:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_17"#
identity_17Identity_17:output:0*5
_input_shapes$
": : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
g
K__inference_leaky_re_lu_32_layer_call_and_return_conditional_losses_1664765

inputs
identityn
	LeakyRelu	LeakyReluinputs*A
_output_shapes/
-:+???????????????????????????@2
	LeakyRelu?
IdentityIdentityLeakyRelu:activations:0*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+???????????????????????????@:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?>
?	
J__inference_sequential_18_layer_call_and_return_conditional_losses_1665043
dense_12_input#
dense_12_1664999:	2?(-
batch_normalization_24_1665002:	?(-
batch_normalization_24_1665004:	?(-
batch_normalization_24_1665006:	?(-
batch_normalization_24_1665008:	?(7
conv2d_transpose_18_1665013:??-
batch_normalization_25_1665016:	?-
batch_normalization_25_1665018:	?-
batch_normalization_25_1665020:	?-
batch_normalization_25_1665022:	?6
conv2d_transpose_19_1665026:@?,
batch_normalization_26_1665029:@,
batch_normalization_26_1665031:@,
batch_normalization_26_1665033:@,
batch_normalization_26_1665035:@5
conv2d_transpose_20_1665039:@
identity??.batch_normalization_24/StatefulPartitionedCall?.batch_normalization_25/StatefulPartitionedCall?.batch_normalization_26/StatefulPartitionedCall?+conv2d_transpose_18/StatefulPartitionedCall?+conv2d_transpose_19/StatefulPartitionedCall?+conv2d_transpose_20/StatefulPartitionedCall? dense_12/StatefulPartitionedCall?
 dense_12/StatefulPartitionedCallStatefulPartitionedCalldense_12_inputdense_12_1664999*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????(*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_12_layer_call_and_return_conditional_losses_16646932"
 dense_12/StatefulPartitionedCall?
.batch_normalization_24/StatefulPartitionedCallStatefulPartitionedCall)dense_12/StatefulPartitionedCall:output:0batch_normalization_24_1665002batch_normalization_24_1665004batch_normalization_24_1665006batch_normalization_24_1665008*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????(*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_24_layer_call_and_return_conditional_losses_166413920
.batch_normalization_24/StatefulPartitionedCall?
leaky_re_lu_30/PartitionedCallPartitionedCall7batch_normalization_24/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????(* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_leaky_re_lu_30_layer_call_and_return_conditional_losses_16647112 
leaky_re_lu_30/PartitionedCall?
reshape_6/PartitionedCallPartitionedCall'leaky_re_lu_30/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_reshape_6_layer_call_and_return_conditional_losses_16647272
reshape_6/PartitionedCall?
+conv2d_transpose_18/StatefulPartitionedCallStatefulPartitionedCall"reshape_6/PartitionedCall:output:0conv2d_transpose_18_1665013*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_conv2d_transpose_18_layer_call_and_return_conditional_losses_16643082-
+conv2d_transpose_18/StatefulPartitionedCall?
.batch_normalization_25/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_18/StatefulPartitionedCall:output:0batch_normalization_25_1665016batch_normalization_25_1665018batch_normalization_25_1665020batch_normalization_25_1665022*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_25_layer_call_and_return_conditional_losses_166433820
.batch_normalization_25/StatefulPartitionedCall?
leaky_re_lu_31/PartitionedCallPartitionedCall7batch_normalization_25/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_leaky_re_lu_31_layer_call_and_return_conditional_losses_16647462 
leaky_re_lu_31/PartitionedCall?
+conv2d_transpose_19/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_31/PartitionedCall:output:0conv2d_transpose_19_1665026*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_conv2d_transpose_19_layer_call_and_return_conditional_losses_16644892-
+conv2d_transpose_19/StatefulPartitionedCall?
.batch_normalization_26/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_19/StatefulPartitionedCall:output:0batch_normalization_26_1665029batch_normalization_26_1665031batch_normalization_26_1665033batch_normalization_26_1665035*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_26_layer_call_and_return_conditional_losses_166451920
.batch_normalization_26/StatefulPartitionedCall?
leaky_re_lu_32/PartitionedCallPartitionedCall7batch_normalization_26/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_leaky_re_lu_32_layer_call_and_return_conditional_losses_16647652 
leaky_re_lu_32/PartitionedCall?
+conv2d_transpose_20/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_32/PartitionedCall:output:0conv2d_transpose_20_1665039*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_conv2d_transpose_20_layer_call_and_return_conditional_losses_16646712-
+conv2d_transpose_20/StatefulPartitionedCall?
IdentityIdentity4conv2d_transpose_20/StatefulPartitionedCall:output:0/^batch_normalization_24/StatefulPartitionedCall/^batch_normalization_25/StatefulPartitionedCall/^batch_normalization_26/StatefulPartitionedCall,^conv2d_transpose_18/StatefulPartitionedCall,^conv2d_transpose_19/StatefulPartitionedCall,^conv2d_transpose_20/StatefulPartitionedCall!^dense_12/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????2: : : : : : : : : : : : : : : : 2`
.batch_normalization_24/StatefulPartitionedCall.batch_normalization_24/StatefulPartitionedCall2`
.batch_normalization_25/StatefulPartitionedCall.batch_normalization_25/StatefulPartitionedCall2`
.batch_normalization_26/StatefulPartitionedCall.batch_normalization_26/StatefulPartitionedCall2Z
+conv2d_transpose_18/StatefulPartitionedCall+conv2d_transpose_18/StatefulPartitionedCall2Z
+conv2d_transpose_19/StatefulPartitionedCall+conv2d_transpose_19/StatefulPartitionedCall2Z
+conv2d_transpose_20/StatefulPartitionedCall+conv2d_transpose_20/StatefulPartitionedCall2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall:W S
'
_output_shapes
:?????????2
(
_user_specified_namedense_12_input
?
?
8__inference_batch_normalization_25_layer_call_fn_1665592

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_25_layer_call_and_return_conditional_losses_16643822
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?,
?
P__inference_conv2d_transpose_20_layer_call_and_return_conditional_losses_1664671

inputsB
(conv2d_transpose_readvariableop_resource:@
identity??conv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2P
sub/yConst*
_output_shapes
: *
dtype0*
value	B :2
sub/y\
subSubstrided_slice_1:output:0sub/y:output:0*
T0*
_output_shapes
: 2
subP
mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
mul/yK
mulMulsub:z:0mul/y:output:0*
T0*
_output_shapes
: 2
mulP
add/yConst*
_output_shapes
: *
dtype0*
value	B :2
add/yM
addAddV2mul:z:0add/y:output:0*
T0*
_output_shapes
: 2
addT
sub_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
sub_1/yQ
sub_1Subadd:z:0sub_1/y:output:0*
T0*
_output_shapes
: 2
sub_1T
add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
add_1/yU
add_1AddV2	sub_1:z:0add_1/y:output:0*
T0*
_output_shapes
: 2
add_1T
sub_2/yConst*
_output_shapes
: *
dtype0*
value	B :2	
sub_2/yb
sub_2Substrided_slice_2:output:0sub_2/y:output:0*
T0*
_output_shapes
: 2
sub_2T
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_1/yS
mul_1Mul	sub_2:z:0mul_1/y:output:0*
T0*
_output_shapes
: 2
mul_1T
add_2/yConst*
_output_shapes
: *
dtype0*
value	B :2	
add_2/yU
add_2AddV2	mul_1:z:0add_2/y:output:0*
T0*
_output_shapes
: 2
add_2T
sub_3/yConst*
_output_shapes
: *
dtype0*
value	B :2	
sub_3/yS
sub_3Sub	add_2:z:0sub_3/y:output:0*
T0*
_output_shapes
: 2
sub_3T
add_3/yConst*
_output_shapes
: *
dtype0*
value	B : 2	
add_3/yU
add_3AddV2	sub_3:z:0add_3/y:output:0*
T0*
_output_shapes
: 2
add_3T
stack/3Const*
_output_shapes
: *
dtype0*
value	B :2	
stack/3?
stackPackstrided_slice:output:0	add_1:z:0	add_3:z:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:@*
dtype02!
conv2d_transpose/ReadVariableOp?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+???????????????????????????*
paddingSAME*
strides
2
conv2d_transpose{
TanhTanhconv2d_transpose:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2
Tanh?
IdentityIdentityTanh:y:0 ^conv2d_transpose/ReadVariableOp*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:+???????????????????????????@: 2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?*
?
S__inference_batch_normalization_24_layer_call_and_return_conditional_losses_1665537

inputs6
'assignmovingavg_readvariableop_resource:	?(8
)assignmovingavg_1_readvariableop_resource:	?(4
%batchnorm_mul_readvariableop_resource:	?(0
!batchnorm_readvariableop_resource:	?(
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?(*
	keep_dims(2
moments/mean}
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	?(2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:??????????(2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?(*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:?(*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:?(*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:?(*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:?(2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:?(2
AssignMovingAvg/mul?
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?(*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?(2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:?(2
AssignMovingAvg_1/mul?
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?(2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?(2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?(*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?(2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????(2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?(2
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?(*
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?(2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????(2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:??????????(2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????(: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????(
 
_user_specified_nameinputs
?/
?
 __inference__traced_save_1665781
file_prefix.
*savev2_dense_12_kernel_read_readvariableop;
7savev2_batch_normalization_24_gamma_read_readvariableop:
6savev2_batch_normalization_24_beta_read_readvariableopA
=savev2_batch_normalization_24_moving_mean_read_readvariableopE
Asavev2_batch_normalization_24_moving_variance_read_readvariableop9
5savev2_conv2d_transpose_18_kernel_read_readvariableop;
7savev2_batch_normalization_25_gamma_read_readvariableop:
6savev2_batch_normalization_25_beta_read_readvariableopA
=savev2_batch_normalization_25_moving_mean_read_readvariableopE
Asavev2_batch_normalization_25_moving_variance_read_readvariableop9
5savev2_conv2d_transpose_19_kernel_read_readvariableop;
7savev2_batch_normalization_26_gamma_read_readvariableop:
6savev2_batch_normalization_26_beta_read_readvariableopA
=savev2_batch_normalization_26_moving_mean_read_readvariableopE
Asavev2_batch_normalization_26_moving_variance_read_readvariableop9
5savev2_conv2d_transpose_20_kernel_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*5
value,B*B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_12_kernel_read_readvariableop7savev2_batch_normalization_24_gamma_read_readvariableop6savev2_batch_normalization_24_beta_read_readvariableop=savev2_batch_normalization_24_moving_mean_read_readvariableopAsavev2_batch_normalization_24_moving_variance_read_readvariableop5savev2_conv2d_transpose_18_kernel_read_readvariableop7savev2_batch_normalization_25_gamma_read_readvariableop6savev2_batch_normalization_25_beta_read_readvariableop=savev2_batch_normalization_25_moving_mean_read_readvariableopAsavev2_batch_normalization_25_moving_variance_read_readvariableop5savev2_conv2d_transpose_19_kernel_read_readvariableop7savev2_batch_normalization_26_gamma_read_readvariableop6savev2_batch_normalization_26_beta_read_readvariableop=savev2_batch_normalization_26_moving_mean_read_readvariableopAsavev2_batch_normalization_26_moving_variance_read_readvariableop5savev2_conv2d_transpose_20_kernel_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
22
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*?
_input_shapes?
?: :	2?(:?(:?(:?(:?(:??:?:?:?:?:@?:@:@:@:@:@: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	2?(:!

_output_shapes	
:?(:!

_output_shapes	
:?(:!

_output_shapes	
:?(:!

_output_shapes	
:?(:.*
(
_output_shapes
:??:!

_output_shapes	
:?:!

_output_shapes	
:?:!	

_output_shapes	
:?:!


_output_shapes	
:?:-)
'
_output_shapes
:@?: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@:,(
&
_output_shapes
:@:

_output_shapes
: 
?
g
K__inference_leaky_re_lu_32_layer_call_and_return_conditional_losses_1665710

inputs
identityn
	LeakyRelu	LeakyReluinputs*A
_output_shapes/
-:+???????????????????????????@2
	LeakyRelu?
IdentityIdentityLeakyRelu:activations:0*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+???????????????????????????@:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
5__inference_conv2d_transpose_18_layer_call_fn_1664316

inputs#
unknown:??
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_conv2d_transpose_18_layer_call_and_return_conditional_losses_16643082
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:,????????????????????????????: 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
g
K__inference_leaky_re_lu_30_layer_call_and_return_conditional_losses_1665547

inputs
identityU
	LeakyRelu	LeakyReluinputs*(
_output_shapes
:??????????(2
	LeakyRelul
IdentityIdentityLeakyRelu:activations:0*
T0*(
_output_shapes
:??????????(2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????(:P L
(
_output_shapes
:??????????(
 
_user_specified_nameinputs
?
G
+__inference_reshape_6_layer_call_fn_1665552

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_reshape_6_layer_call_and_return_conditional_losses_16647272
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????(:P L
(
_output_shapes
:??????????(
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_25_layer_call_and_return_conditional_losses_1664338

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_25_layer_call_and_return_conditional_losses_1664382

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
L
0__inference_leaky_re_lu_31_layer_call_fn_1665633

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_leaky_re_lu_31_layer_call_and_return_conditional_losses_16647462
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:,????????????????????????????:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?>
?	
J__inference_sequential_18_layer_call_and_return_conditional_losses_1664924

inputs#
dense_12_1664880:	2?(-
batch_normalization_24_1664883:	?(-
batch_normalization_24_1664885:	?(-
batch_normalization_24_1664887:	?(-
batch_normalization_24_1664889:	?(7
conv2d_transpose_18_1664894:??-
batch_normalization_25_1664897:	?-
batch_normalization_25_1664899:	?-
batch_normalization_25_1664901:	?-
batch_normalization_25_1664903:	?6
conv2d_transpose_19_1664907:@?,
batch_normalization_26_1664910:@,
batch_normalization_26_1664912:@,
batch_normalization_26_1664914:@,
batch_normalization_26_1664916:@5
conv2d_transpose_20_1664920:@
identity??.batch_normalization_24/StatefulPartitionedCall?.batch_normalization_25/StatefulPartitionedCall?.batch_normalization_26/StatefulPartitionedCall?+conv2d_transpose_18/StatefulPartitionedCall?+conv2d_transpose_19/StatefulPartitionedCall?+conv2d_transpose_20/StatefulPartitionedCall? dense_12/StatefulPartitionedCall?
 dense_12/StatefulPartitionedCallStatefulPartitionedCallinputsdense_12_1664880*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????(*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_12_layer_call_and_return_conditional_losses_16646932"
 dense_12/StatefulPartitionedCall?
.batch_normalization_24/StatefulPartitionedCallStatefulPartitionedCall)dense_12/StatefulPartitionedCall:output:0batch_normalization_24_1664883batch_normalization_24_1664885batch_normalization_24_1664887batch_normalization_24_1664889*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????(*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_24_layer_call_and_return_conditional_losses_166419920
.batch_normalization_24/StatefulPartitionedCall?
leaky_re_lu_30/PartitionedCallPartitionedCall7batch_normalization_24/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????(* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_leaky_re_lu_30_layer_call_and_return_conditional_losses_16647112 
leaky_re_lu_30/PartitionedCall?
reshape_6/PartitionedCallPartitionedCall'leaky_re_lu_30/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_reshape_6_layer_call_and_return_conditional_losses_16647272
reshape_6/PartitionedCall?
+conv2d_transpose_18/StatefulPartitionedCallStatefulPartitionedCall"reshape_6/PartitionedCall:output:0conv2d_transpose_18_1664894*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_conv2d_transpose_18_layer_call_and_return_conditional_losses_16643082-
+conv2d_transpose_18/StatefulPartitionedCall?
.batch_normalization_25/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_18/StatefulPartitionedCall:output:0batch_normalization_25_1664897batch_normalization_25_1664899batch_normalization_25_1664901batch_normalization_25_1664903*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_25_layer_call_and_return_conditional_losses_166438220
.batch_normalization_25/StatefulPartitionedCall?
leaky_re_lu_31/PartitionedCallPartitionedCall7batch_normalization_25/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_leaky_re_lu_31_layer_call_and_return_conditional_losses_16647462 
leaky_re_lu_31/PartitionedCall?
+conv2d_transpose_19/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_31/PartitionedCall:output:0conv2d_transpose_19_1664907*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_conv2d_transpose_19_layer_call_and_return_conditional_losses_16644892-
+conv2d_transpose_19/StatefulPartitionedCall?
.batch_normalization_26/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_19/StatefulPartitionedCall:output:0batch_normalization_26_1664910batch_normalization_26_1664912batch_normalization_26_1664914batch_normalization_26_1664916*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_26_layer_call_and_return_conditional_losses_166456320
.batch_normalization_26/StatefulPartitionedCall?
leaky_re_lu_32/PartitionedCallPartitionedCall7batch_normalization_26/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_leaky_re_lu_32_layer_call_and_return_conditional_losses_16647652 
leaky_re_lu_32/PartitionedCall?
+conv2d_transpose_20/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_32/PartitionedCall:output:0conv2d_transpose_20_1664920*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_conv2d_transpose_20_layer_call_and_return_conditional_losses_16646712-
+conv2d_transpose_20/StatefulPartitionedCall?
IdentityIdentity4conv2d_transpose_20/StatefulPartitionedCall:output:0/^batch_normalization_24/StatefulPartitionedCall/^batch_normalization_25/StatefulPartitionedCall/^batch_normalization_26/StatefulPartitionedCall,^conv2d_transpose_18/StatefulPartitionedCall,^conv2d_transpose_19/StatefulPartitionedCall,^conv2d_transpose_20/StatefulPartitionedCall!^dense_12/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????2: : : : : : : : : : : : : : : : 2`
.batch_normalization_24/StatefulPartitionedCall.batch_normalization_24/StatefulPartitionedCall2`
.batch_normalization_25/StatefulPartitionedCall.batch_normalization_25/StatefulPartitionedCall2`
.batch_normalization_26/StatefulPartitionedCall.batch_normalization_26/StatefulPartitionedCall2Z
+conv2d_transpose_18/StatefulPartitionedCall+conv2d_transpose_18/StatefulPartitionedCall2Z
+conv2d_transpose_19/StatefulPartitionedCall+conv2d_transpose_19/StatefulPartitionedCall2Z
+conv2d_transpose_20/StatefulPartitionedCall+conv2d_transpose_20/StatefulPartitionedCall2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?>
?	
J__inference_sequential_18_layer_call_and_return_conditional_losses_1664771

inputs#
dense_12_1664694:	2?(-
batch_normalization_24_1664697:	?(-
batch_normalization_24_1664699:	?(-
batch_normalization_24_1664701:	?(-
batch_normalization_24_1664703:	?(7
conv2d_transpose_18_1664729:??-
batch_normalization_25_1664732:	?-
batch_normalization_25_1664734:	?-
batch_normalization_25_1664736:	?-
batch_normalization_25_1664738:	?6
conv2d_transpose_19_1664748:@?,
batch_normalization_26_1664751:@,
batch_normalization_26_1664753:@,
batch_normalization_26_1664755:@,
batch_normalization_26_1664757:@5
conv2d_transpose_20_1664767:@
identity??.batch_normalization_24/StatefulPartitionedCall?.batch_normalization_25/StatefulPartitionedCall?.batch_normalization_26/StatefulPartitionedCall?+conv2d_transpose_18/StatefulPartitionedCall?+conv2d_transpose_19/StatefulPartitionedCall?+conv2d_transpose_20/StatefulPartitionedCall? dense_12/StatefulPartitionedCall?
 dense_12/StatefulPartitionedCallStatefulPartitionedCallinputsdense_12_1664694*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????(*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_12_layer_call_and_return_conditional_losses_16646932"
 dense_12/StatefulPartitionedCall?
.batch_normalization_24/StatefulPartitionedCallStatefulPartitionedCall)dense_12/StatefulPartitionedCall:output:0batch_normalization_24_1664697batch_normalization_24_1664699batch_normalization_24_1664701batch_normalization_24_1664703*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????(*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_24_layer_call_and_return_conditional_losses_166413920
.batch_normalization_24/StatefulPartitionedCall?
leaky_re_lu_30/PartitionedCallPartitionedCall7batch_normalization_24/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????(* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_leaky_re_lu_30_layer_call_and_return_conditional_losses_16647112 
leaky_re_lu_30/PartitionedCall?
reshape_6/PartitionedCallPartitionedCall'leaky_re_lu_30/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_reshape_6_layer_call_and_return_conditional_losses_16647272
reshape_6/PartitionedCall?
+conv2d_transpose_18/StatefulPartitionedCallStatefulPartitionedCall"reshape_6/PartitionedCall:output:0conv2d_transpose_18_1664729*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_conv2d_transpose_18_layer_call_and_return_conditional_losses_16643082-
+conv2d_transpose_18/StatefulPartitionedCall?
.batch_normalization_25/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_18/StatefulPartitionedCall:output:0batch_normalization_25_1664732batch_normalization_25_1664734batch_normalization_25_1664736batch_normalization_25_1664738*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_25_layer_call_and_return_conditional_losses_166433820
.batch_normalization_25/StatefulPartitionedCall?
leaky_re_lu_31/PartitionedCallPartitionedCall7batch_normalization_25/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_leaky_re_lu_31_layer_call_and_return_conditional_losses_16647462 
leaky_re_lu_31/PartitionedCall?
+conv2d_transpose_19/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_31/PartitionedCall:output:0conv2d_transpose_19_1664748*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_conv2d_transpose_19_layer_call_and_return_conditional_losses_16644892-
+conv2d_transpose_19/StatefulPartitionedCall?
.batch_normalization_26/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_19/StatefulPartitionedCall:output:0batch_normalization_26_1664751batch_normalization_26_1664753batch_normalization_26_1664755batch_normalization_26_1664757*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_26_layer_call_and_return_conditional_losses_166451920
.batch_normalization_26/StatefulPartitionedCall?
leaky_re_lu_32/PartitionedCallPartitionedCall7batch_normalization_26/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_leaky_re_lu_32_layer_call_and_return_conditional_losses_16647652 
leaky_re_lu_32/PartitionedCall?
+conv2d_transpose_20/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_32/PartitionedCall:output:0conv2d_transpose_20_1664767*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_conv2d_transpose_20_layer_call_and_return_conditional_losses_16646712-
+conv2d_transpose_20/StatefulPartitionedCall?
IdentityIdentity4conv2d_transpose_20/StatefulPartitionedCall:output:0/^batch_normalization_24/StatefulPartitionedCall/^batch_normalization_25/StatefulPartitionedCall/^batch_normalization_26/StatefulPartitionedCall,^conv2d_transpose_18/StatefulPartitionedCall,^conv2d_transpose_19/StatefulPartitionedCall,^conv2d_transpose_20/StatefulPartitionedCall!^dense_12/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????2: : : : : : : : : : : : : : : : 2`
.batch_normalization_24/StatefulPartitionedCall.batch_normalization_24/StatefulPartitionedCall2`
.batch_normalization_25/StatefulPartitionedCall.batch_normalization_25/StatefulPartitionedCall2`
.batch_normalization_26/StatefulPartitionedCall.batch_normalization_26/StatefulPartitionedCall2Z
+conv2d_transpose_18/StatefulPartitionedCall+conv2d_transpose_18/StatefulPartitionedCall2Z
+conv2d_transpose_19/StatefulPartitionedCall+conv2d_transpose_19/StatefulPartitionedCall2Z
+conv2d_transpose_20/StatefulPartitionedCall+conv2d_transpose_20/StatefulPartitionedCall2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
/__inference_sequential_18_layer_call_fn_1664806
dense_12_input
unknown:	2?(
	unknown_0:	?(
	unknown_1:	?(
	unknown_2:	?(
	unknown_3:	?(%
	unknown_4:??
	unknown_5:	?
	unknown_6:	?
	unknown_7:	?
	unknown_8:	?$
	unknown_9:@?

unknown_10:@

unknown_11:@

unknown_12:@

unknown_13:@$

unknown_14:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalldense_12_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_sequential_18_layer_call_and_return_conditional_losses_16647712
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????2: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
'
_output_shapes
:?????????2
(
_user_specified_namedense_12_input
?
?
S__inference_batch_normalization_26_layer_call_and_return_conditional_losses_1665700

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
??
?
"__inference__wrapped_model_1664115
dense_12_inputH
5sequential_18_dense_12_matmul_readvariableop_resource:	2?(U
Fsequential_18_batch_normalization_24_batchnorm_readvariableop_resource:	?(Y
Jsequential_18_batch_normalization_24_batchnorm_mul_readvariableop_resource:	?(W
Hsequential_18_batch_normalization_24_batchnorm_readvariableop_1_resource:	?(W
Hsequential_18_batch_normalization_24_batchnorm_readvariableop_2_resource:	?(f
Jsequential_18_conv2d_transpose_18_conv2d_transpose_readvariableop_resource:??K
<sequential_18_batch_normalization_25_readvariableop_resource:	?M
>sequential_18_batch_normalization_25_readvariableop_1_resource:	?\
Msequential_18_batch_normalization_25_fusedbatchnormv3_readvariableop_resource:	?^
Osequential_18_batch_normalization_25_fusedbatchnormv3_readvariableop_1_resource:	?e
Jsequential_18_conv2d_transpose_19_conv2d_transpose_readvariableop_resource:@?J
<sequential_18_batch_normalization_26_readvariableop_resource:@L
>sequential_18_batch_normalization_26_readvariableop_1_resource:@[
Msequential_18_batch_normalization_26_fusedbatchnormv3_readvariableop_resource:@]
Osequential_18_batch_normalization_26_fusedbatchnormv3_readvariableop_1_resource:@d
Jsequential_18_conv2d_transpose_20_conv2d_transpose_readvariableop_resource:@
identity??=sequential_18/batch_normalization_24/batchnorm/ReadVariableOp??sequential_18/batch_normalization_24/batchnorm/ReadVariableOp_1??sequential_18/batch_normalization_24/batchnorm/ReadVariableOp_2?Asequential_18/batch_normalization_24/batchnorm/mul/ReadVariableOp?Dsequential_18/batch_normalization_25/FusedBatchNormV3/ReadVariableOp?Fsequential_18/batch_normalization_25/FusedBatchNormV3/ReadVariableOp_1?3sequential_18/batch_normalization_25/ReadVariableOp?5sequential_18/batch_normalization_25/ReadVariableOp_1?Dsequential_18/batch_normalization_26/FusedBatchNormV3/ReadVariableOp?Fsequential_18/batch_normalization_26/FusedBatchNormV3/ReadVariableOp_1?3sequential_18/batch_normalization_26/ReadVariableOp?5sequential_18/batch_normalization_26/ReadVariableOp_1?Asequential_18/conv2d_transpose_18/conv2d_transpose/ReadVariableOp?Asequential_18/conv2d_transpose_19/conv2d_transpose/ReadVariableOp?Asequential_18/conv2d_transpose_20/conv2d_transpose/ReadVariableOp?,sequential_18/dense_12/MatMul/ReadVariableOp?
,sequential_18/dense_12/MatMul/ReadVariableOpReadVariableOp5sequential_18_dense_12_matmul_readvariableop_resource*
_output_shapes
:	2?(*
dtype02.
,sequential_18/dense_12/MatMul/ReadVariableOp?
sequential_18/dense_12/MatMulMatMuldense_12_input4sequential_18/dense_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????(2
sequential_18/dense_12/MatMul?
=sequential_18/batch_normalization_24/batchnorm/ReadVariableOpReadVariableOpFsequential_18_batch_normalization_24_batchnorm_readvariableop_resource*
_output_shapes	
:?(*
dtype02?
=sequential_18/batch_normalization_24/batchnorm/ReadVariableOp?
4sequential_18/batch_normalization_24/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:26
4sequential_18/batch_normalization_24/batchnorm/add/y?
2sequential_18/batch_normalization_24/batchnorm/addAddV2Esequential_18/batch_normalization_24/batchnorm/ReadVariableOp:value:0=sequential_18/batch_normalization_24/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?(24
2sequential_18/batch_normalization_24/batchnorm/add?
4sequential_18/batch_normalization_24/batchnorm/RsqrtRsqrt6sequential_18/batch_normalization_24/batchnorm/add:z:0*
T0*
_output_shapes	
:?(26
4sequential_18/batch_normalization_24/batchnorm/Rsqrt?
Asequential_18/batch_normalization_24/batchnorm/mul/ReadVariableOpReadVariableOpJsequential_18_batch_normalization_24_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?(*
dtype02C
Asequential_18/batch_normalization_24/batchnorm/mul/ReadVariableOp?
2sequential_18/batch_normalization_24/batchnorm/mulMul8sequential_18/batch_normalization_24/batchnorm/Rsqrt:y:0Isequential_18/batch_normalization_24/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?(24
2sequential_18/batch_normalization_24/batchnorm/mul?
4sequential_18/batch_normalization_24/batchnorm/mul_1Mul'sequential_18/dense_12/MatMul:product:06sequential_18/batch_normalization_24/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????(26
4sequential_18/batch_normalization_24/batchnorm/mul_1?
?sequential_18/batch_normalization_24/batchnorm/ReadVariableOp_1ReadVariableOpHsequential_18_batch_normalization_24_batchnorm_readvariableop_1_resource*
_output_shapes	
:?(*
dtype02A
?sequential_18/batch_normalization_24/batchnorm/ReadVariableOp_1?
4sequential_18/batch_normalization_24/batchnorm/mul_2MulGsequential_18/batch_normalization_24/batchnorm/ReadVariableOp_1:value:06sequential_18/batch_normalization_24/batchnorm/mul:z:0*
T0*
_output_shapes	
:?(26
4sequential_18/batch_normalization_24/batchnorm/mul_2?
?sequential_18/batch_normalization_24/batchnorm/ReadVariableOp_2ReadVariableOpHsequential_18_batch_normalization_24_batchnorm_readvariableop_2_resource*
_output_shapes	
:?(*
dtype02A
?sequential_18/batch_normalization_24/batchnorm/ReadVariableOp_2?
2sequential_18/batch_normalization_24/batchnorm/subSubGsequential_18/batch_normalization_24/batchnorm/ReadVariableOp_2:value:08sequential_18/batch_normalization_24/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?(24
2sequential_18/batch_normalization_24/batchnorm/sub?
4sequential_18/batch_normalization_24/batchnorm/add_1AddV28sequential_18/batch_normalization_24/batchnorm/mul_1:z:06sequential_18/batch_normalization_24/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????(26
4sequential_18/batch_normalization_24/batchnorm/add_1?
&sequential_18/leaky_re_lu_30/LeakyRelu	LeakyRelu8sequential_18/batch_normalization_24/batchnorm/add_1:z:0*(
_output_shapes
:??????????(2(
&sequential_18/leaky_re_lu_30/LeakyRelu?
sequential_18/reshape_6/ShapeShape4sequential_18/leaky_re_lu_30/LeakyRelu:activations:0*
T0*
_output_shapes
:2
sequential_18/reshape_6/Shape?
+sequential_18/reshape_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_18/reshape_6/strided_slice/stack?
-sequential_18/reshape_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_18/reshape_6/strided_slice/stack_1?
-sequential_18/reshape_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_18/reshape_6/strided_slice/stack_2?
%sequential_18/reshape_6/strided_sliceStridedSlice&sequential_18/reshape_6/Shape:output:04sequential_18/reshape_6/strided_slice/stack:output:06sequential_18/reshape_6/strided_slice/stack_1:output:06sequential_18/reshape_6/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2'
%sequential_18/reshape_6/strided_slice?
'sequential_18/reshape_6/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2)
'sequential_18/reshape_6/Reshape/shape/1?
'sequential_18/reshape_6/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2)
'sequential_18/reshape_6/Reshape/shape/2?
'sequential_18/reshape_6/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :?2)
'sequential_18/reshape_6/Reshape/shape/3?
%sequential_18/reshape_6/Reshape/shapePack.sequential_18/reshape_6/strided_slice:output:00sequential_18/reshape_6/Reshape/shape/1:output:00sequential_18/reshape_6/Reshape/shape/2:output:00sequential_18/reshape_6/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2'
%sequential_18/reshape_6/Reshape/shape?
sequential_18/reshape_6/ReshapeReshape4sequential_18/leaky_re_lu_30/LeakyRelu:activations:0.sequential_18/reshape_6/Reshape/shape:output:0*
T0*0
_output_shapes
:??????????2!
sequential_18/reshape_6/Reshape?
'sequential_18/conv2d_transpose_18/ShapeShape(sequential_18/reshape_6/Reshape:output:0*
T0*
_output_shapes
:2)
'sequential_18/conv2d_transpose_18/Shape?
5sequential_18/conv2d_transpose_18/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_18/conv2d_transpose_18/strided_slice/stack?
7sequential_18/conv2d_transpose_18/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_18/conv2d_transpose_18/strided_slice/stack_1?
7sequential_18/conv2d_transpose_18/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_18/conv2d_transpose_18/strided_slice/stack_2?
/sequential_18/conv2d_transpose_18/strided_sliceStridedSlice0sequential_18/conv2d_transpose_18/Shape:output:0>sequential_18/conv2d_transpose_18/strided_slice/stack:output:0@sequential_18/conv2d_transpose_18/strided_slice/stack_1:output:0@sequential_18/conv2d_transpose_18/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_18/conv2d_transpose_18/strided_slice?
)sequential_18/conv2d_transpose_18/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2+
)sequential_18/conv2d_transpose_18/stack/1?
)sequential_18/conv2d_transpose_18/stack/2Const*
_output_shapes
: *
dtype0*
value	B :2+
)sequential_18/conv2d_transpose_18/stack/2?
)sequential_18/conv2d_transpose_18/stack/3Const*
_output_shapes
: *
dtype0*
value
B :?2+
)sequential_18/conv2d_transpose_18/stack/3?
'sequential_18/conv2d_transpose_18/stackPack8sequential_18/conv2d_transpose_18/strided_slice:output:02sequential_18/conv2d_transpose_18/stack/1:output:02sequential_18/conv2d_transpose_18/stack/2:output:02sequential_18/conv2d_transpose_18/stack/3:output:0*
N*
T0*
_output_shapes
:2)
'sequential_18/conv2d_transpose_18/stack?
7sequential_18/conv2d_transpose_18/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7sequential_18/conv2d_transpose_18/strided_slice_1/stack?
9sequential_18/conv2d_transpose_18/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_18/conv2d_transpose_18/strided_slice_1/stack_1?
9sequential_18/conv2d_transpose_18/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_18/conv2d_transpose_18/strided_slice_1/stack_2?
1sequential_18/conv2d_transpose_18/strided_slice_1StridedSlice0sequential_18/conv2d_transpose_18/stack:output:0@sequential_18/conv2d_transpose_18/strided_slice_1/stack:output:0Bsequential_18/conv2d_transpose_18/strided_slice_1/stack_1:output:0Bsequential_18/conv2d_transpose_18/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1sequential_18/conv2d_transpose_18/strided_slice_1?
Asequential_18/conv2d_transpose_18/conv2d_transpose/ReadVariableOpReadVariableOpJsequential_18_conv2d_transpose_18_conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype02C
Asequential_18/conv2d_transpose_18/conv2d_transpose/ReadVariableOp?
2sequential_18/conv2d_transpose_18/conv2d_transposeConv2DBackpropInput0sequential_18/conv2d_transpose_18/stack:output:0Isequential_18/conv2d_transpose_18/conv2d_transpose/ReadVariableOp:value:0(sequential_18/reshape_6/Reshape:output:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
24
2sequential_18/conv2d_transpose_18/conv2d_transpose?
3sequential_18/batch_normalization_25/ReadVariableOpReadVariableOp<sequential_18_batch_normalization_25_readvariableop_resource*
_output_shapes	
:?*
dtype025
3sequential_18/batch_normalization_25/ReadVariableOp?
5sequential_18/batch_normalization_25/ReadVariableOp_1ReadVariableOp>sequential_18_batch_normalization_25_readvariableop_1_resource*
_output_shapes	
:?*
dtype027
5sequential_18/batch_normalization_25/ReadVariableOp_1?
Dsequential_18/batch_normalization_25/FusedBatchNormV3/ReadVariableOpReadVariableOpMsequential_18_batch_normalization_25_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02F
Dsequential_18/batch_normalization_25/FusedBatchNormV3/ReadVariableOp?
Fsequential_18/batch_normalization_25/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpOsequential_18_batch_normalization_25_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02H
Fsequential_18/batch_normalization_25/FusedBatchNormV3/ReadVariableOp_1?
5sequential_18/batch_normalization_25/FusedBatchNormV3FusedBatchNormV3;sequential_18/conv2d_transpose_18/conv2d_transpose:output:0;sequential_18/batch_normalization_25/ReadVariableOp:value:0=sequential_18/batch_normalization_25/ReadVariableOp_1:value:0Lsequential_18/batch_normalization_25/FusedBatchNormV3/ReadVariableOp:value:0Nsequential_18/batch_normalization_25/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 27
5sequential_18/batch_normalization_25/FusedBatchNormV3?
&sequential_18/leaky_re_lu_31/LeakyRelu	LeakyRelu9sequential_18/batch_normalization_25/FusedBatchNormV3:y:0*0
_output_shapes
:??????????2(
&sequential_18/leaky_re_lu_31/LeakyRelu?
'sequential_18/conv2d_transpose_19/ShapeShape4sequential_18/leaky_re_lu_31/LeakyRelu:activations:0*
T0*
_output_shapes
:2)
'sequential_18/conv2d_transpose_19/Shape?
5sequential_18/conv2d_transpose_19/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_18/conv2d_transpose_19/strided_slice/stack?
7sequential_18/conv2d_transpose_19/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_18/conv2d_transpose_19/strided_slice/stack_1?
7sequential_18/conv2d_transpose_19/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_18/conv2d_transpose_19/strided_slice/stack_2?
/sequential_18/conv2d_transpose_19/strided_sliceStridedSlice0sequential_18/conv2d_transpose_19/Shape:output:0>sequential_18/conv2d_transpose_19/strided_slice/stack:output:0@sequential_18/conv2d_transpose_19/strided_slice/stack_1:output:0@sequential_18/conv2d_transpose_19/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_18/conv2d_transpose_19/strided_slice?
)sequential_18/conv2d_transpose_19/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2+
)sequential_18/conv2d_transpose_19/stack/1?
)sequential_18/conv2d_transpose_19/stack/2Const*
_output_shapes
: *
dtype0*
value	B :2+
)sequential_18/conv2d_transpose_19/stack/2?
)sequential_18/conv2d_transpose_19/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2+
)sequential_18/conv2d_transpose_19/stack/3?
'sequential_18/conv2d_transpose_19/stackPack8sequential_18/conv2d_transpose_19/strided_slice:output:02sequential_18/conv2d_transpose_19/stack/1:output:02sequential_18/conv2d_transpose_19/stack/2:output:02sequential_18/conv2d_transpose_19/stack/3:output:0*
N*
T0*
_output_shapes
:2)
'sequential_18/conv2d_transpose_19/stack?
7sequential_18/conv2d_transpose_19/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7sequential_18/conv2d_transpose_19/strided_slice_1/stack?
9sequential_18/conv2d_transpose_19/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_18/conv2d_transpose_19/strided_slice_1/stack_1?
9sequential_18/conv2d_transpose_19/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_18/conv2d_transpose_19/strided_slice_1/stack_2?
1sequential_18/conv2d_transpose_19/strided_slice_1StridedSlice0sequential_18/conv2d_transpose_19/stack:output:0@sequential_18/conv2d_transpose_19/strided_slice_1/stack:output:0Bsequential_18/conv2d_transpose_19/strided_slice_1/stack_1:output:0Bsequential_18/conv2d_transpose_19/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1sequential_18/conv2d_transpose_19/strided_slice_1?
Asequential_18/conv2d_transpose_19/conv2d_transpose/ReadVariableOpReadVariableOpJsequential_18_conv2d_transpose_19_conv2d_transpose_readvariableop_resource*'
_output_shapes
:@?*
dtype02C
Asequential_18/conv2d_transpose_19/conv2d_transpose/ReadVariableOp?
2sequential_18/conv2d_transpose_19/conv2d_transposeConv2DBackpropInput0sequential_18/conv2d_transpose_19/stack:output:0Isequential_18/conv2d_transpose_19/conv2d_transpose/ReadVariableOp:value:04sequential_18/leaky_re_lu_31/LeakyRelu:activations:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
24
2sequential_18/conv2d_transpose_19/conv2d_transpose?
3sequential_18/batch_normalization_26/ReadVariableOpReadVariableOp<sequential_18_batch_normalization_26_readvariableop_resource*
_output_shapes
:@*
dtype025
3sequential_18/batch_normalization_26/ReadVariableOp?
5sequential_18/batch_normalization_26/ReadVariableOp_1ReadVariableOp>sequential_18_batch_normalization_26_readvariableop_1_resource*
_output_shapes
:@*
dtype027
5sequential_18/batch_normalization_26/ReadVariableOp_1?
Dsequential_18/batch_normalization_26/FusedBatchNormV3/ReadVariableOpReadVariableOpMsequential_18_batch_normalization_26_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02F
Dsequential_18/batch_normalization_26/FusedBatchNormV3/ReadVariableOp?
Fsequential_18/batch_normalization_26/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpOsequential_18_batch_normalization_26_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02H
Fsequential_18/batch_normalization_26/FusedBatchNormV3/ReadVariableOp_1?
5sequential_18/batch_normalization_26/FusedBatchNormV3FusedBatchNormV3;sequential_18/conv2d_transpose_19/conv2d_transpose:output:0;sequential_18/batch_normalization_26/ReadVariableOp:value:0=sequential_18/batch_normalization_26/ReadVariableOp_1:value:0Lsequential_18/batch_normalization_26/FusedBatchNormV3/ReadVariableOp:value:0Nsequential_18/batch_normalization_26/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
is_training( 27
5sequential_18/batch_normalization_26/FusedBatchNormV3?
&sequential_18/leaky_re_lu_32/LeakyRelu	LeakyRelu9sequential_18/batch_normalization_26/FusedBatchNormV3:y:0*/
_output_shapes
:?????????@2(
&sequential_18/leaky_re_lu_32/LeakyRelu?
'sequential_18/conv2d_transpose_20/ShapeShape4sequential_18/leaky_re_lu_32/LeakyRelu:activations:0*
T0*
_output_shapes
:2)
'sequential_18/conv2d_transpose_20/Shape?
5sequential_18/conv2d_transpose_20/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_18/conv2d_transpose_20/strided_slice/stack?
7sequential_18/conv2d_transpose_20/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_18/conv2d_transpose_20/strided_slice/stack_1?
7sequential_18/conv2d_transpose_20/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_18/conv2d_transpose_20/strided_slice/stack_2?
/sequential_18/conv2d_transpose_20/strided_sliceStridedSlice0sequential_18/conv2d_transpose_20/Shape:output:0>sequential_18/conv2d_transpose_20/strided_slice/stack:output:0@sequential_18/conv2d_transpose_20/strided_slice/stack_1:output:0@sequential_18/conv2d_transpose_20/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_18/conv2d_transpose_20/strided_slice?
)sequential_18/conv2d_transpose_20/stack/1Const*
_output_shapes
: *
dtype0*
value	B :
2+
)sequential_18/conv2d_transpose_20/stack/1?
)sequential_18/conv2d_transpose_20/stack/2Const*
_output_shapes
: *
dtype0*
value	B :2+
)sequential_18/conv2d_transpose_20/stack/2?
)sequential_18/conv2d_transpose_20/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2+
)sequential_18/conv2d_transpose_20/stack/3?
'sequential_18/conv2d_transpose_20/stackPack8sequential_18/conv2d_transpose_20/strided_slice:output:02sequential_18/conv2d_transpose_20/stack/1:output:02sequential_18/conv2d_transpose_20/stack/2:output:02sequential_18/conv2d_transpose_20/stack/3:output:0*
N*
T0*
_output_shapes
:2)
'sequential_18/conv2d_transpose_20/stack?
7sequential_18/conv2d_transpose_20/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7sequential_18/conv2d_transpose_20/strided_slice_1/stack?
9sequential_18/conv2d_transpose_20/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_18/conv2d_transpose_20/strided_slice_1/stack_1?
9sequential_18/conv2d_transpose_20/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_18/conv2d_transpose_20/strided_slice_1/stack_2?
1sequential_18/conv2d_transpose_20/strided_slice_1StridedSlice0sequential_18/conv2d_transpose_20/stack:output:0@sequential_18/conv2d_transpose_20/strided_slice_1/stack:output:0Bsequential_18/conv2d_transpose_20/strided_slice_1/stack_1:output:0Bsequential_18/conv2d_transpose_20/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1sequential_18/conv2d_transpose_20/strided_slice_1?
Asequential_18/conv2d_transpose_20/conv2d_transpose/ReadVariableOpReadVariableOpJsequential_18_conv2d_transpose_20_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@*
dtype02C
Asequential_18/conv2d_transpose_20/conv2d_transpose/ReadVariableOp?
2sequential_18/conv2d_transpose_20/conv2d_transposeConv2DBackpropInput0sequential_18/conv2d_transpose_20/stack:output:0Isequential_18/conv2d_transpose_20/conv2d_transpose/ReadVariableOp:value:04sequential_18/leaky_re_lu_32/LeakyRelu:activations:0*
T0*/
_output_shapes
:?????????
*
paddingSAME*
strides
24
2sequential_18/conv2d_transpose_20/conv2d_transpose?
&sequential_18/conv2d_transpose_20/TanhTanh;sequential_18/conv2d_transpose_20/conv2d_transpose:output:0*
T0*/
_output_shapes
:?????????
2(
&sequential_18/conv2d_transpose_20/Tanh?	
IdentityIdentity*sequential_18/conv2d_transpose_20/Tanh:y:0>^sequential_18/batch_normalization_24/batchnorm/ReadVariableOp@^sequential_18/batch_normalization_24/batchnorm/ReadVariableOp_1@^sequential_18/batch_normalization_24/batchnorm/ReadVariableOp_2B^sequential_18/batch_normalization_24/batchnorm/mul/ReadVariableOpE^sequential_18/batch_normalization_25/FusedBatchNormV3/ReadVariableOpG^sequential_18/batch_normalization_25/FusedBatchNormV3/ReadVariableOp_14^sequential_18/batch_normalization_25/ReadVariableOp6^sequential_18/batch_normalization_25/ReadVariableOp_1E^sequential_18/batch_normalization_26/FusedBatchNormV3/ReadVariableOpG^sequential_18/batch_normalization_26/FusedBatchNormV3/ReadVariableOp_14^sequential_18/batch_normalization_26/ReadVariableOp6^sequential_18/batch_normalization_26/ReadVariableOp_1B^sequential_18/conv2d_transpose_18/conv2d_transpose/ReadVariableOpB^sequential_18/conv2d_transpose_19/conv2d_transpose/ReadVariableOpB^sequential_18/conv2d_transpose_20/conv2d_transpose/ReadVariableOp-^sequential_18/dense_12/MatMul/ReadVariableOp*
T0*/
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????2: : : : : : : : : : : : : : : : 2~
=sequential_18/batch_normalization_24/batchnorm/ReadVariableOp=sequential_18/batch_normalization_24/batchnorm/ReadVariableOp2?
?sequential_18/batch_normalization_24/batchnorm/ReadVariableOp_1?sequential_18/batch_normalization_24/batchnorm/ReadVariableOp_12?
?sequential_18/batch_normalization_24/batchnorm/ReadVariableOp_2?sequential_18/batch_normalization_24/batchnorm/ReadVariableOp_22?
Asequential_18/batch_normalization_24/batchnorm/mul/ReadVariableOpAsequential_18/batch_normalization_24/batchnorm/mul/ReadVariableOp2?
Dsequential_18/batch_normalization_25/FusedBatchNormV3/ReadVariableOpDsequential_18/batch_normalization_25/FusedBatchNormV3/ReadVariableOp2?
Fsequential_18/batch_normalization_25/FusedBatchNormV3/ReadVariableOp_1Fsequential_18/batch_normalization_25/FusedBatchNormV3/ReadVariableOp_12j
3sequential_18/batch_normalization_25/ReadVariableOp3sequential_18/batch_normalization_25/ReadVariableOp2n
5sequential_18/batch_normalization_25/ReadVariableOp_15sequential_18/batch_normalization_25/ReadVariableOp_12?
Dsequential_18/batch_normalization_26/FusedBatchNormV3/ReadVariableOpDsequential_18/batch_normalization_26/FusedBatchNormV3/ReadVariableOp2?
Fsequential_18/batch_normalization_26/FusedBatchNormV3/ReadVariableOp_1Fsequential_18/batch_normalization_26/FusedBatchNormV3/ReadVariableOp_12j
3sequential_18/batch_normalization_26/ReadVariableOp3sequential_18/batch_normalization_26/ReadVariableOp2n
5sequential_18/batch_normalization_26/ReadVariableOp_15sequential_18/batch_normalization_26/ReadVariableOp_12?
Asequential_18/conv2d_transpose_18/conv2d_transpose/ReadVariableOpAsequential_18/conv2d_transpose_18/conv2d_transpose/ReadVariableOp2?
Asequential_18/conv2d_transpose_19/conv2d_transpose/ReadVariableOpAsequential_18/conv2d_transpose_19/conv2d_transpose/ReadVariableOp2?
Asequential_18/conv2d_transpose_20/conv2d_transpose/ReadVariableOpAsequential_18/conv2d_transpose_20/conv2d_transpose/ReadVariableOp2\
,sequential_18/dense_12/MatMul/ReadVariableOp,sequential_18/dense_12/MatMul/ReadVariableOp:W S
'
_output_shapes
:?????????2
(
_user_specified_namedense_12_input
?
L
0__inference_leaky_re_lu_30_layer_call_fn_1665542

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????(* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_leaky_re_lu_30_layer_call_and_return_conditional_losses_16647112
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????(2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????(:P L
(
_output_shapes
:??????????(
 
_user_specified_nameinputs
? 
?
P__inference_conv2d_transpose_18_layer_call_and_return_conditional_losses_1664308

inputsD
(conv2d_transpose_readvariableop_resource:??
identity??conv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2P
mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
mul/y\
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: 2
mulT
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_1/yb
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: 2
mul_1U
stack/3Const*
_output_shapes
: *
dtype0*
value
B :?2	
stack/3?
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype02!
conv2d_transpose/ReadVariableOp?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*B
_output_shapes0
.:,????????????????????????????*
paddingSAME*
strides
2
conv2d_transpose?
IdentityIdentityconv2d_transpose:output:0 ^conv2d_transpose/ReadVariableOp*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:,????????????????????????????: 2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
b
F__inference_reshape_6_layer_call_and_return_conditional_losses_1664727

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliced
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/1d
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/2e
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :?2
Reshape/shape/3?
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
Reshape/shapex
ReshapeReshapeinputsReshape/shape:output:0*
T0*0
_output_shapes
:??????????2	
Reshapem
IdentityIdentityReshape:output:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????(:P L
(
_output_shapes
:??????????(
 
_user_specified_nameinputs
?
L
0__inference_leaky_re_lu_32_layer_call_fn_1665705

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_leaky_re_lu_32_layer_call_and_return_conditional_losses_16647652
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+???????????????????????????@:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
g
K__inference_leaky_re_lu_30_layer_call_and_return_conditional_losses_1664711

inputs
identityU
	LeakyRelu	LeakyReluinputs*(
_output_shapes
:??????????(2
	LeakyRelul
IdentityIdentityLeakyRelu:activations:0*
T0*(
_output_shapes
:??????????(2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????(:P L
(
_output_shapes
:??????????(
 
_user_specified_nameinputs
?*
?
S__inference_batch_normalization_24_layer_call_and_return_conditional_losses_1664199

inputs6
'assignmovingavg_readvariableop_resource:	?(8
)assignmovingavg_1_readvariableop_resource:	?(4
%batchnorm_mul_readvariableop_resource:	?(0
!batchnorm_readvariableop_resource:	?(
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?(*
	keep_dims(2
moments/mean}
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	?(2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:??????????(2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?(*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:?(*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:?(*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:?(*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:?(2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:?(2
AssignMovingAvg/mul?
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?(*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?(2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:?(2
AssignMovingAvg_1/mul?
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?(2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?(2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?(*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?(2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????(2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?(2
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?(*
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?(2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????(2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:??????????(2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????(: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????(
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_25_layer_call_and_return_conditional_losses_1665628

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
/__inference_sequential_18_layer_call_fn_1664996
dense_12_input
unknown:	2?(
	unknown_0:	?(
	unknown_1:	?(
	unknown_2:	?(
	unknown_3:	?(%
	unknown_4:??
	unknown_5:	?
	unknown_6:	?
	unknown_7:	?
	unknown_8:	?$
	unknown_9:@?

unknown_10:@

unknown_11:@

unknown_12:@

unknown_13:@$

unknown_14:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalldense_12_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*,
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_sequential_18_layer_call_and_return_conditional_losses_16649242
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????2: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
'
_output_shapes
:?????????2
(
_user_specified_namedense_12_input
?
?
8__inference_batch_normalization_26_layer_call_fn_1665651

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_26_layer_call_and_return_conditional_losses_16645192
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
g
K__inference_leaky_re_lu_31_layer_call_and_return_conditional_losses_1665638

inputs
identityo
	LeakyRelu	LeakyReluinputs*B
_output_shapes0
.:,????????????????????????????2
	LeakyRelu?
IdentityIdentityLeakyRelu:activations:0*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:,????????????????????????????:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_26_layer_call_and_return_conditional_losses_1665682

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?>
?	
J__inference_sequential_18_layer_call_and_return_conditional_losses_1665090
dense_12_input#
dense_12_1665046:	2?(-
batch_normalization_24_1665049:	?(-
batch_normalization_24_1665051:	?(-
batch_normalization_24_1665053:	?(-
batch_normalization_24_1665055:	?(7
conv2d_transpose_18_1665060:??-
batch_normalization_25_1665063:	?-
batch_normalization_25_1665065:	?-
batch_normalization_25_1665067:	?-
batch_normalization_25_1665069:	?6
conv2d_transpose_19_1665073:@?,
batch_normalization_26_1665076:@,
batch_normalization_26_1665078:@,
batch_normalization_26_1665080:@,
batch_normalization_26_1665082:@5
conv2d_transpose_20_1665086:@
identity??.batch_normalization_24/StatefulPartitionedCall?.batch_normalization_25/StatefulPartitionedCall?.batch_normalization_26/StatefulPartitionedCall?+conv2d_transpose_18/StatefulPartitionedCall?+conv2d_transpose_19/StatefulPartitionedCall?+conv2d_transpose_20/StatefulPartitionedCall? dense_12/StatefulPartitionedCall?
 dense_12/StatefulPartitionedCallStatefulPartitionedCalldense_12_inputdense_12_1665046*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????(*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_12_layer_call_and_return_conditional_losses_16646932"
 dense_12/StatefulPartitionedCall?
.batch_normalization_24/StatefulPartitionedCallStatefulPartitionedCall)dense_12/StatefulPartitionedCall:output:0batch_normalization_24_1665049batch_normalization_24_1665051batch_normalization_24_1665053batch_normalization_24_1665055*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????(*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_24_layer_call_and_return_conditional_losses_166419920
.batch_normalization_24/StatefulPartitionedCall?
leaky_re_lu_30/PartitionedCallPartitionedCall7batch_normalization_24/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????(* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_leaky_re_lu_30_layer_call_and_return_conditional_losses_16647112 
leaky_re_lu_30/PartitionedCall?
reshape_6/PartitionedCallPartitionedCall'leaky_re_lu_30/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_reshape_6_layer_call_and_return_conditional_losses_16647272
reshape_6/PartitionedCall?
+conv2d_transpose_18/StatefulPartitionedCallStatefulPartitionedCall"reshape_6/PartitionedCall:output:0conv2d_transpose_18_1665060*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_conv2d_transpose_18_layer_call_and_return_conditional_losses_16643082-
+conv2d_transpose_18/StatefulPartitionedCall?
.batch_normalization_25/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_18/StatefulPartitionedCall:output:0batch_normalization_25_1665063batch_normalization_25_1665065batch_normalization_25_1665067batch_normalization_25_1665069*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_25_layer_call_and_return_conditional_losses_166438220
.batch_normalization_25/StatefulPartitionedCall?
leaky_re_lu_31/PartitionedCallPartitionedCall7batch_normalization_25/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_leaky_re_lu_31_layer_call_and_return_conditional_losses_16647462 
leaky_re_lu_31/PartitionedCall?
+conv2d_transpose_19/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_31/PartitionedCall:output:0conv2d_transpose_19_1665073*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_conv2d_transpose_19_layer_call_and_return_conditional_losses_16644892-
+conv2d_transpose_19/StatefulPartitionedCall?
.batch_normalization_26/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_19/StatefulPartitionedCall:output:0batch_normalization_26_1665076batch_normalization_26_1665078batch_normalization_26_1665080batch_normalization_26_1665082*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_26_layer_call_and_return_conditional_losses_166456320
.batch_normalization_26/StatefulPartitionedCall?
leaky_re_lu_32/PartitionedCallPartitionedCall7batch_normalization_26/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_leaky_re_lu_32_layer_call_and_return_conditional_losses_16647652 
leaky_re_lu_32/PartitionedCall?
+conv2d_transpose_20/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_32/PartitionedCall:output:0conv2d_transpose_20_1665086*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_conv2d_transpose_20_layer_call_and_return_conditional_losses_16646712-
+conv2d_transpose_20/StatefulPartitionedCall?
IdentityIdentity4conv2d_transpose_20/StatefulPartitionedCall:output:0/^batch_normalization_24/StatefulPartitionedCall/^batch_normalization_25/StatefulPartitionedCall/^batch_normalization_26/StatefulPartitionedCall,^conv2d_transpose_18/StatefulPartitionedCall,^conv2d_transpose_19/StatefulPartitionedCall,^conv2d_transpose_20/StatefulPartitionedCall!^dense_12/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????2: : : : : : : : : : : : : : : : 2`
.batch_normalization_24/StatefulPartitionedCall.batch_normalization_24/StatefulPartitionedCall2`
.batch_normalization_25/StatefulPartitionedCall.batch_normalization_25/StatefulPartitionedCall2`
.batch_normalization_26/StatefulPartitionedCall.batch_normalization_26/StatefulPartitionedCall2Z
+conv2d_transpose_18/StatefulPartitionedCall+conv2d_transpose_18/StatefulPartitionedCall2Z
+conv2d_transpose_19/StatefulPartitionedCall+conv2d_transpose_19/StatefulPartitionedCall2Z
+conv2d_transpose_20/StatefulPartitionedCall+conv2d_transpose_20/StatefulPartitionedCall2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall:W S
'
_output_shapes
:?????????2
(
_user_specified_namedense_12_input
?
?
8__inference_batch_normalization_24_layer_call_fn_1665483

inputs
unknown:	?(
	unknown_0:	?(
	unknown_1:	?(
	unknown_2:	?(
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????(*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_24_layer_call_and_return_conditional_losses_16641992
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????(2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????(: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????(
 
_user_specified_nameinputs
?
?
/__inference_sequential_18_layer_call_fn_1665203

inputs
unknown:	2?(
	unknown_0:	?(
	unknown_1:	?(
	unknown_2:	?(
	unknown_3:	?(%
	unknown_4:??
	unknown_5:	?
	unknown_6:	?
	unknown_7:	?
	unknown_8:	?$
	unknown_9:@?

unknown_10:@

unknown_11:@

unknown_12:@

unknown_13:@$

unknown_14:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*,
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_sequential_18_layer_call_and_return_conditional_losses_16649242
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????2: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
I
dense_12_input7
 serving_default_dense_12_input:0?????????2O
conv2d_transpose_208
StatefulPartitionedCall:0?????????
tensorflow/serving/predict:??
?a
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer-6
layer_with_weights-4
layer-7
	layer_with_weights-5
	layer-8

layer-9
layer_with_weights-6
layer-10
trainable_variables
	variables
regularization_losses
	keras_api

signatures
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses"?]
_tf_keras_sequential?]{"name": "sequential_18", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_18", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 50]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "dense_12_input"}}, {"class_name": "Dense", "config": {"name": "dense_12", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 50]}, "dtype": "float32", "units": 5120, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_24", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_30", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}}, {"class_name": "Reshape", "config": {"name": "reshape_6", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [5, 4, 256]}}}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_18", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_25", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_31", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_19", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": {"class_name": "__tuple__", "items": [0, 0]}}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_26", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_32", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_20", "trainable": true, "dtype": "float32", "filters": 1, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "tanh", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": {"class_name": "__tuple__", "items": [1, 0]}}}]}, "shared_object_id": 32, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 50}}, "shared_object_id": 33}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 50]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 50]}, "float32", "dense_12_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_18", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 50]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "dense_12_input"}, "shared_object_id": 0}, {"class_name": "Dense", "config": {"name": "dense_12", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 50]}, "dtype": "float32", "units": 5120, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_24", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 4}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 5}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 6}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 7}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 8}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_30", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}, "shared_object_id": 9}, {"class_name": "Reshape", "config": {"name": "reshape_6", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [5, 4, 256]}}, "shared_object_id": 10}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_18", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 11}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 12}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "shared_object_id": 13}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_25", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 14}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 15}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 16}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 17}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 18}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_31", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}, "shared_object_id": 19}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_19", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 20}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 21}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": {"class_name": "__tuple__", "items": [0, 0]}}, "shared_object_id": 22}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_26", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 23}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 24}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 25}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 26}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 27}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_32", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}, "shared_object_id": 28}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_20", "trainable": true, "dtype": "float32", "filters": 1, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "tanh", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 29}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 30}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": {"class_name": "__tuple__", "items": [1, 0]}}, "shared_object_id": 31}]}}}
?	

kernel
trainable_variables
	variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dense_12", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 50]}, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_12", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 50]}, "dtype": "float32", "units": 5120, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 50}}, "shared_object_id": 33}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 50]}}
?

axis
	gamma
beta
moving_mean
moving_variance
trainable_variables
	variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "batch_normalization_24", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_24", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 4}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 5}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 6}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 7}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 8, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {"1": 5120}}, "shared_object_id": 34}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 5120]}}
?
trainable_variables
 	variables
!regularization_losses
"	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "leaky_re_lu_30", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_30", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}, "shared_object_id": 9}
?
#trainable_variables
$	variables
%regularization_losses
&	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "reshape_6", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Reshape", "config": {"name": "reshape_6", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [5, 4, 256]}}, "shared_object_id": 10}
?

'kernel
(trainable_variables
)	variables
*regularization_losses
+	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "conv2d_transpose_18", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_18", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 11}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 12}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "shared_object_id": 13, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 256}}, "shared_object_id": 35}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 5, 4, 256]}}
?

,axis
	-gamma
.beta
/moving_mean
0moving_variance
1trainable_variables
2	variables
3regularization_losses
4	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "batch_normalization_25", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_25", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 14}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 15}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 16}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 17}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 18, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 128}}, "shared_object_id": 36}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 5, 4, 128]}}
?
5trainable_variables
6	variables
7regularization_losses
8	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "leaky_re_lu_31", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_31", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}, "shared_object_id": 19}
?
9output_padding

:kernel
;trainable_variables
<	variables
=regularization_losses
>	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?

_tf_keras_layer?	{"name": "conv2d_transpose_19", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_19", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 20}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 21}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": {"class_name": "__tuple__", "items": [0, 0]}}, "shared_object_id": 22, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 128}}, "shared_object_id": 37}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 5, 4, 128]}}
?

?axis
	@gamma
Abeta
Bmoving_mean
Cmoving_variance
Dtrainable_variables
E	variables
Fregularization_losses
G	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "batch_normalization_26", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_26", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 23}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 24}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 25}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 26}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 27, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 64}}, "shared_object_id": 38}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 5, 4, 64]}}
?
Htrainable_variables
I	variables
Jregularization_losses
K	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "leaky_re_lu_32", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_32", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}, "shared_object_id": 28}
?
Loutput_padding

Mkernel
Ntrainable_variables
O	variables
Pregularization_losses
Q	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?

_tf_keras_layer?	{"name": "conv2d_transpose_20", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_20", "trainable": true, "dtype": "float32", "filters": 1, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "tanh", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 29}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 30}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": {"class_name": "__tuple__", "items": [1, 0]}}, "shared_object_id": 31, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 64}}, "shared_object_id": 39}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 5, 4, 64]}}
f
0
1
2
'3
-4
.5
:6
@7
A8
M9"
trackable_list_wrapper
?
0
1
2
3
4
'5
-6
.7
/8
09
:10
@11
A12
B13
C14
M15"
trackable_list_wrapper
 "
trackable_list_wrapper
?
trainable_variables
Rlayer_regularization_losses
Smetrics
	variables

Tlayers
Unon_trainable_variables
regularization_losses
Vlayer_metrics
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
": 	2?(2dense_12/kernel
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
trainable_variables
Wlayer_regularization_losses
Xmetrics
	variables

Ylayers
Znon_trainable_variables
regularization_losses
[layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
+:)?(2batch_normalization_24/gamma
*:(?(2batch_normalization_24/beta
3:1?( (2"batch_normalization_24/moving_mean
7:5?( (2&batch_normalization_24/moving_variance
.
0
1"
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
 "
trackable_list_wrapper
?
trainable_variables
\layer_regularization_losses
]metrics
	variables

^layers
_non_trainable_variables
regularization_losses
`layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
trainable_variables
alayer_regularization_losses
bmetrics
 	variables

clayers
dnon_trainable_variables
!regularization_losses
elayer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
#trainable_variables
flayer_regularization_losses
gmetrics
$	variables

hlayers
inon_trainable_variables
%regularization_losses
jlayer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
6:4??2conv2d_transpose_18/kernel
'
'0"
trackable_list_wrapper
'
'0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
(trainable_variables
klayer_regularization_losses
lmetrics
)	variables

mlayers
nnon_trainable_variables
*regularization_losses
olayer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
+:)?2batch_normalization_25/gamma
*:(?2batch_normalization_25/beta
3:1? (2"batch_normalization_25/moving_mean
7:5? (2&batch_normalization_25/moving_variance
.
-0
.1"
trackable_list_wrapper
<
-0
.1
/2
03"
trackable_list_wrapper
 "
trackable_list_wrapper
?
1trainable_variables
player_regularization_losses
qmetrics
2	variables

rlayers
snon_trainable_variables
3regularization_losses
tlayer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
5trainable_variables
ulayer_regularization_losses
vmetrics
6	variables

wlayers
xnon_trainable_variables
7regularization_losses
ylayer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
5:3@?2conv2d_transpose_19/kernel
'
:0"
trackable_list_wrapper
'
:0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
;trainable_variables
zlayer_regularization_losses
{metrics
<	variables

|layers
}non_trainable_variables
=regularization_losses
~layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
*:(@2batch_normalization_26/gamma
):'@2batch_normalization_26/beta
2:0@ (2"batch_normalization_26/moving_mean
6:4@ (2&batch_normalization_26/moving_variance
.
@0
A1"
trackable_list_wrapper
<
@0
A1
B2
C3"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Dtrainable_variables
layer_regularization_losses
?metrics
E	variables
?layers
?non_trainable_variables
Fregularization_losses
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Htrainable_variables
 ?layer_regularization_losses
?metrics
I	variables
?layers
?non_trainable_variables
Jregularization_losses
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
4:2@2conv2d_transpose_20/kernel
'
M0"
trackable_list_wrapper
'
M0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Ntrainable_variables
 ?layer_regularization_losses
?metrics
O	variables
?layers
?non_trainable_variables
Pregularization_losses
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
n
0
1
2
3
4
5
6
7
	8

9
10"
trackable_list_wrapper
J
0
1
/2
03
B4
C5"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
/0
01"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
B0
C1"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?2?
/__inference_sequential_18_layer_call_fn_1664806
/__inference_sequential_18_layer_call_fn_1665166
/__inference_sequential_18_layer_call_fn_1665203
/__inference_sequential_18_layer_call_fn_1664996?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
"__inference__wrapped_model_1664115?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *-?*
(?%
dense_12_input?????????2
?2?
J__inference_sequential_18_layer_call_and_return_conditional_losses_1665316
J__inference_sequential_18_layer_call_and_return_conditional_losses_1665443
J__inference_sequential_18_layer_call_and_return_conditional_losses_1665043
J__inference_sequential_18_layer_call_and_return_conditional_losses_1665090?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
*__inference_dense_12_layer_call_fn_1665450?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_dense_12_layer_call_and_return_conditional_losses_1665457?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
8__inference_batch_normalization_24_layer_call_fn_1665470
8__inference_batch_normalization_24_layer_call_fn_1665483?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
S__inference_batch_normalization_24_layer_call_and_return_conditional_losses_1665503
S__inference_batch_normalization_24_layer_call_and_return_conditional_losses_1665537?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
0__inference_leaky_re_lu_30_layer_call_fn_1665542?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
K__inference_leaky_re_lu_30_layer_call_and_return_conditional_losses_1665547?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
+__inference_reshape_6_layer_call_fn_1665552?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_reshape_6_layer_call_and_return_conditional_losses_1665566?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
5__inference_conv2d_transpose_18_layer_call_fn_1664316?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *8?5
3?0,????????????????????????????
?2?
P__inference_conv2d_transpose_18_layer_call_and_return_conditional_losses_1664308?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *8?5
3?0,????????????????????????????
?2?
8__inference_batch_normalization_25_layer_call_fn_1665579
8__inference_batch_normalization_25_layer_call_fn_1665592?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
S__inference_batch_normalization_25_layer_call_and_return_conditional_losses_1665610
S__inference_batch_normalization_25_layer_call_and_return_conditional_losses_1665628?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
0__inference_leaky_re_lu_31_layer_call_fn_1665633?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
K__inference_leaky_re_lu_31_layer_call_and_return_conditional_losses_1665638?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
5__inference_conv2d_transpose_19_layer_call_fn_1664497?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *8?5
3?0,????????????????????????????
?2?
P__inference_conv2d_transpose_19_layer_call_and_return_conditional_losses_1664489?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *8?5
3?0,????????????????????????????
?2?
8__inference_batch_normalization_26_layer_call_fn_1665651
8__inference_batch_normalization_26_layer_call_fn_1665664?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
S__inference_batch_normalization_26_layer_call_and_return_conditional_losses_1665682
S__inference_batch_normalization_26_layer_call_and_return_conditional_losses_1665700?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
0__inference_leaky_re_lu_32_layer_call_fn_1665705?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
K__inference_leaky_re_lu_32_layer_call_and_return_conditional_losses_1665710?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
5__inference_conv2d_transpose_20_layer_call_fn_1664679?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *7?4
2?/+???????????????????????????@
?2?
P__inference_conv2d_transpose_20_layer_call_and_return_conditional_losses_1664671?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *7?4
2?/+???????????????????????????@
?B?
%__inference_signature_wrapper_1665129dense_12_input"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ?
"__inference__wrapped_model_1664115?'-./0:@ABCM7?4
-?*
(?%
dense_12_input?????????2
? "Q?N
L
conv2d_transpose_205?2
conv2d_transpose_20?????????
?
S__inference_batch_normalization_24_layer_call_and_return_conditional_losses_1665503d4?1
*?'
!?
inputs??????????(
p 
? "&?#
?
0??????????(
? ?
S__inference_batch_normalization_24_layer_call_and_return_conditional_losses_1665537d4?1
*?'
!?
inputs??????????(
p
? "&?#
?
0??????????(
? ?
8__inference_batch_normalization_24_layer_call_fn_1665470W4?1
*?'
!?
inputs??????????(
p 
? "???????????(?
8__inference_batch_normalization_24_layer_call_fn_1665483W4?1
*?'
!?
inputs??????????(
p
? "???????????(?
S__inference_batch_normalization_25_layer_call_and_return_conditional_losses_1665610?-./0N?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
S__inference_batch_normalization_25_layer_call_and_return_conditional_losses_1665628?-./0N?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
8__inference_batch_normalization_25_layer_call_fn_1665579?-./0N?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
8__inference_batch_normalization_25_layer_call_fn_1665592?-./0N?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
S__inference_batch_normalization_26_layer_call_and_return_conditional_losses_1665682?@ABCM?J
C?@
:?7
inputs+???????????????????????????@
p 
? "??<
5?2
0+???????????????????????????@
? ?
S__inference_batch_normalization_26_layer_call_and_return_conditional_losses_1665700?@ABCM?J
C?@
:?7
inputs+???????????????????????????@
p
? "??<
5?2
0+???????????????????????????@
? ?
8__inference_batch_normalization_26_layer_call_fn_1665651?@ABCM?J
C?@
:?7
inputs+???????????????????????????@
p 
? "2?/+???????????????????????????@?
8__inference_batch_normalization_26_layer_call_fn_1665664?@ABCM?J
C?@
:?7
inputs+???????????????????????????@
p
? "2?/+???????????????????????????@?
P__inference_conv2d_transpose_18_layer_call_and_return_conditional_losses_1664308?'J?G
@?=
;?8
inputs,????????????????????????????
? "@?=
6?3
0,????????????????????????????
? ?
5__inference_conv2d_transpose_18_layer_call_fn_1664316?'J?G
@?=
;?8
inputs,????????????????????????????
? "3?0,?????????????????????????????
P__inference_conv2d_transpose_19_layer_call_and_return_conditional_losses_1664489?:J?G
@?=
;?8
inputs,????????????????????????????
? "??<
5?2
0+???????????????????????????@
? ?
5__inference_conv2d_transpose_19_layer_call_fn_1664497?:J?G
@?=
;?8
inputs,????????????????????????????
? "2?/+???????????????????????????@?
P__inference_conv2d_transpose_20_layer_call_and_return_conditional_losses_1664671?MI?F
??<
:?7
inputs+???????????????????????????@
? "??<
5?2
0+???????????????????????????
? ?
5__inference_conv2d_transpose_20_layer_call_fn_1664679?MI?F
??<
:?7
inputs+???????????????????????????@
? "2?/+????????????????????????????
E__inference_dense_12_layer_call_and_return_conditional_losses_1665457\/?,
%?"
 ?
inputs?????????2
? "&?#
?
0??????????(
? }
*__inference_dense_12_layer_call_fn_1665450O/?,
%?"
 ?
inputs?????????2
? "???????????(?
K__inference_leaky_re_lu_30_layer_call_and_return_conditional_losses_1665547Z0?-
&?#
!?
inputs??????????(
? "&?#
?
0??????????(
? ?
0__inference_leaky_re_lu_30_layer_call_fn_1665542M0?-
&?#
!?
inputs??????????(
? "???????????(?
K__inference_leaky_re_lu_31_layer_call_and_return_conditional_losses_1665638?J?G
@?=
;?8
inputs,????????????????????????????
? "@?=
6?3
0,????????????????????????????
? ?
0__inference_leaky_re_lu_31_layer_call_fn_1665633?J?G
@?=
;?8
inputs,????????????????????????????
? "3?0,?????????????????????????????
K__inference_leaky_re_lu_32_layer_call_and_return_conditional_losses_1665710?I?F
??<
:?7
inputs+???????????????????????????@
? "??<
5?2
0+???????????????????????????@
? ?
0__inference_leaky_re_lu_32_layer_call_fn_1665705I?F
??<
:?7
inputs+???????????????????????????@
? "2?/+???????????????????????????@?
F__inference_reshape_6_layer_call_and_return_conditional_losses_1665566b0?-
&?#
!?
inputs??????????(
? ".?+
$?!
0??????????
? ?
+__inference_reshape_6_layer_call_fn_1665552U0?-
&?#
!?
inputs??????????(
? "!????????????
J__inference_sequential_18_layer_call_and_return_conditional_losses_1665043?'-./0:@ABCM??<
5?2
(?%
dense_12_input?????????2
p 

 
? "??<
5?2
0+???????????????????????????
? ?
J__inference_sequential_18_layer_call_and_return_conditional_losses_1665090?'-./0:@ABCM??<
5?2
(?%
dense_12_input?????????2
p

 
? "??<
5?2
0+???????????????????????????
? ?
J__inference_sequential_18_layer_call_and_return_conditional_losses_1665316z'-./0:@ABCM7?4
-?*
 ?
inputs?????????2
p 

 
? "-?*
#? 
0?????????

? ?
J__inference_sequential_18_layer_call_and_return_conditional_losses_1665443z'-./0:@ABCM7?4
-?*
 ?
inputs?????????2
p

 
? "-?*
#? 
0?????????

? ?
/__inference_sequential_18_layer_call_fn_1664806?'-./0:@ABCM??<
5?2
(?%
dense_12_input?????????2
p 

 
? "2?/+????????????????????????????
/__inference_sequential_18_layer_call_fn_1664996?'-./0:@ABCM??<
5?2
(?%
dense_12_input?????????2
p

 
? "2?/+????????????????????????????
/__inference_sequential_18_layer_call_fn_1665166'-./0:@ABCM7?4
-?*
 ?
inputs?????????2
p 

 
? "2?/+????????????????????????????
/__inference_sequential_18_layer_call_fn_1665203'-./0:@ABCM7?4
-?*
 ?
inputs?????????2
p

 
? "2?/+????????????????????????????
%__inference_signature_wrapper_1665129?'-./0:@ABCMI?F
? 
??<
:
dense_12_input(?%
dense_12_input?????????2"Q?N
L
conv2d_transpose_205?2
conv2d_transpose_20?????????
