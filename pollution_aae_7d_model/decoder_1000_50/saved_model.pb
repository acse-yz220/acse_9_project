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
dense_65/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?(* 
shared_namedense_65/kernel
t
#dense_65/kernel/Read/ReadVariableOpReadVariableOpdense_65/kernel*
_output_shapes
:	2?(*
dtype0
?
batch_normalization_78/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?(*-
shared_namebatch_normalization_78/gamma
?
0batch_normalization_78/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_78/gamma*
_output_shapes	
:?(*
dtype0
?
batch_normalization_78/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?(*,
shared_namebatch_normalization_78/beta
?
/batch_normalization_78/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_78/beta*
_output_shapes	
:?(*
dtype0
?
"batch_normalization_78/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?(*3
shared_name$"batch_normalization_78/moving_mean
?
6batch_normalization_78/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_78/moving_mean*
_output_shapes	
:?(*
dtype0
?
&batch_normalization_78/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?(*7
shared_name(&batch_normalization_78/moving_variance
?
:batch_normalization_78/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_78/moving_variance*
_output_shapes	
:?(*
dtype0
?
conv2d_transpose_33/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*+
shared_nameconv2d_transpose_33/kernel
?
.conv2d_transpose_33/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_33/kernel*(
_output_shapes
:??*
dtype0
?
batch_normalization_79/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*-
shared_namebatch_normalization_79/gamma
?
0batch_normalization_79/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_79/gamma*
_output_shapes	
:?*
dtype0
?
batch_normalization_79/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namebatch_normalization_79/beta
?
/batch_normalization_79/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_79/beta*
_output_shapes	
:?*
dtype0
?
"batch_normalization_79/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"batch_normalization_79/moving_mean
?
6batch_normalization_79/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_79/moving_mean*
_output_shapes	
:?*
dtype0
?
&batch_normalization_79/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*7
shared_name(&batch_normalization_79/moving_variance
?
:batch_normalization_79/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_79/moving_variance*
_output_shapes	
:?*
dtype0
?
conv2d_transpose_34/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*+
shared_nameconv2d_transpose_34/kernel
?
.conv2d_transpose_34/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_34/kernel*'
_output_shapes
:@?*
dtype0
?
batch_normalization_80/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*-
shared_namebatch_normalization_80/gamma
?
0batch_normalization_80/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_80/gamma*
_output_shapes
:@*
dtype0
?
batch_normalization_80/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_namebatch_normalization_80/beta
?
/batch_normalization_80/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_80/beta*
_output_shapes
:@*
dtype0
?
"batch_normalization_80/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"batch_normalization_80/moving_mean
?
6batch_normalization_80/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_80/moving_mean*
_output_shapes
:@*
dtype0
?
&batch_normalization_80/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*7
shared_name(&batch_normalization_80/moving_variance
?
:batch_normalization_80/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_80/moving_variance*
_output_shapes
:@*
dtype0
?
conv2d_transpose_35/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*+
shared_nameconv2d_transpose_35/kernel
?
.conv2d_transpose_35/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_35/kernel*&
_output_shapes
:@*
dtype0

NoOpNoOp
?1
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?1
value?1B?1 B?1
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer-4
layer_with_weights-2
layer-5
layer_with_weights-3
layer-6
layer-7
	layer_with_weights-4
	layer-8

layer_with_weights-5

layer-9
layer-10
layer_with_weights-6
layer-11
	variables
trainable_variables
regularization_losses
	keras_api

signatures
 
^

kernel
	variables
trainable_variables
regularization_losses
	keras_api
?
axis
	gamma
beta
moving_mean
moving_variance
	variables
trainable_variables
regularization_losses
	keras_api
R
 	variables
!trainable_variables
"regularization_losses
#	keras_api
R
$	variables
%trainable_variables
&regularization_losses
'	keras_api
^

(kernel
)	variables
*trainable_variables
+regularization_losses
,	keras_api
?
-axis
	.gamma
/beta
0moving_mean
1moving_variance
2	variables
3trainable_variables
4regularization_losses
5	keras_api
R
6	variables
7trainable_variables
8regularization_losses
9	keras_api
r
:output_padding

;kernel
<	variables
=trainable_variables
>regularization_losses
?	keras_api
?
@axis
	Agamma
Bbeta
Cmoving_mean
Dmoving_variance
E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
R
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
r
Moutput_padding

Nkernel
O	variables
Ptrainable_variables
Qregularization_losses
R	keras_api
v
0
1
2
3
4
(5
.6
/7
08
19
;10
A11
B12
C13
D14
N15
F
0
1
2
(3
.4
/5
;6
A7
B8
N9
 
?
Slayer_metrics
Tlayer_regularization_losses
Umetrics
Vnon_trainable_variables
	variables

Wlayers
trainable_variables
regularization_losses
 
[Y
VARIABLE_VALUEdense_65/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE

0

0
 
?
Xlayer_metrics
Ylayer_regularization_losses
Zmetrics
[non_trainable_variables
	variables

\layers
trainable_variables
regularization_losses
 
ge
VARIABLE_VALUEbatch_normalization_78/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_78/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_78/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_78/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

0
1
2
3

0
1
 
?
]layer_metrics
^layer_regularization_losses
_metrics
`non_trainable_variables
	variables

alayers
trainable_variables
regularization_losses
 
 
 
?
blayer_metrics
clayer_regularization_losses
dmetrics
enon_trainable_variables
 	variables

flayers
!trainable_variables
"regularization_losses
 
 
 
?
glayer_metrics
hlayer_regularization_losses
imetrics
jnon_trainable_variables
$	variables

klayers
%trainable_variables
&regularization_losses
fd
VARIABLE_VALUEconv2d_transpose_33/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE

(0

(0
 
?
llayer_metrics
mlayer_regularization_losses
nmetrics
onon_trainable_variables
)	variables

players
*trainable_variables
+regularization_losses
 
ge
VARIABLE_VALUEbatch_normalization_79/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_79/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_79/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_79/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

.0
/1
02
13

.0
/1
 
?
qlayer_metrics
rlayer_regularization_losses
smetrics
tnon_trainable_variables
2	variables

ulayers
3trainable_variables
4regularization_losses
 
 
 
?
vlayer_metrics
wlayer_regularization_losses
xmetrics
ynon_trainable_variables
6	variables

zlayers
7trainable_variables
8regularization_losses
 
fd
VARIABLE_VALUEconv2d_transpose_34/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE

;0

;0
 
?
{layer_metrics
|layer_regularization_losses
}metrics
~non_trainable_variables
<	variables

layers
=trainable_variables
>regularization_losses
 
ge
VARIABLE_VALUEbatch_normalization_80/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_80/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_80/moving_mean;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_80/moving_variance?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

A0
B1
C2
D3

A0
B1
 
?
?layer_metrics
 ?layer_regularization_losses
?metrics
?non_trainable_variables
E	variables
?layers
Ftrainable_variables
Gregularization_losses
 
 
 
?
?layer_metrics
 ?layer_regularization_losses
?metrics
?non_trainable_variables
I	variables
?layers
Jtrainable_variables
Kregularization_losses
 
fd
VARIABLE_VALUEconv2d_transpose_35/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE

N0

N0
 
?
?layer_metrics
 ?layer_regularization_losses
?metrics
?non_trainable_variables
O	variables
?layers
Ptrainable_variables
Qregularization_losses
 
 
 
*
0
1
02
13
C4
D5
V
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
11
 
 
 
 
 
 
 
 

0
1
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
00
11
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
C0
D1
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
{
serving_default_input_44Placeholder*'
_output_shapes
:?????????2*
dtype0*
shape:?????????2
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_44dense_65/kernel&batch_normalization_78/moving_variancebatch_normalization_78/gamma"batch_normalization_78/moving_meanbatch_normalization_78/betaconv2d_transpose_33/kernelbatch_normalization_79/gammabatch_normalization_79/beta"batch_normalization_79/moving_mean&batch_normalization_79/moving_varianceconv2d_transpose_34/kernelbatch_normalization_80/gammabatch_normalization_80/beta"batch_normalization_80/moving_mean&batch_normalization_80/moving_varianceconv2d_transpose_35/kernel*
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
%__inference_signature_wrapper_8524406
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_65/kernel/Read/ReadVariableOp0batch_normalization_78/gamma/Read/ReadVariableOp/batch_normalization_78/beta/Read/ReadVariableOp6batch_normalization_78/moving_mean/Read/ReadVariableOp:batch_normalization_78/moving_variance/Read/ReadVariableOp.conv2d_transpose_33/kernel/Read/ReadVariableOp0batch_normalization_79/gamma/Read/ReadVariableOp/batch_normalization_79/beta/Read/ReadVariableOp6batch_normalization_79/moving_mean/Read/ReadVariableOp:batch_normalization_79/moving_variance/Read/ReadVariableOp.conv2d_transpose_34/kernel/Read/ReadVariableOp0batch_normalization_80/gamma/Read/ReadVariableOp/batch_normalization_80/beta/Read/ReadVariableOp6batch_normalization_80/moving_mean/Read/ReadVariableOp:batch_normalization_80/moving_variance/Read/ReadVariableOp.conv2d_transpose_35/kernel/Read/ReadVariableOpConst*
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
 __inference__traced_save_8525058
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_65/kernelbatch_normalization_78/gammabatch_normalization_78/beta"batch_normalization_78/moving_mean&batch_normalization_78/moving_varianceconv2d_transpose_33/kernelbatch_normalization_79/gammabatch_normalization_79/beta"batch_normalization_79/moving_mean&batch_normalization_79/moving_varianceconv2d_transpose_34/kernelbatch_normalization_80/gammabatch_normalization_80/beta"batch_normalization_80/moving_mean&batch_normalization_80/moving_varianceconv2d_transpose_35/kernel*
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
#__inference__traced_restore_8525116??
?
L
0__inference_leaky_re_lu_79_layer_call_fn_8524915

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
K__inference_leaky_re_lu_79_layer_call_and_return_conditional_losses_85240232
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
?

*__inference_dense_65_layer_call_fn_8524734

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
E__inference_dense_65_layer_call_and_return_conditional_losses_85239702
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
?
?
S__inference_batch_normalization_78_layer_call_and_return_conditional_losses_8524754

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
? 
?
P__inference_conv2d_transpose_33_layer_call_and_return_conditional_losses_8523585

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
??
?
D__inference_Decoder_layer_call_and_return_conditional_losses_8524646

inputs:
'dense_65_matmul_readvariableop_resource:	2?(M
>batch_normalization_78_assignmovingavg_readvariableop_resource:	?(O
@batch_normalization_78_assignmovingavg_1_readvariableop_resource:	?(K
<batch_normalization_78_batchnorm_mul_readvariableop_resource:	?(G
8batch_normalization_78_batchnorm_readvariableop_resource:	?(X
<conv2d_transpose_33_conv2d_transpose_readvariableop_resource:??=
.batch_normalization_79_readvariableop_resource:	??
0batch_normalization_79_readvariableop_1_resource:	?N
?batch_normalization_79_fusedbatchnormv3_readvariableop_resource:	?P
Abatch_normalization_79_fusedbatchnormv3_readvariableop_1_resource:	?W
<conv2d_transpose_34_conv2d_transpose_readvariableop_resource:@?<
.batch_normalization_80_readvariableop_resource:@>
0batch_normalization_80_readvariableop_1_resource:@M
?batch_normalization_80_fusedbatchnormv3_readvariableop_resource:@O
Abatch_normalization_80_fusedbatchnormv3_readvariableop_1_resource:@V
<conv2d_transpose_35_conv2d_transpose_readvariableop_resource:@
identity??&batch_normalization_78/AssignMovingAvg?5batch_normalization_78/AssignMovingAvg/ReadVariableOp?(batch_normalization_78/AssignMovingAvg_1?7batch_normalization_78/AssignMovingAvg_1/ReadVariableOp?/batch_normalization_78/batchnorm/ReadVariableOp?3batch_normalization_78/batchnorm/mul/ReadVariableOp?%batch_normalization_79/AssignNewValue?'batch_normalization_79/AssignNewValue_1?6batch_normalization_79/FusedBatchNormV3/ReadVariableOp?8batch_normalization_79/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_79/ReadVariableOp?'batch_normalization_79/ReadVariableOp_1?%batch_normalization_80/AssignNewValue?'batch_normalization_80/AssignNewValue_1?6batch_normalization_80/FusedBatchNormV3/ReadVariableOp?8batch_normalization_80/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_80/ReadVariableOp?'batch_normalization_80/ReadVariableOp_1?3conv2d_transpose_33/conv2d_transpose/ReadVariableOp?3conv2d_transpose_34/conv2d_transpose/ReadVariableOp?3conv2d_transpose_35/conv2d_transpose/ReadVariableOp?dense_65/MatMul/ReadVariableOp?
dense_65/MatMul/ReadVariableOpReadVariableOp'dense_65_matmul_readvariableop_resource*
_output_shapes
:	2?(*
dtype02 
dense_65/MatMul/ReadVariableOp?
dense_65/MatMulMatMulinputs&dense_65/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????(2
dense_65/MatMul?
5batch_normalization_78/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 27
5batch_normalization_78/moments/mean/reduction_indices?
#batch_normalization_78/moments/meanMeandense_65/MatMul:product:0>batch_normalization_78/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?(*
	keep_dims(2%
#batch_normalization_78/moments/mean?
+batch_normalization_78/moments/StopGradientStopGradient,batch_normalization_78/moments/mean:output:0*
T0*
_output_shapes
:	?(2-
+batch_normalization_78/moments/StopGradient?
0batch_normalization_78/moments/SquaredDifferenceSquaredDifferencedense_65/MatMul:product:04batch_normalization_78/moments/StopGradient:output:0*
T0*(
_output_shapes
:??????????(22
0batch_normalization_78/moments/SquaredDifference?
9batch_normalization_78/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2;
9batch_normalization_78/moments/variance/reduction_indices?
'batch_normalization_78/moments/varianceMean4batch_normalization_78/moments/SquaredDifference:z:0Bbatch_normalization_78/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?(*
	keep_dims(2)
'batch_normalization_78/moments/variance?
&batch_normalization_78/moments/SqueezeSqueeze,batch_normalization_78/moments/mean:output:0*
T0*
_output_shapes	
:?(*
squeeze_dims
 2(
&batch_normalization_78/moments/Squeeze?
(batch_normalization_78/moments/Squeeze_1Squeeze0batch_normalization_78/moments/variance:output:0*
T0*
_output_shapes	
:?(*
squeeze_dims
 2*
(batch_normalization_78/moments/Squeeze_1?
,batch_normalization_78/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2.
,batch_normalization_78/AssignMovingAvg/decay?
5batch_normalization_78/AssignMovingAvg/ReadVariableOpReadVariableOp>batch_normalization_78_assignmovingavg_readvariableop_resource*
_output_shapes	
:?(*
dtype027
5batch_normalization_78/AssignMovingAvg/ReadVariableOp?
*batch_normalization_78/AssignMovingAvg/subSub=batch_normalization_78/AssignMovingAvg/ReadVariableOp:value:0/batch_normalization_78/moments/Squeeze:output:0*
T0*
_output_shapes	
:?(2,
*batch_normalization_78/AssignMovingAvg/sub?
*batch_normalization_78/AssignMovingAvg/mulMul.batch_normalization_78/AssignMovingAvg/sub:z:05batch_normalization_78/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:?(2,
*batch_normalization_78/AssignMovingAvg/mul?
&batch_normalization_78/AssignMovingAvgAssignSubVariableOp>batch_normalization_78_assignmovingavg_readvariableop_resource.batch_normalization_78/AssignMovingAvg/mul:z:06^batch_normalization_78/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02(
&batch_normalization_78/AssignMovingAvg?
.batch_normalization_78/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<20
.batch_normalization_78/AssignMovingAvg_1/decay?
7batch_normalization_78/AssignMovingAvg_1/ReadVariableOpReadVariableOp@batch_normalization_78_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?(*
dtype029
7batch_normalization_78/AssignMovingAvg_1/ReadVariableOp?
,batch_normalization_78/AssignMovingAvg_1/subSub?batch_normalization_78/AssignMovingAvg_1/ReadVariableOp:value:01batch_normalization_78/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?(2.
,batch_normalization_78/AssignMovingAvg_1/sub?
,batch_normalization_78/AssignMovingAvg_1/mulMul0batch_normalization_78/AssignMovingAvg_1/sub:z:07batch_normalization_78/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:?(2.
,batch_normalization_78/AssignMovingAvg_1/mul?
(batch_normalization_78/AssignMovingAvg_1AssignSubVariableOp@batch_normalization_78_assignmovingavg_1_readvariableop_resource0batch_normalization_78/AssignMovingAvg_1/mul:z:08^batch_normalization_78/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02*
(batch_normalization_78/AssignMovingAvg_1?
&batch_normalization_78/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2(
&batch_normalization_78/batchnorm/add/y?
$batch_normalization_78/batchnorm/addAddV21batch_normalization_78/moments/Squeeze_1:output:0/batch_normalization_78/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?(2&
$batch_normalization_78/batchnorm/add?
&batch_normalization_78/batchnorm/RsqrtRsqrt(batch_normalization_78/batchnorm/add:z:0*
T0*
_output_shapes	
:?(2(
&batch_normalization_78/batchnorm/Rsqrt?
3batch_normalization_78/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_78_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?(*
dtype025
3batch_normalization_78/batchnorm/mul/ReadVariableOp?
$batch_normalization_78/batchnorm/mulMul*batch_normalization_78/batchnorm/Rsqrt:y:0;batch_normalization_78/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?(2&
$batch_normalization_78/batchnorm/mul?
&batch_normalization_78/batchnorm/mul_1Muldense_65/MatMul:product:0(batch_normalization_78/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????(2(
&batch_normalization_78/batchnorm/mul_1?
&batch_normalization_78/batchnorm/mul_2Mul/batch_normalization_78/moments/Squeeze:output:0(batch_normalization_78/batchnorm/mul:z:0*
T0*
_output_shapes	
:?(2(
&batch_normalization_78/batchnorm/mul_2?
/batch_normalization_78/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_78_batchnorm_readvariableop_resource*
_output_shapes	
:?(*
dtype021
/batch_normalization_78/batchnorm/ReadVariableOp?
$batch_normalization_78/batchnorm/subSub7batch_normalization_78/batchnorm/ReadVariableOp:value:0*batch_normalization_78/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?(2&
$batch_normalization_78/batchnorm/sub?
&batch_normalization_78/batchnorm/add_1AddV2*batch_normalization_78/batchnorm/mul_1:z:0(batch_normalization_78/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????(2(
&batch_normalization_78/batchnorm/add_1?
leaky_re_lu_78/LeakyRelu	LeakyRelu*batch_normalization_78/batchnorm/add_1:z:0*(
_output_shapes
:??????????(*
alpha%???>2
leaky_re_lu_78/LeakyReluz
reshape_12/ShapeShape&leaky_re_lu_78/LeakyRelu:activations:0*
T0*
_output_shapes
:2
reshape_12/Shape?
reshape_12/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_12/strided_slice/stack?
 reshape_12/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_12/strided_slice/stack_1?
 reshape_12/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_12/strided_slice/stack_2?
reshape_12/strided_sliceStridedSlicereshape_12/Shape:output:0'reshape_12/strided_slice/stack:output:0)reshape_12/strided_slice/stack_1:output:0)reshape_12/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_12/strided_slicez
reshape_12/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_12/Reshape/shape/1z
reshape_12/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_12/Reshape/shape/2{
reshape_12/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :?2
reshape_12/Reshape/shape/3?
reshape_12/Reshape/shapePack!reshape_12/strided_slice:output:0#reshape_12/Reshape/shape/1:output:0#reshape_12/Reshape/shape/2:output:0#reshape_12/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
reshape_12/Reshape/shape?
reshape_12/ReshapeReshape&leaky_re_lu_78/LeakyRelu:activations:0!reshape_12/Reshape/shape:output:0*
T0*0
_output_shapes
:??????????2
reshape_12/Reshape?
conv2d_transpose_33/ShapeShapereshape_12/Reshape:output:0*
T0*
_output_shapes
:2
conv2d_transpose_33/Shape?
'conv2d_transpose_33/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_33/strided_slice/stack?
)conv2d_transpose_33/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_33/strided_slice/stack_1?
)conv2d_transpose_33/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_33/strided_slice/stack_2?
!conv2d_transpose_33/strided_sliceStridedSlice"conv2d_transpose_33/Shape:output:00conv2d_transpose_33/strided_slice/stack:output:02conv2d_transpose_33/strided_slice/stack_1:output:02conv2d_transpose_33/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_33/strided_slice|
conv2d_transpose_33/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_33/stack/1|
conv2d_transpose_33/stack/2Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_33/stack/2}
conv2d_transpose_33/stack/3Const*
_output_shapes
: *
dtype0*
value
B :?2
conv2d_transpose_33/stack/3?
conv2d_transpose_33/stackPack*conv2d_transpose_33/strided_slice:output:0$conv2d_transpose_33/stack/1:output:0$conv2d_transpose_33/stack/2:output:0$conv2d_transpose_33/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_33/stack?
)conv2d_transpose_33/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_33/strided_slice_1/stack?
+conv2d_transpose_33/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_33/strided_slice_1/stack_1?
+conv2d_transpose_33/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_33/strided_slice_1/stack_2?
#conv2d_transpose_33/strided_slice_1StridedSlice"conv2d_transpose_33/stack:output:02conv2d_transpose_33/strided_slice_1/stack:output:04conv2d_transpose_33/strided_slice_1/stack_1:output:04conv2d_transpose_33/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_33/strided_slice_1?
3conv2d_transpose_33/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_33_conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype025
3conv2d_transpose_33/conv2d_transpose/ReadVariableOp?
$conv2d_transpose_33/conv2d_transposeConv2DBackpropInput"conv2d_transpose_33/stack:output:0;conv2d_transpose_33/conv2d_transpose/ReadVariableOp:value:0reshape_12/Reshape:output:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2&
$conv2d_transpose_33/conv2d_transpose?
%batch_normalization_79/ReadVariableOpReadVariableOp.batch_normalization_79_readvariableop_resource*
_output_shapes	
:?*
dtype02'
%batch_normalization_79/ReadVariableOp?
'batch_normalization_79/ReadVariableOp_1ReadVariableOp0batch_normalization_79_readvariableop_1_resource*
_output_shapes	
:?*
dtype02)
'batch_normalization_79/ReadVariableOp_1?
6batch_normalization_79/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_79_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype028
6batch_normalization_79/FusedBatchNormV3/ReadVariableOp?
8batch_normalization_79/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_79_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02:
8batch_normalization_79/FusedBatchNormV3/ReadVariableOp_1?
'batch_normalization_79/FusedBatchNormV3FusedBatchNormV3-conv2d_transpose_33/conv2d_transpose:output:0-batch_normalization_79/ReadVariableOp:value:0/batch_normalization_79/ReadVariableOp_1:value:0>batch_normalization_79/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_79/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2)
'batch_normalization_79/FusedBatchNormV3?
%batch_normalization_79/AssignNewValueAssignVariableOp?batch_normalization_79_fusedbatchnormv3_readvariableop_resource4batch_normalization_79/FusedBatchNormV3:batch_mean:07^batch_normalization_79/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02'
%batch_normalization_79/AssignNewValue?
'batch_normalization_79/AssignNewValue_1AssignVariableOpAbatch_normalization_79_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_79/FusedBatchNormV3:batch_variance:09^batch_normalization_79/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02)
'batch_normalization_79/AssignNewValue_1?
leaky_re_lu_79/LeakyRelu	LeakyRelu+batch_normalization_79/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
alpha%???>2
leaky_re_lu_79/LeakyRelu?
conv2d_transpose_34/ShapeShape&leaky_re_lu_79/LeakyRelu:activations:0*
T0*
_output_shapes
:2
conv2d_transpose_34/Shape?
'conv2d_transpose_34/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_34/strided_slice/stack?
)conv2d_transpose_34/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_34/strided_slice/stack_1?
)conv2d_transpose_34/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_34/strided_slice/stack_2?
!conv2d_transpose_34/strided_sliceStridedSlice"conv2d_transpose_34/Shape:output:00conv2d_transpose_34/strided_slice/stack:output:02conv2d_transpose_34/strided_slice/stack_1:output:02conv2d_transpose_34/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_34/strided_slice|
conv2d_transpose_34/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_34/stack/1|
conv2d_transpose_34/stack/2Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_34/stack/2|
conv2d_transpose_34/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2
conv2d_transpose_34/stack/3?
conv2d_transpose_34/stackPack*conv2d_transpose_34/strided_slice:output:0$conv2d_transpose_34/stack/1:output:0$conv2d_transpose_34/stack/2:output:0$conv2d_transpose_34/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_34/stack?
)conv2d_transpose_34/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_34/strided_slice_1/stack?
+conv2d_transpose_34/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_34/strided_slice_1/stack_1?
+conv2d_transpose_34/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_34/strided_slice_1/stack_2?
#conv2d_transpose_34/strided_slice_1StridedSlice"conv2d_transpose_34/stack:output:02conv2d_transpose_34/strided_slice_1/stack:output:04conv2d_transpose_34/strided_slice_1/stack_1:output:04conv2d_transpose_34/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_34/strided_slice_1?
3conv2d_transpose_34/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_34_conv2d_transpose_readvariableop_resource*'
_output_shapes
:@?*
dtype025
3conv2d_transpose_34/conv2d_transpose/ReadVariableOp?
$conv2d_transpose_34/conv2d_transposeConv2DBackpropInput"conv2d_transpose_34/stack:output:0;conv2d_transpose_34/conv2d_transpose/ReadVariableOp:value:0&leaky_re_lu_79/LeakyRelu:activations:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2&
$conv2d_transpose_34/conv2d_transpose?
%batch_normalization_80/ReadVariableOpReadVariableOp.batch_normalization_80_readvariableop_resource*
_output_shapes
:@*
dtype02'
%batch_normalization_80/ReadVariableOp?
'batch_normalization_80/ReadVariableOp_1ReadVariableOp0batch_normalization_80_readvariableop_1_resource*
_output_shapes
:@*
dtype02)
'batch_normalization_80/ReadVariableOp_1?
6batch_normalization_80/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_80_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype028
6batch_normalization_80/FusedBatchNormV3/ReadVariableOp?
8batch_normalization_80/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_80_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02:
8batch_normalization_80/FusedBatchNormV3/ReadVariableOp_1?
'batch_normalization_80/FusedBatchNormV3FusedBatchNormV3-conv2d_transpose_34/conv2d_transpose:output:0-batch_normalization_80/ReadVariableOp:value:0/batch_normalization_80/ReadVariableOp_1:value:0>batch_normalization_80/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_80/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2)
'batch_normalization_80/FusedBatchNormV3?
%batch_normalization_80/AssignNewValueAssignVariableOp?batch_normalization_80_fusedbatchnormv3_readvariableop_resource4batch_normalization_80/FusedBatchNormV3:batch_mean:07^batch_normalization_80/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02'
%batch_normalization_80/AssignNewValue?
'batch_normalization_80/AssignNewValue_1AssignVariableOpAbatch_normalization_80_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_80/FusedBatchNormV3:batch_variance:09^batch_normalization_80/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02)
'batch_normalization_80/AssignNewValue_1?
leaky_re_lu_80/LeakyRelu	LeakyRelu+batch_normalization_80/FusedBatchNormV3:y:0*/
_output_shapes
:?????????@*
alpha%???>2
leaky_re_lu_80/LeakyRelu?
conv2d_transpose_35/ShapeShape&leaky_re_lu_80/LeakyRelu:activations:0*
T0*
_output_shapes
:2
conv2d_transpose_35/Shape?
'conv2d_transpose_35/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_35/strided_slice/stack?
)conv2d_transpose_35/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_35/strided_slice/stack_1?
)conv2d_transpose_35/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_35/strided_slice/stack_2?
!conv2d_transpose_35/strided_sliceStridedSlice"conv2d_transpose_35/Shape:output:00conv2d_transpose_35/strided_slice/stack:output:02conv2d_transpose_35/strided_slice/stack_1:output:02conv2d_transpose_35/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_35/strided_slice|
conv2d_transpose_35/stack/1Const*
_output_shapes
: *
dtype0*
value	B :
2
conv2d_transpose_35/stack/1|
conv2d_transpose_35/stack/2Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_35/stack/2|
conv2d_transpose_35/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_35/stack/3?
conv2d_transpose_35/stackPack*conv2d_transpose_35/strided_slice:output:0$conv2d_transpose_35/stack/1:output:0$conv2d_transpose_35/stack/2:output:0$conv2d_transpose_35/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_35/stack?
)conv2d_transpose_35/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_35/strided_slice_1/stack?
+conv2d_transpose_35/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_35/strided_slice_1/stack_1?
+conv2d_transpose_35/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_35/strided_slice_1/stack_2?
#conv2d_transpose_35/strided_slice_1StridedSlice"conv2d_transpose_35/stack:output:02conv2d_transpose_35/strided_slice_1/stack:output:04conv2d_transpose_35/strided_slice_1/stack_1:output:04conv2d_transpose_35/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_35/strided_slice_1?
3conv2d_transpose_35/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_35_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@*
dtype025
3conv2d_transpose_35/conv2d_transpose/ReadVariableOp?
$conv2d_transpose_35/conv2d_transposeConv2DBackpropInput"conv2d_transpose_35/stack:output:0;conv2d_transpose_35/conv2d_transpose/ReadVariableOp:value:0&leaky_re_lu_80/LeakyRelu:activations:0*
T0*/
_output_shapes
:?????????
*
paddingSAME*
strides
2&
$conv2d_transpose_35/conv2d_transpose?
conv2d_transpose_35/TanhTanh-conv2d_transpose_35/conv2d_transpose:output:0*
T0*/
_output_shapes
:?????????
2
conv2d_transpose_35/Tanh?	
IdentityIdentityconv2d_transpose_35/Tanh:y:0'^batch_normalization_78/AssignMovingAvg6^batch_normalization_78/AssignMovingAvg/ReadVariableOp)^batch_normalization_78/AssignMovingAvg_18^batch_normalization_78/AssignMovingAvg_1/ReadVariableOp0^batch_normalization_78/batchnorm/ReadVariableOp4^batch_normalization_78/batchnorm/mul/ReadVariableOp&^batch_normalization_79/AssignNewValue(^batch_normalization_79/AssignNewValue_17^batch_normalization_79/FusedBatchNormV3/ReadVariableOp9^batch_normalization_79/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_79/ReadVariableOp(^batch_normalization_79/ReadVariableOp_1&^batch_normalization_80/AssignNewValue(^batch_normalization_80/AssignNewValue_17^batch_normalization_80/FusedBatchNormV3/ReadVariableOp9^batch_normalization_80/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_80/ReadVariableOp(^batch_normalization_80/ReadVariableOp_14^conv2d_transpose_33/conv2d_transpose/ReadVariableOp4^conv2d_transpose_34/conv2d_transpose/ReadVariableOp4^conv2d_transpose_35/conv2d_transpose/ReadVariableOp^dense_65/MatMul/ReadVariableOp*
T0*/
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????2: : : : : : : : : : : : : : : : 2P
&batch_normalization_78/AssignMovingAvg&batch_normalization_78/AssignMovingAvg2n
5batch_normalization_78/AssignMovingAvg/ReadVariableOp5batch_normalization_78/AssignMovingAvg/ReadVariableOp2T
(batch_normalization_78/AssignMovingAvg_1(batch_normalization_78/AssignMovingAvg_12r
7batch_normalization_78/AssignMovingAvg_1/ReadVariableOp7batch_normalization_78/AssignMovingAvg_1/ReadVariableOp2b
/batch_normalization_78/batchnorm/ReadVariableOp/batch_normalization_78/batchnorm/ReadVariableOp2j
3batch_normalization_78/batchnorm/mul/ReadVariableOp3batch_normalization_78/batchnorm/mul/ReadVariableOp2N
%batch_normalization_79/AssignNewValue%batch_normalization_79/AssignNewValue2R
'batch_normalization_79/AssignNewValue_1'batch_normalization_79/AssignNewValue_12p
6batch_normalization_79/FusedBatchNormV3/ReadVariableOp6batch_normalization_79/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_79/FusedBatchNormV3/ReadVariableOp_18batch_normalization_79/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_79/ReadVariableOp%batch_normalization_79/ReadVariableOp2R
'batch_normalization_79/ReadVariableOp_1'batch_normalization_79/ReadVariableOp_12N
%batch_normalization_80/AssignNewValue%batch_normalization_80/AssignNewValue2R
'batch_normalization_80/AssignNewValue_1'batch_normalization_80/AssignNewValue_12p
6batch_normalization_80/FusedBatchNormV3/ReadVariableOp6batch_normalization_80/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_80/FusedBatchNormV3/ReadVariableOp_18batch_normalization_80/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_80/ReadVariableOp%batch_normalization_80/ReadVariableOp2R
'batch_normalization_80/ReadVariableOp_1'batch_normalization_80/ReadVariableOp_12j
3conv2d_transpose_33/conv2d_transpose/ReadVariableOp3conv2d_transpose_33/conv2d_transpose/ReadVariableOp2j
3conv2d_transpose_34/conv2d_transpose/ReadVariableOp3conv2d_transpose_34/conv2d_transpose/ReadVariableOp2j
3conv2d_transpose_35/conv2d_transpose/ReadVariableOp3conv2d_transpose_35/conv2d_transpose/ReadVariableOp2@
dense_65/MatMul/ReadVariableOpdense_65/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_79_layer_call_and_return_conditional_losses_8524879

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
?
?
S__inference_batch_normalization_80_layer_call_and_return_conditional_losses_8524933

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
?
?
8__inference_batch_normalization_80_layer_call_fn_8524977

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
S__inference_batch_normalization_80_layer_call_and_return_conditional_losses_85238402
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
?>
?	
D__inference_Decoder_layer_call_and_return_conditional_losses_8524201

inputs#
dense_65_8524157:	2?(-
batch_normalization_78_8524160:	?(-
batch_normalization_78_8524162:	?(-
batch_normalization_78_8524164:	?(-
batch_normalization_78_8524166:	?(7
conv2d_transpose_33_8524171:??-
batch_normalization_79_8524174:	?-
batch_normalization_79_8524176:	?-
batch_normalization_79_8524178:	?-
batch_normalization_79_8524180:	?6
conv2d_transpose_34_8524184:@?,
batch_normalization_80_8524187:@,
batch_normalization_80_8524189:@,
batch_normalization_80_8524191:@,
batch_normalization_80_8524193:@5
conv2d_transpose_35_8524197:@
identity??.batch_normalization_78/StatefulPartitionedCall?.batch_normalization_79/StatefulPartitionedCall?.batch_normalization_80/StatefulPartitionedCall?+conv2d_transpose_33/StatefulPartitionedCall?+conv2d_transpose_34/StatefulPartitionedCall?+conv2d_transpose_35/StatefulPartitionedCall? dense_65/StatefulPartitionedCall?
 dense_65/StatefulPartitionedCallStatefulPartitionedCallinputsdense_65_8524157*
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
E__inference_dense_65_layer_call_and_return_conditional_losses_85239702"
 dense_65/StatefulPartitionedCall?
.batch_normalization_78/StatefulPartitionedCallStatefulPartitionedCall)dense_65/StatefulPartitionedCall:output:0batch_normalization_78_8524160batch_normalization_78_8524162batch_normalization_78_8524164batch_normalization_78_8524166*
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
S__inference_batch_normalization_78_layer_call_and_return_conditional_losses_852347620
.batch_normalization_78/StatefulPartitionedCall?
leaky_re_lu_78/PartitionedCallPartitionedCall7batch_normalization_78/StatefulPartitionedCall:output:0*
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
K__inference_leaky_re_lu_78_layer_call_and_return_conditional_losses_85239882 
leaky_re_lu_78/PartitionedCall?
reshape_12/PartitionedCallPartitionedCall'leaky_re_lu_78/PartitionedCall:output:0*
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
GPU2*0J 8? *P
fKRI
G__inference_reshape_12_layer_call_and_return_conditional_losses_85240042
reshape_12/PartitionedCall?
+conv2d_transpose_33/StatefulPartitionedCallStatefulPartitionedCall#reshape_12/PartitionedCall:output:0conv2d_transpose_33_8524171*
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
P__inference_conv2d_transpose_33_layer_call_and_return_conditional_losses_85235852-
+conv2d_transpose_33/StatefulPartitionedCall?
.batch_normalization_79/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_33/StatefulPartitionedCall:output:0batch_normalization_79_8524174batch_normalization_79_8524176batch_normalization_79_8524178batch_normalization_79_8524180*
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
S__inference_batch_normalization_79_layer_call_and_return_conditional_losses_852365920
.batch_normalization_79/StatefulPartitionedCall?
leaky_re_lu_79/PartitionedCallPartitionedCall7batch_normalization_79/StatefulPartitionedCall:output:0*
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
K__inference_leaky_re_lu_79_layer_call_and_return_conditional_losses_85240232 
leaky_re_lu_79/PartitionedCall?
+conv2d_transpose_34/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_79/PartitionedCall:output:0conv2d_transpose_34_8524184*
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
P__inference_conv2d_transpose_34_layer_call_and_return_conditional_losses_85237662-
+conv2d_transpose_34/StatefulPartitionedCall?
.batch_normalization_80/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_34/StatefulPartitionedCall:output:0batch_normalization_80_8524187batch_normalization_80_8524189batch_normalization_80_8524191batch_normalization_80_8524193*
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
S__inference_batch_normalization_80_layer_call_and_return_conditional_losses_852384020
.batch_normalization_80/StatefulPartitionedCall?
leaky_re_lu_80/PartitionedCallPartitionedCall7batch_normalization_80/StatefulPartitionedCall:output:0*
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
K__inference_leaky_re_lu_80_layer_call_and_return_conditional_losses_85240422 
leaky_re_lu_80/PartitionedCall?
+conv2d_transpose_35/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_80/PartitionedCall:output:0conv2d_transpose_35_8524197*
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
P__inference_conv2d_transpose_35_layer_call_and_return_conditional_losses_85239482-
+conv2d_transpose_35/StatefulPartitionedCall?
IdentityIdentity4conv2d_transpose_35/StatefulPartitionedCall:output:0/^batch_normalization_78/StatefulPartitionedCall/^batch_normalization_79/StatefulPartitionedCall/^batch_normalization_80/StatefulPartitionedCall,^conv2d_transpose_33/StatefulPartitionedCall,^conv2d_transpose_34/StatefulPartitionedCall,^conv2d_transpose_35/StatefulPartitionedCall!^dense_65/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????2: : : : : : : : : : : : : : : : 2`
.batch_normalization_78/StatefulPartitionedCall.batch_normalization_78/StatefulPartitionedCall2`
.batch_normalization_79/StatefulPartitionedCall.batch_normalization_79/StatefulPartitionedCall2`
.batch_normalization_80/StatefulPartitionedCall.batch_normalization_80/StatefulPartitionedCall2Z
+conv2d_transpose_33/StatefulPartitionedCall+conv2d_transpose_33/StatefulPartitionedCall2Z
+conv2d_transpose_34/StatefulPartitionedCall+conv2d_transpose_34/StatefulPartitionedCall2Z
+conv2d_transpose_35/StatefulPartitionedCall+conv2d_transpose_35/StatefulPartitionedCall2D
 dense_65/StatefulPartitionedCall dense_65/StatefulPartitionedCall:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_79_layer_call_and_return_conditional_losses_8523659

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
)__inference_Decoder_layer_call_fn_8524273
input_44
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
StatefulPartitionedCallStatefulPartitionedCallinput_44unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
GPU2*0J 8? *M
fHRF
D__inference_Decoder_layer_call_and_return_conditional_losses_85242012
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
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:?????????2
"
_user_specified_name
input_44
??
?
D__inference_Decoder_layer_call_and_return_conditional_losses_8524519

inputs:
'dense_65_matmul_readvariableop_resource:	2?(G
8batch_normalization_78_batchnorm_readvariableop_resource:	?(K
<batch_normalization_78_batchnorm_mul_readvariableop_resource:	?(I
:batch_normalization_78_batchnorm_readvariableop_1_resource:	?(I
:batch_normalization_78_batchnorm_readvariableop_2_resource:	?(X
<conv2d_transpose_33_conv2d_transpose_readvariableop_resource:??=
.batch_normalization_79_readvariableop_resource:	??
0batch_normalization_79_readvariableop_1_resource:	?N
?batch_normalization_79_fusedbatchnormv3_readvariableop_resource:	?P
Abatch_normalization_79_fusedbatchnormv3_readvariableop_1_resource:	?W
<conv2d_transpose_34_conv2d_transpose_readvariableop_resource:@?<
.batch_normalization_80_readvariableop_resource:@>
0batch_normalization_80_readvariableop_1_resource:@M
?batch_normalization_80_fusedbatchnormv3_readvariableop_resource:@O
Abatch_normalization_80_fusedbatchnormv3_readvariableop_1_resource:@V
<conv2d_transpose_35_conv2d_transpose_readvariableop_resource:@
identity??/batch_normalization_78/batchnorm/ReadVariableOp?1batch_normalization_78/batchnorm/ReadVariableOp_1?1batch_normalization_78/batchnorm/ReadVariableOp_2?3batch_normalization_78/batchnorm/mul/ReadVariableOp?6batch_normalization_79/FusedBatchNormV3/ReadVariableOp?8batch_normalization_79/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_79/ReadVariableOp?'batch_normalization_79/ReadVariableOp_1?6batch_normalization_80/FusedBatchNormV3/ReadVariableOp?8batch_normalization_80/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_80/ReadVariableOp?'batch_normalization_80/ReadVariableOp_1?3conv2d_transpose_33/conv2d_transpose/ReadVariableOp?3conv2d_transpose_34/conv2d_transpose/ReadVariableOp?3conv2d_transpose_35/conv2d_transpose/ReadVariableOp?dense_65/MatMul/ReadVariableOp?
dense_65/MatMul/ReadVariableOpReadVariableOp'dense_65_matmul_readvariableop_resource*
_output_shapes
:	2?(*
dtype02 
dense_65/MatMul/ReadVariableOp?
dense_65/MatMulMatMulinputs&dense_65/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????(2
dense_65/MatMul?
/batch_normalization_78/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_78_batchnorm_readvariableop_resource*
_output_shapes	
:?(*
dtype021
/batch_normalization_78/batchnorm/ReadVariableOp?
&batch_normalization_78/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2(
&batch_normalization_78/batchnorm/add/y?
$batch_normalization_78/batchnorm/addAddV27batch_normalization_78/batchnorm/ReadVariableOp:value:0/batch_normalization_78/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?(2&
$batch_normalization_78/batchnorm/add?
&batch_normalization_78/batchnorm/RsqrtRsqrt(batch_normalization_78/batchnorm/add:z:0*
T0*
_output_shapes	
:?(2(
&batch_normalization_78/batchnorm/Rsqrt?
3batch_normalization_78/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_78_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?(*
dtype025
3batch_normalization_78/batchnorm/mul/ReadVariableOp?
$batch_normalization_78/batchnorm/mulMul*batch_normalization_78/batchnorm/Rsqrt:y:0;batch_normalization_78/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?(2&
$batch_normalization_78/batchnorm/mul?
&batch_normalization_78/batchnorm/mul_1Muldense_65/MatMul:product:0(batch_normalization_78/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????(2(
&batch_normalization_78/batchnorm/mul_1?
1batch_normalization_78/batchnorm/ReadVariableOp_1ReadVariableOp:batch_normalization_78_batchnorm_readvariableop_1_resource*
_output_shapes	
:?(*
dtype023
1batch_normalization_78/batchnorm/ReadVariableOp_1?
&batch_normalization_78/batchnorm/mul_2Mul9batch_normalization_78/batchnorm/ReadVariableOp_1:value:0(batch_normalization_78/batchnorm/mul:z:0*
T0*
_output_shapes	
:?(2(
&batch_normalization_78/batchnorm/mul_2?
1batch_normalization_78/batchnorm/ReadVariableOp_2ReadVariableOp:batch_normalization_78_batchnorm_readvariableop_2_resource*
_output_shapes	
:?(*
dtype023
1batch_normalization_78/batchnorm/ReadVariableOp_2?
$batch_normalization_78/batchnorm/subSub9batch_normalization_78/batchnorm/ReadVariableOp_2:value:0*batch_normalization_78/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?(2&
$batch_normalization_78/batchnorm/sub?
&batch_normalization_78/batchnorm/add_1AddV2*batch_normalization_78/batchnorm/mul_1:z:0(batch_normalization_78/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????(2(
&batch_normalization_78/batchnorm/add_1?
leaky_re_lu_78/LeakyRelu	LeakyRelu*batch_normalization_78/batchnorm/add_1:z:0*(
_output_shapes
:??????????(*
alpha%???>2
leaky_re_lu_78/LeakyReluz
reshape_12/ShapeShape&leaky_re_lu_78/LeakyRelu:activations:0*
T0*
_output_shapes
:2
reshape_12/Shape?
reshape_12/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_12/strided_slice/stack?
 reshape_12/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_12/strided_slice/stack_1?
 reshape_12/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_12/strided_slice/stack_2?
reshape_12/strided_sliceStridedSlicereshape_12/Shape:output:0'reshape_12/strided_slice/stack:output:0)reshape_12/strided_slice/stack_1:output:0)reshape_12/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_12/strided_slicez
reshape_12/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_12/Reshape/shape/1z
reshape_12/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_12/Reshape/shape/2{
reshape_12/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :?2
reshape_12/Reshape/shape/3?
reshape_12/Reshape/shapePack!reshape_12/strided_slice:output:0#reshape_12/Reshape/shape/1:output:0#reshape_12/Reshape/shape/2:output:0#reshape_12/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
reshape_12/Reshape/shape?
reshape_12/ReshapeReshape&leaky_re_lu_78/LeakyRelu:activations:0!reshape_12/Reshape/shape:output:0*
T0*0
_output_shapes
:??????????2
reshape_12/Reshape?
conv2d_transpose_33/ShapeShapereshape_12/Reshape:output:0*
T0*
_output_shapes
:2
conv2d_transpose_33/Shape?
'conv2d_transpose_33/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_33/strided_slice/stack?
)conv2d_transpose_33/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_33/strided_slice/stack_1?
)conv2d_transpose_33/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_33/strided_slice/stack_2?
!conv2d_transpose_33/strided_sliceStridedSlice"conv2d_transpose_33/Shape:output:00conv2d_transpose_33/strided_slice/stack:output:02conv2d_transpose_33/strided_slice/stack_1:output:02conv2d_transpose_33/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_33/strided_slice|
conv2d_transpose_33/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_33/stack/1|
conv2d_transpose_33/stack/2Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_33/stack/2}
conv2d_transpose_33/stack/3Const*
_output_shapes
: *
dtype0*
value
B :?2
conv2d_transpose_33/stack/3?
conv2d_transpose_33/stackPack*conv2d_transpose_33/strided_slice:output:0$conv2d_transpose_33/stack/1:output:0$conv2d_transpose_33/stack/2:output:0$conv2d_transpose_33/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_33/stack?
)conv2d_transpose_33/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_33/strided_slice_1/stack?
+conv2d_transpose_33/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_33/strided_slice_1/stack_1?
+conv2d_transpose_33/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_33/strided_slice_1/stack_2?
#conv2d_transpose_33/strided_slice_1StridedSlice"conv2d_transpose_33/stack:output:02conv2d_transpose_33/strided_slice_1/stack:output:04conv2d_transpose_33/strided_slice_1/stack_1:output:04conv2d_transpose_33/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_33/strided_slice_1?
3conv2d_transpose_33/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_33_conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype025
3conv2d_transpose_33/conv2d_transpose/ReadVariableOp?
$conv2d_transpose_33/conv2d_transposeConv2DBackpropInput"conv2d_transpose_33/stack:output:0;conv2d_transpose_33/conv2d_transpose/ReadVariableOp:value:0reshape_12/Reshape:output:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2&
$conv2d_transpose_33/conv2d_transpose?
%batch_normalization_79/ReadVariableOpReadVariableOp.batch_normalization_79_readvariableop_resource*
_output_shapes	
:?*
dtype02'
%batch_normalization_79/ReadVariableOp?
'batch_normalization_79/ReadVariableOp_1ReadVariableOp0batch_normalization_79_readvariableop_1_resource*
_output_shapes	
:?*
dtype02)
'batch_normalization_79/ReadVariableOp_1?
6batch_normalization_79/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_79_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype028
6batch_normalization_79/FusedBatchNormV3/ReadVariableOp?
8batch_normalization_79/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_79_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02:
8batch_normalization_79/FusedBatchNormV3/ReadVariableOp_1?
'batch_normalization_79/FusedBatchNormV3FusedBatchNormV3-conv2d_transpose_33/conv2d_transpose:output:0-batch_normalization_79/ReadVariableOp:value:0/batch_normalization_79/ReadVariableOp_1:value:0>batch_normalization_79/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_79/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2)
'batch_normalization_79/FusedBatchNormV3?
leaky_re_lu_79/LeakyRelu	LeakyRelu+batch_normalization_79/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
alpha%???>2
leaky_re_lu_79/LeakyRelu?
conv2d_transpose_34/ShapeShape&leaky_re_lu_79/LeakyRelu:activations:0*
T0*
_output_shapes
:2
conv2d_transpose_34/Shape?
'conv2d_transpose_34/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_34/strided_slice/stack?
)conv2d_transpose_34/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_34/strided_slice/stack_1?
)conv2d_transpose_34/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_34/strided_slice/stack_2?
!conv2d_transpose_34/strided_sliceStridedSlice"conv2d_transpose_34/Shape:output:00conv2d_transpose_34/strided_slice/stack:output:02conv2d_transpose_34/strided_slice/stack_1:output:02conv2d_transpose_34/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_34/strided_slice|
conv2d_transpose_34/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_34/stack/1|
conv2d_transpose_34/stack/2Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_34/stack/2|
conv2d_transpose_34/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2
conv2d_transpose_34/stack/3?
conv2d_transpose_34/stackPack*conv2d_transpose_34/strided_slice:output:0$conv2d_transpose_34/stack/1:output:0$conv2d_transpose_34/stack/2:output:0$conv2d_transpose_34/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_34/stack?
)conv2d_transpose_34/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_34/strided_slice_1/stack?
+conv2d_transpose_34/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_34/strided_slice_1/stack_1?
+conv2d_transpose_34/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_34/strided_slice_1/stack_2?
#conv2d_transpose_34/strided_slice_1StridedSlice"conv2d_transpose_34/stack:output:02conv2d_transpose_34/strided_slice_1/stack:output:04conv2d_transpose_34/strided_slice_1/stack_1:output:04conv2d_transpose_34/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_34/strided_slice_1?
3conv2d_transpose_34/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_34_conv2d_transpose_readvariableop_resource*'
_output_shapes
:@?*
dtype025
3conv2d_transpose_34/conv2d_transpose/ReadVariableOp?
$conv2d_transpose_34/conv2d_transposeConv2DBackpropInput"conv2d_transpose_34/stack:output:0;conv2d_transpose_34/conv2d_transpose/ReadVariableOp:value:0&leaky_re_lu_79/LeakyRelu:activations:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2&
$conv2d_transpose_34/conv2d_transpose?
%batch_normalization_80/ReadVariableOpReadVariableOp.batch_normalization_80_readvariableop_resource*
_output_shapes
:@*
dtype02'
%batch_normalization_80/ReadVariableOp?
'batch_normalization_80/ReadVariableOp_1ReadVariableOp0batch_normalization_80_readvariableop_1_resource*
_output_shapes
:@*
dtype02)
'batch_normalization_80/ReadVariableOp_1?
6batch_normalization_80/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_80_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype028
6batch_normalization_80/FusedBatchNormV3/ReadVariableOp?
8batch_normalization_80/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_80_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02:
8batch_normalization_80/FusedBatchNormV3/ReadVariableOp_1?
'batch_normalization_80/FusedBatchNormV3FusedBatchNormV3-conv2d_transpose_34/conv2d_transpose:output:0-batch_normalization_80/ReadVariableOp:value:0/batch_normalization_80/ReadVariableOp_1:value:0>batch_normalization_80/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_80/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2)
'batch_normalization_80/FusedBatchNormV3?
leaky_re_lu_80/LeakyRelu	LeakyRelu+batch_normalization_80/FusedBatchNormV3:y:0*/
_output_shapes
:?????????@*
alpha%???>2
leaky_re_lu_80/LeakyRelu?
conv2d_transpose_35/ShapeShape&leaky_re_lu_80/LeakyRelu:activations:0*
T0*
_output_shapes
:2
conv2d_transpose_35/Shape?
'conv2d_transpose_35/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_35/strided_slice/stack?
)conv2d_transpose_35/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_35/strided_slice/stack_1?
)conv2d_transpose_35/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_35/strided_slice/stack_2?
!conv2d_transpose_35/strided_sliceStridedSlice"conv2d_transpose_35/Shape:output:00conv2d_transpose_35/strided_slice/stack:output:02conv2d_transpose_35/strided_slice/stack_1:output:02conv2d_transpose_35/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_35/strided_slice|
conv2d_transpose_35/stack/1Const*
_output_shapes
: *
dtype0*
value	B :
2
conv2d_transpose_35/stack/1|
conv2d_transpose_35/stack/2Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_35/stack/2|
conv2d_transpose_35/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_35/stack/3?
conv2d_transpose_35/stackPack*conv2d_transpose_35/strided_slice:output:0$conv2d_transpose_35/stack/1:output:0$conv2d_transpose_35/stack/2:output:0$conv2d_transpose_35/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_35/stack?
)conv2d_transpose_35/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_35/strided_slice_1/stack?
+conv2d_transpose_35/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_35/strided_slice_1/stack_1?
+conv2d_transpose_35/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_35/strided_slice_1/stack_2?
#conv2d_transpose_35/strided_slice_1StridedSlice"conv2d_transpose_35/stack:output:02conv2d_transpose_35/strided_slice_1/stack:output:04conv2d_transpose_35/strided_slice_1/stack_1:output:04conv2d_transpose_35/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_35/strided_slice_1?
3conv2d_transpose_35/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_35_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@*
dtype025
3conv2d_transpose_35/conv2d_transpose/ReadVariableOp?
$conv2d_transpose_35/conv2d_transposeConv2DBackpropInput"conv2d_transpose_35/stack:output:0;conv2d_transpose_35/conv2d_transpose/ReadVariableOp:value:0&leaky_re_lu_80/LeakyRelu:activations:0*
T0*/
_output_shapes
:?????????
*
paddingSAME*
strides
2&
$conv2d_transpose_35/conv2d_transpose?
conv2d_transpose_35/TanhTanh-conv2d_transpose_35/conv2d_transpose:output:0*
T0*/
_output_shapes
:?????????
2
conv2d_transpose_35/Tanh?
IdentityIdentityconv2d_transpose_35/Tanh:y:00^batch_normalization_78/batchnorm/ReadVariableOp2^batch_normalization_78/batchnorm/ReadVariableOp_12^batch_normalization_78/batchnorm/ReadVariableOp_24^batch_normalization_78/batchnorm/mul/ReadVariableOp7^batch_normalization_79/FusedBatchNormV3/ReadVariableOp9^batch_normalization_79/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_79/ReadVariableOp(^batch_normalization_79/ReadVariableOp_17^batch_normalization_80/FusedBatchNormV3/ReadVariableOp9^batch_normalization_80/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_80/ReadVariableOp(^batch_normalization_80/ReadVariableOp_14^conv2d_transpose_33/conv2d_transpose/ReadVariableOp4^conv2d_transpose_34/conv2d_transpose/ReadVariableOp4^conv2d_transpose_35/conv2d_transpose/ReadVariableOp^dense_65/MatMul/ReadVariableOp*
T0*/
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????2: : : : : : : : : : : : : : : : 2b
/batch_normalization_78/batchnorm/ReadVariableOp/batch_normalization_78/batchnorm/ReadVariableOp2f
1batch_normalization_78/batchnorm/ReadVariableOp_11batch_normalization_78/batchnorm/ReadVariableOp_12f
1batch_normalization_78/batchnorm/ReadVariableOp_21batch_normalization_78/batchnorm/ReadVariableOp_22j
3batch_normalization_78/batchnorm/mul/ReadVariableOp3batch_normalization_78/batchnorm/mul/ReadVariableOp2p
6batch_normalization_79/FusedBatchNormV3/ReadVariableOp6batch_normalization_79/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_79/FusedBatchNormV3/ReadVariableOp_18batch_normalization_79/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_79/ReadVariableOp%batch_normalization_79/ReadVariableOp2R
'batch_normalization_79/ReadVariableOp_1'batch_normalization_79/ReadVariableOp_12p
6batch_normalization_80/FusedBatchNormV3/ReadVariableOp6batch_normalization_80/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_80/FusedBatchNormV3/ReadVariableOp_18batch_normalization_80/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_80/ReadVariableOp%batch_normalization_80/ReadVariableOp2R
'batch_normalization_80/ReadVariableOp_1'batch_normalization_80/ReadVariableOp_12j
3conv2d_transpose_33/conv2d_transpose/ReadVariableOp3conv2d_transpose_33/conv2d_transpose/ReadVariableOp2j
3conv2d_transpose_34/conv2d_transpose/ReadVariableOp3conv2d_transpose_34/conv2d_transpose/ReadVariableOp2j
3conv2d_transpose_35/conv2d_transpose/ReadVariableOp3conv2d_transpose_35/conv2d_transpose/ReadVariableOp2@
dense_65/MatMul/ReadVariableOpdense_65/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?*
?
S__inference_batch_normalization_78_layer_call_and_return_conditional_losses_8524788

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
?
c
G__inference_reshape_12_layer_call_and_return_conditional_losses_8524838

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
?
?
)__inference_Decoder_layer_call_fn_8524683

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
GPU2*0J 8? *M
fHRF
D__inference_Decoder_layer_call_and_return_conditional_losses_85240482
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
?
?
8__inference_batch_normalization_79_layer_call_fn_8524905

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
S__inference_batch_normalization_79_layer_call_and_return_conditional_losses_85236592
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
?
g
K__inference_leaky_re_lu_79_layer_call_and_return_conditional_losses_8524023

inputs
identity
	LeakyRelu	LeakyReluinputs*B
_output_shapes0
.:,????????????????????????????*
alpha%???>2
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
?
?
%__inference_signature_wrapper_8524406
input_44
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
StatefulPartitionedCallStatefulPartitionedCallinput_44unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
"__inference__wrapped_model_85233922
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
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:?????????2
"
_user_specified_name
input_44
?>
?	
D__inference_Decoder_layer_call_and_return_conditional_losses_8524320
input_44#
dense_65_8524276:	2?(-
batch_normalization_78_8524279:	?(-
batch_normalization_78_8524281:	?(-
batch_normalization_78_8524283:	?(-
batch_normalization_78_8524285:	?(7
conv2d_transpose_33_8524290:??-
batch_normalization_79_8524293:	?-
batch_normalization_79_8524295:	?-
batch_normalization_79_8524297:	?-
batch_normalization_79_8524299:	?6
conv2d_transpose_34_8524303:@?,
batch_normalization_80_8524306:@,
batch_normalization_80_8524308:@,
batch_normalization_80_8524310:@,
batch_normalization_80_8524312:@5
conv2d_transpose_35_8524316:@
identity??.batch_normalization_78/StatefulPartitionedCall?.batch_normalization_79/StatefulPartitionedCall?.batch_normalization_80/StatefulPartitionedCall?+conv2d_transpose_33/StatefulPartitionedCall?+conv2d_transpose_34/StatefulPartitionedCall?+conv2d_transpose_35/StatefulPartitionedCall? dense_65/StatefulPartitionedCall?
 dense_65/StatefulPartitionedCallStatefulPartitionedCallinput_44dense_65_8524276*
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
E__inference_dense_65_layer_call_and_return_conditional_losses_85239702"
 dense_65/StatefulPartitionedCall?
.batch_normalization_78/StatefulPartitionedCallStatefulPartitionedCall)dense_65/StatefulPartitionedCall:output:0batch_normalization_78_8524279batch_normalization_78_8524281batch_normalization_78_8524283batch_normalization_78_8524285*
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
S__inference_batch_normalization_78_layer_call_and_return_conditional_losses_852341620
.batch_normalization_78/StatefulPartitionedCall?
leaky_re_lu_78/PartitionedCallPartitionedCall7batch_normalization_78/StatefulPartitionedCall:output:0*
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
K__inference_leaky_re_lu_78_layer_call_and_return_conditional_losses_85239882 
leaky_re_lu_78/PartitionedCall?
reshape_12/PartitionedCallPartitionedCall'leaky_re_lu_78/PartitionedCall:output:0*
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
GPU2*0J 8? *P
fKRI
G__inference_reshape_12_layer_call_and_return_conditional_losses_85240042
reshape_12/PartitionedCall?
+conv2d_transpose_33/StatefulPartitionedCallStatefulPartitionedCall#reshape_12/PartitionedCall:output:0conv2d_transpose_33_8524290*
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
P__inference_conv2d_transpose_33_layer_call_and_return_conditional_losses_85235852-
+conv2d_transpose_33/StatefulPartitionedCall?
.batch_normalization_79/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_33/StatefulPartitionedCall:output:0batch_normalization_79_8524293batch_normalization_79_8524295batch_normalization_79_8524297batch_normalization_79_8524299*
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
S__inference_batch_normalization_79_layer_call_and_return_conditional_losses_852361520
.batch_normalization_79/StatefulPartitionedCall?
leaky_re_lu_79/PartitionedCallPartitionedCall7batch_normalization_79/StatefulPartitionedCall:output:0*
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
K__inference_leaky_re_lu_79_layer_call_and_return_conditional_losses_85240232 
leaky_re_lu_79/PartitionedCall?
+conv2d_transpose_34/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_79/PartitionedCall:output:0conv2d_transpose_34_8524303*
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
P__inference_conv2d_transpose_34_layer_call_and_return_conditional_losses_85237662-
+conv2d_transpose_34/StatefulPartitionedCall?
.batch_normalization_80/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_34/StatefulPartitionedCall:output:0batch_normalization_80_8524306batch_normalization_80_8524308batch_normalization_80_8524310batch_normalization_80_8524312*
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
S__inference_batch_normalization_80_layer_call_and_return_conditional_losses_852379620
.batch_normalization_80/StatefulPartitionedCall?
leaky_re_lu_80/PartitionedCallPartitionedCall7batch_normalization_80/StatefulPartitionedCall:output:0*
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
K__inference_leaky_re_lu_80_layer_call_and_return_conditional_losses_85240422 
leaky_re_lu_80/PartitionedCall?
+conv2d_transpose_35/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_80/PartitionedCall:output:0conv2d_transpose_35_8524316*
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
P__inference_conv2d_transpose_35_layer_call_and_return_conditional_losses_85239482-
+conv2d_transpose_35/StatefulPartitionedCall?
IdentityIdentity4conv2d_transpose_35/StatefulPartitionedCall:output:0/^batch_normalization_78/StatefulPartitionedCall/^batch_normalization_79/StatefulPartitionedCall/^batch_normalization_80/StatefulPartitionedCall,^conv2d_transpose_33/StatefulPartitionedCall,^conv2d_transpose_34/StatefulPartitionedCall,^conv2d_transpose_35/StatefulPartitionedCall!^dense_65/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????2: : : : : : : : : : : : : : : : 2`
.batch_normalization_78/StatefulPartitionedCall.batch_normalization_78/StatefulPartitionedCall2`
.batch_normalization_79/StatefulPartitionedCall.batch_normalization_79/StatefulPartitionedCall2`
.batch_normalization_80/StatefulPartitionedCall.batch_normalization_80/StatefulPartitionedCall2Z
+conv2d_transpose_33/StatefulPartitionedCall+conv2d_transpose_33/StatefulPartitionedCall2Z
+conv2d_transpose_34/StatefulPartitionedCall+conv2d_transpose_34/StatefulPartitionedCall2Z
+conv2d_transpose_35/StatefulPartitionedCall+conv2d_transpose_35/StatefulPartitionedCall2D
 dense_65/StatefulPartitionedCall dense_65/StatefulPartitionedCall:Q M
'
_output_shapes
:?????????2
"
_user_specified_name
input_44
?
g
K__inference_leaky_re_lu_78_layer_call_and_return_conditional_losses_8523988

inputs
identitye
	LeakyRelu	LeakyReluinputs*(
_output_shapes
:??????????(*
alpha%???>2
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
?
g
K__inference_leaky_re_lu_79_layer_call_and_return_conditional_losses_8524910

inputs
identity
	LeakyRelu	LeakyReluinputs*B
_output_shapes0
.:,????????????????????????????*
alpha%???>2
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
?>
?	
D__inference_Decoder_layer_call_and_return_conditional_losses_8524367
input_44#
dense_65_8524323:	2?(-
batch_normalization_78_8524326:	?(-
batch_normalization_78_8524328:	?(-
batch_normalization_78_8524330:	?(-
batch_normalization_78_8524332:	?(7
conv2d_transpose_33_8524337:??-
batch_normalization_79_8524340:	?-
batch_normalization_79_8524342:	?-
batch_normalization_79_8524344:	?-
batch_normalization_79_8524346:	?6
conv2d_transpose_34_8524350:@?,
batch_normalization_80_8524353:@,
batch_normalization_80_8524355:@,
batch_normalization_80_8524357:@,
batch_normalization_80_8524359:@5
conv2d_transpose_35_8524363:@
identity??.batch_normalization_78/StatefulPartitionedCall?.batch_normalization_79/StatefulPartitionedCall?.batch_normalization_80/StatefulPartitionedCall?+conv2d_transpose_33/StatefulPartitionedCall?+conv2d_transpose_34/StatefulPartitionedCall?+conv2d_transpose_35/StatefulPartitionedCall? dense_65/StatefulPartitionedCall?
 dense_65/StatefulPartitionedCallStatefulPartitionedCallinput_44dense_65_8524323*
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
E__inference_dense_65_layer_call_and_return_conditional_losses_85239702"
 dense_65/StatefulPartitionedCall?
.batch_normalization_78/StatefulPartitionedCallStatefulPartitionedCall)dense_65/StatefulPartitionedCall:output:0batch_normalization_78_8524326batch_normalization_78_8524328batch_normalization_78_8524330batch_normalization_78_8524332*
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
S__inference_batch_normalization_78_layer_call_and_return_conditional_losses_852347620
.batch_normalization_78/StatefulPartitionedCall?
leaky_re_lu_78/PartitionedCallPartitionedCall7batch_normalization_78/StatefulPartitionedCall:output:0*
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
K__inference_leaky_re_lu_78_layer_call_and_return_conditional_losses_85239882 
leaky_re_lu_78/PartitionedCall?
reshape_12/PartitionedCallPartitionedCall'leaky_re_lu_78/PartitionedCall:output:0*
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
GPU2*0J 8? *P
fKRI
G__inference_reshape_12_layer_call_and_return_conditional_losses_85240042
reshape_12/PartitionedCall?
+conv2d_transpose_33/StatefulPartitionedCallStatefulPartitionedCall#reshape_12/PartitionedCall:output:0conv2d_transpose_33_8524337*
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
P__inference_conv2d_transpose_33_layer_call_and_return_conditional_losses_85235852-
+conv2d_transpose_33/StatefulPartitionedCall?
.batch_normalization_79/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_33/StatefulPartitionedCall:output:0batch_normalization_79_8524340batch_normalization_79_8524342batch_normalization_79_8524344batch_normalization_79_8524346*
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
S__inference_batch_normalization_79_layer_call_and_return_conditional_losses_852365920
.batch_normalization_79/StatefulPartitionedCall?
leaky_re_lu_79/PartitionedCallPartitionedCall7batch_normalization_79/StatefulPartitionedCall:output:0*
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
K__inference_leaky_re_lu_79_layer_call_and_return_conditional_losses_85240232 
leaky_re_lu_79/PartitionedCall?
+conv2d_transpose_34/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_79/PartitionedCall:output:0conv2d_transpose_34_8524350*
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
P__inference_conv2d_transpose_34_layer_call_and_return_conditional_losses_85237662-
+conv2d_transpose_34/StatefulPartitionedCall?
.batch_normalization_80/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_34/StatefulPartitionedCall:output:0batch_normalization_80_8524353batch_normalization_80_8524355batch_normalization_80_8524357batch_normalization_80_8524359*
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
S__inference_batch_normalization_80_layer_call_and_return_conditional_losses_852384020
.batch_normalization_80/StatefulPartitionedCall?
leaky_re_lu_80/PartitionedCallPartitionedCall7batch_normalization_80/StatefulPartitionedCall:output:0*
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
K__inference_leaky_re_lu_80_layer_call_and_return_conditional_losses_85240422 
leaky_re_lu_80/PartitionedCall?
+conv2d_transpose_35/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_80/PartitionedCall:output:0conv2d_transpose_35_8524363*
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
P__inference_conv2d_transpose_35_layer_call_and_return_conditional_losses_85239482-
+conv2d_transpose_35/StatefulPartitionedCall?
IdentityIdentity4conv2d_transpose_35/StatefulPartitionedCall:output:0/^batch_normalization_78/StatefulPartitionedCall/^batch_normalization_79/StatefulPartitionedCall/^batch_normalization_80/StatefulPartitionedCall,^conv2d_transpose_33/StatefulPartitionedCall,^conv2d_transpose_34/StatefulPartitionedCall,^conv2d_transpose_35/StatefulPartitionedCall!^dense_65/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????2: : : : : : : : : : : : : : : : 2`
.batch_normalization_78/StatefulPartitionedCall.batch_normalization_78/StatefulPartitionedCall2`
.batch_normalization_79/StatefulPartitionedCall.batch_normalization_79/StatefulPartitionedCall2`
.batch_normalization_80/StatefulPartitionedCall.batch_normalization_80/StatefulPartitionedCall2Z
+conv2d_transpose_33/StatefulPartitionedCall+conv2d_transpose_33/StatefulPartitionedCall2Z
+conv2d_transpose_34/StatefulPartitionedCall+conv2d_transpose_34/StatefulPartitionedCall2Z
+conv2d_transpose_35/StatefulPartitionedCall+conv2d_transpose_35/StatefulPartitionedCall2D
 dense_65/StatefulPartitionedCall dense_65/StatefulPartitionedCall:Q M
'
_output_shapes
:?????????2
"
_user_specified_name
input_44
?
?
S__inference_batch_normalization_79_layer_call_and_return_conditional_losses_8523615

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
?
?
5__inference_conv2d_transpose_35_layer_call_fn_8523956

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
P__inference_conv2d_transpose_35_layer_call_and_return_conditional_losses_85239482
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
?
g
K__inference_leaky_re_lu_80_layer_call_and_return_conditional_losses_8524042

inputs
identity~
	LeakyRelu	LeakyReluinputs*A
_output_shapes/
-:+???????????????????????????@*
alpha%???>2
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
?
g
K__inference_leaky_re_lu_80_layer_call_and_return_conditional_losses_8524982

inputs
identity~
	LeakyRelu	LeakyReluinputs*A
_output_shapes/
-:+???????????????????????????@*
alpha%???>2
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
?
?
S__inference_batch_normalization_80_layer_call_and_return_conditional_losses_8523840

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
?
?
E__inference_dense_65_layer_call_and_return_conditional_losses_8523970

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
?,
?
P__inference_conv2d_transpose_35_layer_call_and_return_conditional_losses_8523948

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
?
?
S__inference_batch_normalization_80_layer_call_and_return_conditional_losses_8524951

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
)__inference_Decoder_layer_call_fn_8524720

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
GPU2*0J 8? *M
fHRF
D__inference_Decoder_layer_call_and_return_conditional_losses_85242012
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
?*
?
S__inference_batch_normalization_78_layer_call_and_return_conditional_losses_8523476

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
?>
?	
D__inference_Decoder_layer_call_and_return_conditional_losses_8524048

inputs#
dense_65_8523971:	2?(-
batch_normalization_78_8523974:	?(-
batch_normalization_78_8523976:	?(-
batch_normalization_78_8523978:	?(-
batch_normalization_78_8523980:	?(7
conv2d_transpose_33_8524006:??-
batch_normalization_79_8524009:	?-
batch_normalization_79_8524011:	?-
batch_normalization_79_8524013:	?-
batch_normalization_79_8524015:	?6
conv2d_transpose_34_8524025:@?,
batch_normalization_80_8524028:@,
batch_normalization_80_8524030:@,
batch_normalization_80_8524032:@,
batch_normalization_80_8524034:@5
conv2d_transpose_35_8524044:@
identity??.batch_normalization_78/StatefulPartitionedCall?.batch_normalization_79/StatefulPartitionedCall?.batch_normalization_80/StatefulPartitionedCall?+conv2d_transpose_33/StatefulPartitionedCall?+conv2d_transpose_34/StatefulPartitionedCall?+conv2d_transpose_35/StatefulPartitionedCall? dense_65/StatefulPartitionedCall?
 dense_65/StatefulPartitionedCallStatefulPartitionedCallinputsdense_65_8523971*
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
E__inference_dense_65_layer_call_and_return_conditional_losses_85239702"
 dense_65/StatefulPartitionedCall?
.batch_normalization_78/StatefulPartitionedCallStatefulPartitionedCall)dense_65/StatefulPartitionedCall:output:0batch_normalization_78_8523974batch_normalization_78_8523976batch_normalization_78_8523978batch_normalization_78_8523980*
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
S__inference_batch_normalization_78_layer_call_and_return_conditional_losses_852341620
.batch_normalization_78/StatefulPartitionedCall?
leaky_re_lu_78/PartitionedCallPartitionedCall7batch_normalization_78/StatefulPartitionedCall:output:0*
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
K__inference_leaky_re_lu_78_layer_call_and_return_conditional_losses_85239882 
leaky_re_lu_78/PartitionedCall?
reshape_12/PartitionedCallPartitionedCall'leaky_re_lu_78/PartitionedCall:output:0*
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
GPU2*0J 8? *P
fKRI
G__inference_reshape_12_layer_call_and_return_conditional_losses_85240042
reshape_12/PartitionedCall?
+conv2d_transpose_33/StatefulPartitionedCallStatefulPartitionedCall#reshape_12/PartitionedCall:output:0conv2d_transpose_33_8524006*
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
P__inference_conv2d_transpose_33_layer_call_and_return_conditional_losses_85235852-
+conv2d_transpose_33/StatefulPartitionedCall?
.batch_normalization_79/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_33/StatefulPartitionedCall:output:0batch_normalization_79_8524009batch_normalization_79_8524011batch_normalization_79_8524013batch_normalization_79_8524015*
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
S__inference_batch_normalization_79_layer_call_and_return_conditional_losses_852361520
.batch_normalization_79/StatefulPartitionedCall?
leaky_re_lu_79/PartitionedCallPartitionedCall7batch_normalization_79/StatefulPartitionedCall:output:0*
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
K__inference_leaky_re_lu_79_layer_call_and_return_conditional_losses_85240232 
leaky_re_lu_79/PartitionedCall?
+conv2d_transpose_34/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_79/PartitionedCall:output:0conv2d_transpose_34_8524025*
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
P__inference_conv2d_transpose_34_layer_call_and_return_conditional_losses_85237662-
+conv2d_transpose_34/StatefulPartitionedCall?
.batch_normalization_80/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_34/StatefulPartitionedCall:output:0batch_normalization_80_8524028batch_normalization_80_8524030batch_normalization_80_8524032batch_normalization_80_8524034*
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
S__inference_batch_normalization_80_layer_call_and_return_conditional_losses_852379620
.batch_normalization_80/StatefulPartitionedCall?
leaky_re_lu_80/PartitionedCallPartitionedCall7batch_normalization_80/StatefulPartitionedCall:output:0*
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
K__inference_leaky_re_lu_80_layer_call_and_return_conditional_losses_85240422 
leaky_re_lu_80/PartitionedCall?
+conv2d_transpose_35/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_80/PartitionedCall:output:0conv2d_transpose_35_8524044*
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
P__inference_conv2d_transpose_35_layer_call_and_return_conditional_losses_85239482-
+conv2d_transpose_35/StatefulPartitionedCall?
IdentityIdentity4conv2d_transpose_35/StatefulPartitionedCall:output:0/^batch_normalization_78/StatefulPartitionedCall/^batch_normalization_79/StatefulPartitionedCall/^batch_normalization_80/StatefulPartitionedCall,^conv2d_transpose_33/StatefulPartitionedCall,^conv2d_transpose_34/StatefulPartitionedCall,^conv2d_transpose_35/StatefulPartitionedCall!^dense_65/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????2: : : : : : : : : : : : : : : : 2`
.batch_normalization_78/StatefulPartitionedCall.batch_normalization_78/StatefulPartitionedCall2`
.batch_normalization_79/StatefulPartitionedCall.batch_normalization_79/StatefulPartitionedCall2`
.batch_normalization_80/StatefulPartitionedCall.batch_normalization_80/StatefulPartitionedCall2Z
+conv2d_transpose_33/StatefulPartitionedCall+conv2d_transpose_33/StatefulPartitionedCall2Z
+conv2d_transpose_34/StatefulPartitionedCall+conv2d_transpose_34/StatefulPartitionedCall2Z
+conv2d_transpose_35/StatefulPartitionedCall+conv2d_transpose_35/StatefulPartitionedCall2D
 dense_65/StatefulPartitionedCall dense_65/StatefulPartitionedCall:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
H
,__inference_reshape_12_layer_call_fn_8524843

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
GPU2*0J 8? *P
fKRI
G__inference_reshape_12_layer_call_and_return_conditional_losses_85240042
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
?
L
0__inference_leaky_re_lu_78_layer_call_fn_8524824

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
K__inference_leaky_re_lu_78_layer_call_and_return_conditional_losses_85239882
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
?
?
8__inference_batch_normalization_80_layer_call_fn_8524964

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
S__inference_batch_normalization_80_layer_call_and_return_conditional_losses_85237962
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
L
0__inference_leaky_re_lu_80_layer_call_fn_8524987

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
K__inference_leaky_re_lu_80_layer_call_and_return_conditional_losses_85240422
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
?
?
S__inference_batch_normalization_80_layer_call_and_return_conditional_losses_8523796

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
?J
?
#__inference__traced_restore_8525116
file_prefix3
 assignvariableop_dense_65_kernel:	2?(>
/assignvariableop_1_batch_normalization_78_gamma:	?(=
.assignvariableop_2_batch_normalization_78_beta:	?(D
5assignvariableop_3_batch_normalization_78_moving_mean:	?(H
9assignvariableop_4_batch_normalization_78_moving_variance:	?(I
-assignvariableop_5_conv2d_transpose_33_kernel:??>
/assignvariableop_6_batch_normalization_79_gamma:	?=
.assignvariableop_7_batch_normalization_79_beta:	?D
5assignvariableop_8_batch_normalization_79_moving_mean:	?H
9assignvariableop_9_batch_normalization_79_moving_variance:	?I
.assignvariableop_10_conv2d_transpose_34_kernel:@?>
0assignvariableop_11_batch_normalization_80_gamma:@=
/assignvariableop_12_batch_normalization_80_beta:@D
6assignvariableop_13_batch_normalization_80_moving_mean:@H
:assignvariableop_14_batch_normalization_80_moving_variance:@H
.assignvariableop_15_conv2d_transpose_35_kernel:@
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
AssignVariableOpAssignVariableOp assignvariableop_dense_65_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp/assignvariableop_1_batch_normalization_78_gammaIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp.assignvariableop_2_batch_normalization_78_betaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp5assignvariableop_3_batch_normalization_78_moving_meanIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp9assignvariableop_4_batch_normalization_78_moving_varianceIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp-assignvariableop_5_conv2d_transpose_33_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp/assignvariableop_6_batch_normalization_79_gammaIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp.assignvariableop_7_batch_normalization_79_betaIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp5assignvariableop_8_batch_normalization_79_moving_meanIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp9assignvariableop_9_batch_normalization_79_moving_varianceIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp.assignvariableop_10_conv2d_transpose_34_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp0assignvariableop_11_batch_normalization_80_gammaIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_batch_normalization_80_betaIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp6assignvariableop_13_batch_normalization_80_moving_meanIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp:assignvariableop_14_batch_normalization_80_moving_varianceIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp.assignvariableop_15_conv2d_transpose_35_kernelIdentity_15:output:0"/device:CPU:0*
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
K__inference_leaky_re_lu_78_layer_call_and_return_conditional_losses_8524819

inputs
identitye
	LeakyRelu	LeakyReluinputs*(
_output_shapes
:??????????(*
alpha%???>2
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
?
?
S__inference_batch_normalization_79_layer_call_and_return_conditional_losses_8524861

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
?
?
8__inference_batch_normalization_78_layer_call_fn_8524801

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
S__inference_batch_normalization_78_layer_call_and_return_conditional_losses_85234162
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
)__inference_Decoder_layer_call_fn_8524083
input_44
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
StatefulPartitionedCallStatefulPartitionedCallinput_44unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
GPU2*0J 8? *M
fHRF
D__inference_Decoder_layer_call_and_return_conditional_losses_85240482
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
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:?????????2
"
_user_specified_name
input_44
?
?
5__inference_conv2d_transpose_34_layer_call_fn_8523774

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
P__inference_conv2d_transpose_34_layer_call_and_return_conditional_losses_85237662
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
?
?
8__inference_batch_normalization_78_layer_call_fn_8524814

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
S__inference_batch_normalization_78_layer_call_and_return_conditional_losses_85234762
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
?
?
S__inference_batch_normalization_78_layer_call_and_return_conditional_losses_8523416

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
?
?
8__inference_batch_normalization_79_layer_call_fn_8524892

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
S__inference_batch_normalization_79_layer_call_and_return_conditional_losses_85236152
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
?+
?
P__inference_conv2d_transpose_34_layer_call_and_return_conditional_losses_8523766

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
?
?
E__inference_dense_65_layer_call_and_return_conditional_losses_8524727

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
??
?
"__inference__wrapped_model_8523392
input_44B
/decoder_dense_65_matmul_readvariableop_resource:	2?(O
@decoder_batch_normalization_78_batchnorm_readvariableop_resource:	?(S
Ddecoder_batch_normalization_78_batchnorm_mul_readvariableop_resource:	?(Q
Bdecoder_batch_normalization_78_batchnorm_readvariableop_1_resource:	?(Q
Bdecoder_batch_normalization_78_batchnorm_readvariableop_2_resource:	?(`
Ddecoder_conv2d_transpose_33_conv2d_transpose_readvariableop_resource:??E
6decoder_batch_normalization_79_readvariableop_resource:	?G
8decoder_batch_normalization_79_readvariableop_1_resource:	?V
Gdecoder_batch_normalization_79_fusedbatchnormv3_readvariableop_resource:	?X
Idecoder_batch_normalization_79_fusedbatchnormv3_readvariableop_1_resource:	?_
Ddecoder_conv2d_transpose_34_conv2d_transpose_readvariableop_resource:@?D
6decoder_batch_normalization_80_readvariableop_resource:@F
8decoder_batch_normalization_80_readvariableop_1_resource:@U
Gdecoder_batch_normalization_80_fusedbatchnormv3_readvariableop_resource:@W
Idecoder_batch_normalization_80_fusedbatchnormv3_readvariableop_1_resource:@^
Ddecoder_conv2d_transpose_35_conv2d_transpose_readvariableop_resource:@
identity??7Decoder/batch_normalization_78/batchnorm/ReadVariableOp?9Decoder/batch_normalization_78/batchnorm/ReadVariableOp_1?9Decoder/batch_normalization_78/batchnorm/ReadVariableOp_2?;Decoder/batch_normalization_78/batchnorm/mul/ReadVariableOp?>Decoder/batch_normalization_79/FusedBatchNormV3/ReadVariableOp?@Decoder/batch_normalization_79/FusedBatchNormV3/ReadVariableOp_1?-Decoder/batch_normalization_79/ReadVariableOp?/Decoder/batch_normalization_79/ReadVariableOp_1?>Decoder/batch_normalization_80/FusedBatchNormV3/ReadVariableOp?@Decoder/batch_normalization_80/FusedBatchNormV3/ReadVariableOp_1?-Decoder/batch_normalization_80/ReadVariableOp?/Decoder/batch_normalization_80/ReadVariableOp_1?;Decoder/conv2d_transpose_33/conv2d_transpose/ReadVariableOp?;Decoder/conv2d_transpose_34/conv2d_transpose/ReadVariableOp?;Decoder/conv2d_transpose_35/conv2d_transpose/ReadVariableOp?&Decoder/dense_65/MatMul/ReadVariableOp?
&Decoder/dense_65/MatMul/ReadVariableOpReadVariableOp/decoder_dense_65_matmul_readvariableop_resource*
_output_shapes
:	2?(*
dtype02(
&Decoder/dense_65/MatMul/ReadVariableOp?
Decoder/dense_65/MatMulMatMulinput_44.Decoder/dense_65/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????(2
Decoder/dense_65/MatMul?
7Decoder/batch_normalization_78/batchnorm/ReadVariableOpReadVariableOp@decoder_batch_normalization_78_batchnorm_readvariableop_resource*
_output_shapes	
:?(*
dtype029
7Decoder/batch_normalization_78/batchnorm/ReadVariableOp?
.Decoder/batch_normalization_78/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:20
.Decoder/batch_normalization_78/batchnorm/add/y?
,Decoder/batch_normalization_78/batchnorm/addAddV2?Decoder/batch_normalization_78/batchnorm/ReadVariableOp:value:07Decoder/batch_normalization_78/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?(2.
,Decoder/batch_normalization_78/batchnorm/add?
.Decoder/batch_normalization_78/batchnorm/RsqrtRsqrt0Decoder/batch_normalization_78/batchnorm/add:z:0*
T0*
_output_shapes	
:?(20
.Decoder/batch_normalization_78/batchnorm/Rsqrt?
;Decoder/batch_normalization_78/batchnorm/mul/ReadVariableOpReadVariableOpDdecoder_batch_normalization_78_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?(*
dtype02=
;Decoder/batch_normalization_78/batchnorm/mul/ReadVariableOp?
,Decoder/batch_normalization_78/batchnorm/mulMul2Decoder/batch_normalization_78/batchnorm/Rsqrt:y:0CDecoder/batch_normalization_78/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?(2.
,Decoder/batch_normalization_78/batchnorm/mul?
.Decoder/batch_normalization_78/batchnorm/mul_1Mul!Decoder/dense_65/MatMul:product:00Decoder/batch_normalization_78/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????(20
.Decoder/batch_normalization_78/batchnorm/mul_1?
9Decoder/batch_normalization_78/batchnorm/ReadVariableOp_1ReadVariableOpBdecoder_batch_normalization_78_batchnorm_readvariableop_1_resource*
_output_shapes	
:?(*
dtype02;
9Decoder/batch_normalization_78/batchnorm/ReadVariableOp_1?
.Decoder/batch_normalization_78/batchnorm/mul_2MulADecoder/batch_normalization_78/batchnorm/ReadVariableOp_1:value:00Decoder/batch_normalization_78/batchnorm/mul:z:0*
T0*
_output_shapes	
:?(20
.Decoder/batch_normalization_78/batchnorm/mul_2?
9Decoder/batch_normalization_78/batchnorm/ReadVariableOp_2ReadVariableOpBdecoder_batch_normalization_78_batchnorm_readvariableop_2_resource*
_output_shapes	
:?(*
dtype02;
9Decoder/batch_normalization_78/batchnorm/ReadVariableOp_2?
,Decoder/batch_normalization_78/batchnorm/subSubADecoder/batch_normalization_78/batchnorm/ReadVariableOp_2:value:02Decoder/batch_normalization_78/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?(2.
,Decoder/batch_normalization_78/batchnorm/sub?
.Decoder/batch_normalization_78/batchnorm/add_1AddV22Decoder/batch_normalization_78/batchnorm/mul_1:z:00Decoder/batch_normalization_78/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????(20
.Decoder/batch_normalization_78/batchnorm/add_1?
 Decoder/leaky_re_lu_78/LeakyRelu	LeakyRelu2Decoder/batch_normalization_78/batchnorm/add_1:z:0*(
_output_shapes
:??????????(*
alpha%???>2"
 Decoder/leaky_re_lu_78/LeakyRelu?
Decoder/reshape_12/ShapeShape.Decoder/leaky_re_lu_78/LeakyRelu:activations:0*
T0*
_output_shapes
:2
Decoder/reshape_12/Shape?
&Decoder/reshape_12/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&Decoder/reshape_12/strided_slice/stack?
(Decoder/reshape_12/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(Decoder/reshape_12/strided_slice/stack_1?
(Decoder/reshape_12/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(Decoder/reshape_12/strided_slice/stack_2?
 Decoder/reshape_12/strided_sliceStridedSlice!Decoder/reshape_12/Shape:output:0/Decoder/reshape_12/strided_slice/stack:output:01Decoder/reshape_12/strided_slice/stack_1:output:01Decoder/reshape_12/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 Decoder/reshape_12/strided_slice?
"Decoder/reshape_12/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2$
"Decoder/reshape_12/Reshape/shape/1?
"Decoder/reshape_12/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2$
"Decoder/reshape_12/Reshape/shape/2?
"Decoder/reshape_12/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :?2$
"Decoder/reshape_12/Reshape/shape/3?
 Decoder/reshape_12/Reshape/shapePack)Decoder/reshape_12/strided_slice:output:0+Decoder/reshape_12/Reshape/shape/1:output:0+Decoder/reshape_12/Reshape/shape/2:output:0+Decoder/reshape_12/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2"
 Decoder/reshape_12/Reshape/shape?
Decoder/reshape_12/ReshapeReshape.Decoder/leaky_re_lu_78/LeakyRelu:activations:0)Decoder/reshape_12/Reshape/shape:output:0*
T0*0
_output_shapes
:??????????2
Decoder/reshape_12/Reshape?
!Decoder/conv2d_transpose_33/ShapeShape#Decoder/reshape_12/Reshape:output:0*
T0*
_output_shapes
:2#
!Decoder/conv2d_transpose_33/Shape?
/Decoder/conv2d_transpose_33/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/Decoder/conv2d_transpose_33/strided_slice/stack?
1Decoder/conv2d_transpose_33/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1Decoder/conv2d_transpose_33/strided_slice/stack_1?
1Decoder/conv2d_transpose_33/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1Decoder/conv2d_transpose_33/strided_slice/stack_2?
)Decoder/conv2d_transpose_33/strided_sliceStridedSlice*Decoder/conv2d_transpose_33/Shape:output:08Decoder/conv2d_transpose_33/strided_slice/stack:output:0:Decoder/conv2d_transpose_33/strided_slice/stack_1:output:0:Decoder/conv2d_transpose_33/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)Decoder/conv2d_transpose_33/strided_slice?
#Decoder/conv2d_transpose_33/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2%
#Decoder/conv2d_transpose_33/stack/1?
#Decoder/conv2d_transpose_33/stack/2Const*
_output_shapes
: *
dtype0*
value	B :2%
#Decoder/conv2d_transpose_33/stack/2?
#Decoder/conv2d_transpose_33/stack/3Const*
_output_shapes
: *
dtype0*
value
B :?2%
#Decoder/conv2d_transpose_33/stack/3?
!Decoder/conv2d_transpose_33/stackPack2Decoder/conv2d_transpose_33/strided_slice:output:0,Decoder/conv2d_transpose_33/stack/1:output:0,Decoder/conv2d_transpose_33/stack/2:output:0,Decoder/conv2d_transpose_33/stack/3:output:0*
N*
T0*
_output_shapes
:2#
!Decoder/conv2d_transpose_33/stack?
1Decoder/conv2d_transpose_33/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 23
1Decoder/conv2d_transpose_33/strided_slice_1/stack?
3Decoder/conv2d_transpose_33/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:25
3Decoder/conv2d_transpose_33/strided_slice_1/stack_1?
3Decoder/conv2d_transpose_33/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:25
3Decoder/conv2d_transpose_33/strided_slice_1/stack_2?
+Decoder/conv2d_transpose_33/strided_slice_1StridedSlice*Decoder/conv2d_transpose_33/stack:output:0:Decoder/conv2d_transpose_33/strided_slice_1/stack:output:0<Decoder/conv2d_transpose_33/strided_slice_1/stack_1:output:0<Decoder/conv2d_transpose_33/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2-
+Decoder/conv2d_transpose_33/strided_slice_1?
;Decoder/conv2d_transpose_33/conv2d_transpose/ReadVariableOpReadVariableOpDdecoder_conv2d_transpose_33_conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype02=
;Decoder/conv2d_transpose_33/conv2d_transpose/ReadVariableOp?
,Decoder/conv2d_transpose_33/conv2d_transposeConv2DBackpropInput*Decoder/conv2d_transpose_33/stack:output:0CDecoder/conv2d_transpose_33/conv2d_transpose/ReadVariableOp:value:0#Decoder/reshape_12/Reshape:output:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2.
,Decoder/conv2d_transpose_33/conv2d_transpose?
-Decoder/batch_normalization_79/ReadVariableOpReadVariableOp6decoder_batch_normalization_79_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-Decoder/batch_normalization_79/ReadVariableOp?
/Decoder/batch_normalization_79/ReadVariableOp_1ReadVariableOp8decoder_batch_normalization_79_readvariableop_1_resource*
_output_shapes	
:?*
dtype021
/Decoder/batch_normalization_79/ReadVariableOp_1?
>Decoder/batch_normalization_79/FusedBatchNormV3/ReadVariableOpReadVariableOpGdecoder_batch_normalization_79_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02@
>Decoder/batch_normalization_79/FusedBatchNormV3/ReadVariableOp?
@Decoder/batch_normalization_79/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpIdecoder_batch_normalization_79_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02B
@Decoder/batch_normalization_79/FusedBatchNormV3/ReadVariableOp_1?
/Decoder/batch_normalization_79/FusedBatchNormV3FusedBatchNormV35Decoder/conv2d_transpose_33/conv2d_transpose:output:05Decoder/batch_normalization_79/ReadVariableOp:value:07Decoder/batch_normalization_79/ReadVariableOp_1:value:0FDecoder/batch_normalization_79/FusedBatchNormV3/ReadVariableOp:value:0HDecoder/batch_normalization_79/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 21
/Decoder/batch_normalization_79/FusedBatchNormV3?
 Decoder/leaky_re_lu_79/LeakyRelu	LeakyRelu3Decoder/batch_normalization_79/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
alpha%???>2"
 Decoder/leaky_re_lu_79/LeakyRelu?
!Decoder/conv2d_transpose_34/ShapeShape.Decoder/leaky_re_lu_79/LeakyRelu:activations:0*
T0*
_output_shapes
:2#
!Decoder/conv2d_transpose_34/Shape?
/Decoder/conv2d_transpose_34/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/Decoder/conv2d_transpose_34/strided_slice/stack?
1Decoder/conv2d_transpose_34/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1Decoder/conv2d_transpose_34/strided_slice/stack_1?
1Decoder/conv2d_transpose_34/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1Decoder/conv2d_transpose_34/strided_slice/stack_2?
)Decoder/conv2d_transpose_34/strided_sliceStridedSlice*Decoder/conv2d_transpose_34/Shape:output:08Decoder/conv2d_transpose_34/strided_slice/stack:output:0:Decoder/conv2d_transpose_34/strided_slice/stack_1:output:0:Decoder/conv2d_transpose_34/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)Decoder/conv2d_transpose_34/strided_slice?
#Decoder/conv2d_transpose_34/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2%
#Decoder/conv2d_transpose_34/stack/1?
#Decoder/conv2d_transpose_34/stack/2Const*
_output_shapes
: *
dtype0*
value	B :2%
#Decoder/conv2d_transpose_34/stack/2?
#Decoder/conv2d_transpose_34/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2%
#Decoder/conv2d_transpose_34/stack/3?
!Decoder/conv2d_transpose_34/stackPack2Decoder/conv2d_transpose_34/strided_slice:output:0,Decoder/conv2d_transpose_34/stack/1:output:0,Decoder/conv2d_transpose_34/stack/2:output:0,Decoder/conv2d_transpose_34/stack/3:output:0*
N*
T0*
_output_shapes
:2#
!Decoder/conv2d_transpose_34/stack?
1Decoder/conv2d_transpose_34/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 23
1Decoder/conv2d_transpose_34/strided_slice_1/stack?
3Decoder/conv2d_transpose_34/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:25
3Decoder/conv2d_transpose_34/strided_slice_1/stack_1?
3Decoder/conv2d_transpose_34/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:25
3Decoder/conv2d_transpose_34/strided_slice_1/stack_2?
+Decoder/conv2d_transpose_34/strided_slice_1StridedSlice*Decoder/conv2d_transpose_34/stack:output:0:Decoder/conv2d_transpose_34/strided_slice_1/stack:output:0<Decoder/conv2d_transpose_34/strided_slice_1/stack_1:output:0<Decoder/conv2d_transpose_34/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2-
+Decoder/conv2d_transpose_34/strided_slice_1?
;Decoder/conv2d_transpose_34/conv2d_transpose/ReadVariableOpReadVariableOpDdecoder_conv2d_transpose_34_conv2d_transpose_readvariableop_resource*'
_output_shapes
:@?*
dtype02=
;Decoder/conv2d_transpose_34/conv2d_transpose/ReadVariableOp?
,Decoder/conv2d_transpose_34/conv2d_transposeConv2DBackpropInput*Decoder/conv2d_transpose_34/stack:output:0CDecoder/conv2d_transpose_34/conv2d_transpose/ReadVariableOp:value:0.Decoder/leaky_re_lu_79/LeakyRelu:activations:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2.
,Decoder/conv2d_transpose_34/conv2d_transpose?
-Decoder/batch_normalization_80/ReadVariableOpReadVariableOp6decoder_batch_normalization_80_readvariableop_resource*
_output_shapes
:@*
dtype02/
-Decoder/batch_normalization_80/ReadVariableOp?
/Decoder/batch_normalization_80/ReadVariableOp_1ReadVariableOp8decoder_batch_normalization_80_readvariableop_1_resource*
_output_shapes
:@*
dtype021
/Decoder/batch_normalization_80/ReadVariableOp_1?
>Decoder/batch_normalization_80/FusedBatchNormV3/ReadVariableOpReadVariableOpGdecoder_batch_normalization_80_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02@
>Decoder/batch_normalization_80/FusedBatchNormV3/ReadVariableOp?
@Decoder/batch_normalization_80/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpIdecoder_batch_normalization_80_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02B
@Decoder/batch_normalization_80/FusedBatchNormV3/ReadVariableOp_1?
/Decoder/batch_normalization_80/FusedBatchNormV3FusedBatchNormV35Decoder/conv2d_transpose_34/conv2d_transpose:output:05Decoder/batch_normalization_80/ReadVariableOp:value:07Decoder/batch_normalization_80/ReadVariableOp_1:value:0FDecoder/batch_normalization_80/FusedBatchNormV3/ReadVariableOp:value:0HDecoder/batch_normalization_80/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
is_training( 21
/Decoder/batch_normalization_80/FusedBatchNormV3?
 Decoder/leaky_re_lu_80/LeakyRelu	LeakyRelu3Decoder/batch_normalization_80/FusedBatchNormV3:y:0*/
_output_shapes
:?????????@*
alpha%???>2"
 Decoder/leaky_re_lu_80/LeakyRelu?
!Decoder/conv2d_transpose_35/ShapeShape.Decoder/leaky_re_lu_80/LeakyRelu:activations:0*
T0*
_output_shapes
:2#
!Decoder/conv2d_transpose_35/Shape?
/Decoder/conv2d_transpose_35/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/Decoder/conv2d_transpose_35/strided_slice/stack?
1Decoder/conv2d_transpose_35/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1Decoder/conv2d_transpose_35/strided_slice/stack_1?
1Decoder/conv2d_transpose_35/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1Decoder/conv2d_transpose_35/strided_slice/stack_2?
)Decoder/conv2d_transpose_35/strided_sliceStridedSlice*Decoder/conv2d_transpose_35/Shape:output:08Decoder/conv2d_transpose_35/strided_slice/stack:output:0:Decoder/conv2d_transpose_35/strided_slice/stack_1:output:0:Decoder/conv2d_transpose_35/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)Decoder/conv2d_transpose_35/strided_slice?
#Decoder/conv2d_transpose_35/stack/1Const*
_output_shapes
: *
dtype0*
value	B :
2%
#Decoder/conv2d_transpose_35/stack/1?
#Decoder/conv2d_transpose_35/stack/2Const*
_output_shapes
: *
dtype0*
value	B :2%
#Decoder/conv2d_transpose_35/stack/2?
#Decoder/conv2d_transpose_35/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2%
#Decoder/conv2d_transpose_35/stack/3?
!Decoder/conv2d_transpose_35/stackPack2Decoder/conv2d_transpose_35/strided_slice:output:0,Decoder/conv2d_transpose_35/stack/1:output:0,Decoder/conv2d_transpose_35/stack/2:output:0,Decoder/conv2d_transpose_35/stack/3:output:0*
N*
T0*
_output_shapes
:2#
!Decoder/conv2d_transpose_35/stack?
1Decoder/conv2d_transpose_35/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 23
1Decoder/conv2d_transpose_35/strided_slice_1/stack?
3Decoder/conv2d_transpose_35/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:25
3Decoder/conv2d_transpose_35/strided_slice_1/stack_1?
3Decoder/conv2d_transpose_35/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:25
3Decoder/conv2d_transpose_35/strided_slice_1/stack_2?
+Decoder/conv2d_transpose_35/strided_slice_1StridedSlice*Decoder/conv2d_transpose_35/stack:output:0:Decoder/conv2d_transpose_35/strided_slice_1/stack:output:0<Decoder/conv2d_transpose_35/strided_slice_1/stack_1:output:0<Decoder/conv2d_transpose_35/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2-
+Decoder/conv2d_transpose_35/strided_slice_1?
;Decoder/conv2d_transpose_35/conv2d_transpose/ReadVariableOpReadVariableOpDdecoder_conv2d_transpose_35_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@*
dtype02=
;Decoder/conv2d_transpose_35/conv2d_transpose/ReadVariableOp?
,Decoder/conv2d_transpose_35/conv2d_transposeConv2DBackpropInput*Decoder/conv2d_transpose_35/stack:output:0CDecoder/conv2d_transpose_35/conv2d_transpose/ReadVariableOp:value:0.Decoder/leaky_re_lu_80/LeakyRelu:activations:0*
T0*/
_output_shapes
:?????????
*
paddingSAME*
strides
2.
,Decoder/conv2d_transpose_35/conv2d_transpose?
 Decoder/conv2d_transpose_35/TanhTanh5Decoder/conv2d_transpose_35/conv2d_transpose:output:0*
T0*/
_output_shapes
:?????????
2"
 Decoder/conv2d_transpose_35/Tanh?
IdentityIdentity$Decoder/conv2d_transpose_35/Tanh:y:08^Decoder/batch_normalization_78/batchnorm/ReadVariableOp:^Decoder/batch_normalization_78/batchnorm/ReadVariableOp_1:^Decoder/batch_normalization_78/batchnorm/ReadVariableOp_2<^Decoder/batch_normalization_78/batchnorm/mul/ReadVariableOp?^Decoder/batch_normalization_79/FusedBatchNormV3/ReadVariableOpA^Decoder/batch_normalization_79/FusedBatchNormV3/ReadVariableOp_1.^Decoder/batch_normalization_79/ReadVariableOp0^Decoder/batch_normalization_79/ReadVariableOp_1?^Decoder/batch_normalization_80/FusedBatchNormV3/ReadVariableOpA^Decoder/batch_normalization_80/FusedBatchNormV3/ReadVariableOp_1.^Decoder/batch_normalization_80/ReadVariableOp0^Decoder/batch_normalization_80/ReadVariableOp_1<^Decoder/conv2d_transpose_33/conv2d_transpose/ReadVariableOp<^Decoder/conv2d_transpose_34/conv2d_transpose/ReadVariableOp<^Decoder/conv2d_transpose_35/conv2d_transpose/ReadVariableOp'^Decoder/dense_65/MatMul/ReadVariableOp*
T0*/
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????2: : : : : : : : : : : : : : : : 2r
7Decoder/batch_normalization_78/batchnorm/ReadVariableOp7Decoder/batch_normalization_78/batchnorm/ReadVariableOp2v
9Decoder/batch_normalization_78/batchnorm/ReadVariableOp_19Decoder/batch_normalization_78/batchnorm/ReadVariableOp_12v
9Decoder/batch_normalization_78/batchnorm/ReadVariableOp_29Decoder/batch_normalization_78/batchnorm/ReadVariableOp_22z
;Decoder/batch_normalization_78/batchnorm/mul/ReadVariableOp;Decoder/batch_normalization_78/batchnorm/mul/ReadVariableOp2?
>Decoder/batch_normalization_79/FusedBatchNormV3/ReadVariableOp>Decoder/batch_normalization_79/FusedBatchNormV3/ReadVariableOp2?
@Decoder/batch_normalization_79/FusedBatchNormV3/ReadVariableOp_1@Decoder/batch_normalization_79/FusedBatchNormV3/ReadVariableOp_12^
-Decoder/batch_normalization_79/ReadVariableOp-Decoder/batch_normalization_79/ReadVariableOp2b
/Decoder/batch_normalization_79/ReadVariableOp_1/Decoder/batch_normalization_79/ReadVariableOp_12?
>Decoder/batch_normalization_80/FusedBatchNormV3/ReadVariableOp>Decoder/batch_normalization_80/FusedBatchNormV3/ReadVariableOp2?
@Decoder/batch_normalization_80/FusedBatchNormV3/ReadVariableOp_1@Decoder/batch_normalization_80/FusedBatchNormV3/ReadVariableOp_12^
-Decoder/batch_normalization_80/ReadVariableOp-Decoder/batch_normalization_80/ReadVariableOp2b
/Decoder/batch_normalization_80/ReadVariableOp_1/Decoder/batch_normalization_80/ReadVariableOp_12z
;Decoder/conv2d_transpose_33/conv2d_transpose/ReadVariableOp;Decoder/conv2d_transpose_33/conv2d_transpose/ReadVariableOp2z
;Decoder/conv2d_transpose_34/conv2d_transpose/ReadVariableOp;Decoder/conv2d_transpose_34/conv2d_transpose/ReadVariableOp2z
;Decoder/conv2d_transpose_35/conv2d_transpose/ReadVariableOp;Decoder/conv2d_transpose_35/conv2d_transpose/ReadVariableOp2P
&Decoder/dense_65/MatMul/ReadVariableOp&Decoder/dense_65/MatMul/ReadVariableOp:Q M
'
_output_shapes
:?????????2
"
_user_specified_name
input_44
?
c
G__inference_reshape_12_layer_call_and_return_conditional_losses_8524004

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
?
?
5__inference_conv2d_transpose_33_layer_call_fn_8523593

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
P__inference_conv2d_transpose_33_layer_call_and_return_conditional_losses_85235852
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
?/
?
 __inference__traced_save_8525058
file_prefix.
*savev2_dense_65_kernel_read_readvariableop;
7savev2_batch_normalization_78_gamma_read_readvariableop:
6savev2_batch_normalization_78_beta_read_readvariableopA
=savev2_batch_normalization_78_moving_mean_read_readvariableopE
Asavev2_batch_normalization_78_moving_variance_read_readvariableop9
5savev2_conv2d_transpose_33_kernel_read_readvariableop;
7savev2_batch_normalization_79_gamma_read_readvariableop:
6savev2_batch_normalization_79_beta_read_readvariableopA
=savev2_batch_normalization_79_moving_mean_read_readvariableopE
Asavev2_batch_normalization_79_moving_variance_read_readvariableop9
5savev2_conv2d_transpose_34_kernel_read_readvariableop;
7savev2_batch_normalization_80_gamma_read_readvariableop:
6savev2_batch_normalization_80_beta_read_readvariableopA
=savev2_batch_normalization_80_moving_mean_read_readvariableopE
Asavev2_batch_normalization_80_moving_variance_read_readvariableop9
5savev2_conv2d_transpose_35_kernel_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_65_kernel_read_readvariableop7savev2_batch_normalization_78_gamma_read_readvariableop6savev2_batch_normalization_78_beta_read_readvariableop=savev2_batch_normalization_78_moving_mean_read_readvariableopAsavev2_batch_normalization_78_moving_variance_read_readvariableop5savev2_conv2d_transpose_33_kernel_read_readvariableop7savev2_batch_normalization_79_gamma_read_readvariableop6savev2_batch_normalization_79_beta_read_readvariableop=savev2_batch_normalization_79_moving_mean_read_readvariableopAsavev2_batch_normalization_79_moving_variance_read_readvariableop5savev2_conv2d_transpose_34_kernel_read_readvariableop7savev2_batch_normalization_80_gamma_read_readvariableop6savev2_batch_normalization_80_beta_read_readvariableop=savev2_batch_normalization_80_moving_mean_read_readvariableopAsavev2_batch_normalization_80_moving_variance_read_readvariableop5savev2_conv2d_transpose_35_kernel_read_readvariableopsavev2_const"/device:CPU:0*
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
: "?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
=
input_441
serving_default_input_44:0?????????2O
conv2d_transpose_358
StatefulPartitionedCall:0?????????
tensorflow/serving/predict:߈
?p
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer-4
layer_with_weights-2
layer-5
layer_with_weights-3
layer-6
layer-7
	layer_with_weights-4
	layer-8

layer_with_weights-5

layer-9
layer-10
layer_with_weights-6
layer-11
	variables
trainable_variables
regularization_losses
	keras_api

signatures
+?&call_and_return_all_conditional_losses
?_default_save_signature
?__call__"?l
_tf_keras_network?l{"name": "Decoder", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Functional", "config": {"name": "Decoder", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 50]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_44"}, "name": "input_44", "inbound_nodes": []}, {"class_name": "Dense", "config": {"name": "dense_65", "trainable": true, "dtype": "float32", "units": 5120, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_65", "inbound_nodes": [[["input_44", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_78", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_78", "inbound_nodes": [[["dense_65", 0, 0, {}]]]}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_78", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}, "name": "leaky_re_lu_78", "inbound_nodes": [[["batch_normalization_78", 0, 0, {}]]]}, {"class_name": "Reshape", "config": {"name": "reshape_12", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [5, 4, 256]}}, "name": "reshape_12", "inbound_nodes": [[["leaky_re_lu_78", 0, 0, {}]]]}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_33", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "name": "conv2d_transpose_33", "inbound_nodes": [[["reshape_12", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_79", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_79", "inbound_nodes": [[["conv2d_transpose_33", 0, 0, {}]]]}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_79", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}, "name": "leaky_re_lu_79", "inbound_nodes": [[["batch_normalization_79", 0, 0, {}]]]}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_34", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": {"class_name": "__tuple__", "items": [0, 0]}}, "name": "conv2d_transpose_34", "inbound_nodes": [[["leaky_re_lu_79", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_80", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_80", "inbound_nodes": [[["conv2d_transpose_34", 0, 0, {}]]]}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_80", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}, "name": "leaky_re_lu_80", "inbound_nodes": [[["batch_normalization_80", 0, 0, {}]]]}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_35", "trainable": true, "dtype": "float32", "filters": 1, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "tanh", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": {"class_name": "__tuple__", "items": [1, 0]}}, "name": "conv2d_transpose_35", "inbound_nodes": [[["leaky_re_lu_80", 0, 0, {}]]]}], "input_layers": [["input_44", 0, 0]], "output_layers": [["conv2d_transpose_35", 0, 0]]}, "shared_object_id": 32, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 50]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 50]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 50]}, "float32", "input_44"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "Decoder", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 50]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_44"}, "name": "input_44", "inbound_nodes": [], "shared_object_id": 0}, {"class_name": "Dense", "config": {"name": "dense_65", "trainable": true, "dtype": "float32", "units": 5120, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_65", "inbound_nodes": [[["input_44", 0, 0, {}]]], "shared_object_id": 3}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_78", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 4}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 5}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 6}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 7}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_78", "inbound_nodes": [[["dense_65", 0, 0, {}]]], "shared_object_id": 8}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_78", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}, "name": "leaky_re_lu_78", "inbound_nodes": [[["batch_normalization_78", 0, 0, {}]]], "shared_object_id": 9}, {"class_name": "Reshape", "config": {"name": "reshape_12", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [5, 4, 256]}}, "name": "reshape_12", "inbound_nodes": [[["leaky_re_lu_78", 0, 0, {}]]], "shared_object_id": 10}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_33", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 11}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 12}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "name": "conv2d_transpose_33", "inbound_nodes": [[["reshape_12", 0, 0, {}]]], "shared_object_id": 13}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_79", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 14}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 15}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 16}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 17}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_79", "inbound_nodes": [[["conv2d_transpose_33", 0, 0, {}]]], "shared_object_id": 18}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_79", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}, "name": "leaky_re_lu_79", "inbound_nodes": [[["batch_normalization_79", 0, 0, {}]]], "shared_object_id": 19}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_34", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 20}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 21}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": {"class_name": "__tuple__", "items": [0, 0]}}, "name": "conv2d_transpose_34", "inbound_nodes": [[["leaky_re_lu_79", 0, 0, {}]]], "shared_object_id": 22}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_80", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 23}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 24}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 25}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 26}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_80", "inbound_nodes": [[["conv2d_transpose_34", 0, 0, {}]]], "shared_object_id": 27}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_80", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}, "name": "leaky_re_lu_80", "inbound_nodes": [[["batch_normalization_80", 0, 0, {}]]], "shared_object_id": 28}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_35", "trainable": true, "dtype": "float32", "filters": 1, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "tanh", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 29}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 30}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": {"class_name": "__tuple__", "items": [1, 0]}}, "name": "conv2d_transpose_35", "inbound_nodes": [[["leaky_re_lu_80", 0, 0, {}]]], "shared_object_id": 31}], "input_layers": [["input_44", 0, 0]], "output_layers": [["conv2d_transpose_35", 0, 0]]}}}
?"?
_tf_keras_input_layer?{"class_name": "InputLayer", "name": "input_44", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 50]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 50]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_44"}}
?

kernel
	variables
trainable_variables
regularization_losses
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "dense_65", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_65", "trainable": true, "dtype": "float32", "units": 5120, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["input_44", 0, 0, {}]]], "shared_object_id": 3, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 50}}, "shared_object_id": 34}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 50]}}
?

axis
	gamma
beta
moving_mean
moving_variance
	variables
trainable_variables
regularization_losses
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?	
_tf_keras_layer?	{"name": "batch_normalization_78", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_78", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 4}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 5}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 6}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 7}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "inbound_nodes": [[["dense_65", 0, 0, {}]]], "shared_object_id": 8, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {"1": 5120}}, "shared_object_id": 35}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 5120]}}
?
 	variables
!trainable_variables
"regularization_losses
#	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "leaky_re_lu_78", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_78", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}, "inbound_nodes": [[["batch_normalization_78", 0, 0, {}]]], "shared_object_id": 9}
?
$	variables
%trainable_variables
&regularization_losses
'	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "reshape_12", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Reshape", "config": {"name": "reshape_12", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [5, 4, 256]}}, "inbound_nodes": [[["leaky_re_lu_78", 0, 0, {}]]], "shared_object_id": 10}
?

(kernel
)	variables
*trainable_variables
+regularization_losses
,	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?

_tf_keras_layer?	{"name": "conv2d_transpose_33", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_33", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 11}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 12}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "inbound_nodes": [[["reshape_12", 0, 0, {}]]], "shared_object_id": 13, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 256}}, "shared_object_id": 36}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 5, 4, 256]}}
?
-axis
	.gamma
/beta
0moving_mean
1moving_variance
2	variables
3trainable_variables
4regularization_losses
5	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?	
_tf_keras_layer?	{"name": "batch_normalization_79", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_79", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 14}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 15}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 16}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 17}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "inbound_nodes": [[["conv2d_transpose_33", 0, 0, {}]]], "shared_object_id": 18, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 128}}, "shared_object_id": 37}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 5, 4, 128]}}
?
6	variables
7trainable_variables
8regularization_losses
9	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "leaky_re_lu_79", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_79", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}, "inbound_nodes": [[["batch_normalization_79", 0, 0, {}]]], "shared_object_id": 19}
?
:output_padding

;kernel
<	variables
=trainable_variables
>regularization_losses
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?

_tf_keras_layer?
{"name": "conv2d_transpose_34", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_34", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 20}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 21}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": {"class_name": "__tuple__", "items": [0, 0]}}, "inbound_nodes": [[["leaky_re_lu_79", 0, 0, {}]]], "shared_object_id": 22, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 128}}, "shared_object_id": 38}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 5, 4, 128]}}
?
@axis
	Agamma
Bbeta
Cmoving_mean
Dmoving_variance
E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?	
_tf_keras_layer?	{"name": "batch_normalization_80", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_80", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 23}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 24}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 25}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 26}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "inbound_nodes": [[["conv2d_transpose_34", 0, 0, {}]]], "shared_object_id": 27, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 64}}, "shared_object_id": 39}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 5, 4, 64]}}
?
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "leaky_re_lu_80", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_80", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}, "inbound_nodes": [[["batch_normalization_80", 0, 0, {}]]], "shared_object_id": 28}
?
Moutput_padding

Nkernel
O	variables
Ptrainable_variables
Qregularization_losses
R	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?

_tf_keras_layer?
{"name": "conv2d_transpose_35", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_35", "trainable": true, "dtype": "float32", "filters": 1, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "tanh", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 29}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 30}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": {"class_name": "__tuple__", "items": [1, 0]}}, "inbound_nodes": [[["leaky_re_lu_80", 0, 0, {}]]], "shared_object_id": 31, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 64}}, "shared_object_id": 40}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 5, 4, 64]}}
?
0
1
2
3
4
(5
.6
/7
08
19
;10
A11
B12
C13
D14
N15"
trackable_list_wrapper
f
0
1
2
(3
.4
/5
;6
A7
B8
N9"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Slayer_metrics
Tlayer_regularization_losses
Umetrics
Vnon_trainable_variables
	variables

Wlayers
trainable_variables
regularization_losses
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
": 	2?(2dense_65/kernel
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Xlayer_metrics
Ylayer_regularization_losses
Zmetrics
[non_trainable_variables
	variables

\layers
trainable_variables
regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
+:)?(2batch_normalization_78/gamma
*:(?(2batch_normalization_78/beta
3:1?( (2"batch_normalization_78/moving_mean
7:5?( (2&batch_normalization_78/moving_variance
<
0
1
2
3"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
]layer_metrics
^layer_regularization_losses
_metrics
`non_trainable_variables
	variables

alayers
trainable_variables
regularization_losses
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
blayer_metrics
clayer_regularization_losses
dmetrics
enon_trainable_variables
 	variables

flayers
!trainable_variables
"regularization_losses
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
glayer_metrics
hlayer_regularization_losses
imetrics
jnon_trainable_variables
$	variables

klayers
%trainable_variables
&regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
6:4??2conv2d_transpose_33/kernel
'
(0"
trackable_list_wrapper
'
(0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
llayer_metrics
mlayer_regularization_losses
nmetrics
onon_trainable_variables
)	variables

players
*trainable_variables
+regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
+:)?2batch_normalization_79/gamma
*:(?2batch_normalization_79/beta
3:1? (2"batch_normalization_79/moving_mean
7:5? (2&batch_normalization_79/moving_variance
<
.0
/1
02
13"
trackable_list_wrapper
.
.0
/1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
qlayer_metrics
rlayer_regularization_losses
smetrics
tnon_trainable_variables
2	variables

ulayers
3trainable_variables
4regularization_losses
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
vlayer_metrics
wlayer_regularization_losses
xmetrics
ynon_trainable_variables
6	variables

zlayers
7trainable_variables
8regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
5:3@?2conv2d_transpose_34/kernel
'
;0"
trackable_list_wrapper
'
;0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
{layer_metrics
|layer_regularization_losses
}metrics
~non_trainable_variables
<	variables

layers
=trainable_variables
>regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
*:(@2batch_normalization_80/gamma
):'@2batch_normalization_80/beta
2:0@ (2"batch_normalization_80/moving_mean
6:4@ (2&batch_normalization_80/moving_variance
<
A0
B1
C2
D3"
trackable_list_wrapper
.
A0
B1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layer_metrics
 ?layer_regularization_losses
?metrics
?non_trainable_variables
E	variables
?layers
Ftrainable_variables
Gregularization_losses
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
?layer_metrics
 ?layer_regularization_losses
?metrics
?non_trainable_variables
I	variables
?layers
Jtrainable_variables
Kregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
4:2@2conv2d_transpose_35/kernel
'
N0"
trackable_list_wrapper
'
N0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layer_metrics
 ?layer_regularization_losses
?metrics
?non_trainable_variables
O	variables
?layers
Ptrainable_variables
Qregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
J
0
1
02
13
C4
D5"
trackable_list_wrapper
v
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
11"
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
.
0
1"
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
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
00
11"
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
.
C0
D1"
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
?2?
D__inference_Decoder_layer_call_and_return_conditional_losses_8524519
D__inference_Decoder_layer_call_and_return_conditional_losses_8524646
D__inference_Decoder_layer_call_and_return_conditional_losses_8524320
D__inference_Decoder_layer_call_and_return_conditional_losses_8524367?
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
"__inference__wrapped_model_8523392?
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
annotations? *'?$
"?
input_44?????????2
?2?
)__inference_Decoder_layer_call_fn_8524083
)__inference_Decoder_layer_call_fn_8524683
)__inference_Decoder_layer_call_fn_8524720
)__inference_Decoder_layer_call_fn_8524273?
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
E__inference_dense_65_layer_call_and_return_conditional_losses_8524727?
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
*__inference_dense_65_layer_call_fn_8524734?
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
S__inference_batch_normalization_78_layer_call_and_return_conditional_losses_8524754
S__inference_batch_normalization_78_layer_call_and_return_conditional_losses_8524788?
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
8__inference_batch_normalization_78_layer_call_fn_8524801
8__inference_batch_normalization_78_layer_call_fn_8524814?
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
K__inference_leaky_re_lu_78_layer_call_and_return_conditional_losses_8524819?
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
0__inference_leaky_re_lu_78_layer_call_fn_8524824?
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
G__inference_reshape_12_layer_call_and_return_conditional_losses_8524838?
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
,__inference_reshape_12_layer_call_fn_8524843?
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
P__inference_conv2d_transpose_33_layer_call_and_return_conditional_losses_8523585?
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
5__inference_conv2d_transpose_33_layer_call_fn_8523593?
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
S__inference_batch_normalization_79_layer_call_and_return_conditional_losses_8524861
S__inference_batch_normalization_79_layer_call_and_return_conditional_losses_8524879?
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
8__inference_batch_normalization_79_layer_call_fn_8524892
8__inference_batch_normalization_79_layer_call_fn_8524905?
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
K__inference_leaky_re_lu_79_layer_call_and_return_conditional_losses_8524910?
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
0__inference_leaky_re_lu_79_layer_call_fn_8524915?
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
P__inference_conv2d_transpose_34_layer_call_and_return_conditional_losses_8523766?
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
5__inference_conv2d_transpose_34_layer_call_fn_8523774?
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
S__inference_batch_normalization_80_layer_call_and_return_conditional_losses_8524933
S__inference_batch_normalization_80_layer_call_and_return_conditional_losses_8524951?
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
8__inference_batch_normalization_80_layer_call_fn_8524964
8__inference_batch_normalization_80_layer_call_fn_8524977?
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
K__inference_leaky_re_lu_80_layer_call_and_return_conditional_losses_8524982?
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
0__inference_leaky_re_lu_80_layer_call_fn_8524987?
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
P__inference_conv2d_transpose_35_layer_call_and_return_conditional_losses_8523948?
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
5__inference_conv2d_transpose_35_layer_call_fn_8523956?
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
%__inference_signature_wrapper_8524406input_44"?
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
D__inference_Decoder_layer_call_and_return_conditional_losses_8524320?(./01;ABCDN9?6
/?,
"?
input_44?????????2
p 

 
? "??<
5?2
0+???????????????????????????
? ?
D__inference_Decoder_layer_call_and_return_conditional_losses_8524367?(./01;ABCDN9?6
/?,
"?
input_44?????????2
p

 
? "??<
5?2
0+???????????????????????????
? ?
D__inference_Decoder_layer_call_and_return_conditional_losses_8524519z(./01;ABCDN7?4
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
D__inference_Decoder_layer_call_and_return_conditional_losses_8524646z(./01;ABCDN7?4
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
)__inference_Decoder_layer_call_fn_8524083?(./01;ABCDN9?6
/?,
"?
input_44?????????2
p 

 
? "2?/+????????????????????????????
)__inference_Decoder_layer_call_fn_8524273?(./01;ABCDN9?6
/?,
"?
input_44?????????2
p

 
? "2?/+????????????????????????????
)__inference_Decoder_layer_call_fn_8524683(./01;ABCDN7?4
-?*
 ?
inputs?????????2
p 

 
? "2?/+????????????????????????????
)__inference_Decoder_layer_call_fn_8524720(./01;ABCDN7?4
-?*
 ?
inputs?????????2
p

 
? "2?/+????????????????????????????
"__inference__wrapped_model_8523392?(./01;ABCDN1?.
'?$
"?
input_44?????????2
? "Q?N
L
conv2d_transpose_355?2
conv2d_transpose_35?????????
?
S__inference_batch_normalization_78_layer_call_and_return_conditional_losses_8524754d4?1
*?'
!?
inputs??????????(
p 
? "&?#
?
0??????????(
? ?
S__inference_batch_normalization_78_layer_call_and_return_conditional_losses_8524788d4?1
*?'
!?
inputs??????????(
p
? "&?#
?
0??????????(
? ?
8__inference_batch_normalization_78_layer_call_fn_8524801W4?1
*?'
!?
inputs??????????(
p 
? "???????????(?
8__inference_batch_normalization_78_layer_call_fn_8524814W4?1
*?'
!?
inputs??????????(
p
? "???????????(?
S__inference_batch_normalization_79_layer_call_and_return_conditional_losses_8524861?./01N?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
S__inference_batch_normalization_79_layer_call_and_return_conditional_losses_8524879?./01N?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
8__inference_batch_normalization_79_layer_call_fn_8524892?./01N?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
8__inference_batch_normalization_79_layer_call_fn_8524905?./01N?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
S__inference_batch_normalization_80_layer_call_and_return_conditional_losses_8524933?ABCDM?J
C?@
:?7
inputs+???????????????????????????@
p 
? "??<
5?2
0+???????????????????????????@
? ?
S__inference_batch_normalization_80_layer_call_and_return_conditional_losses_8524951?ABCDM?J
C?@
:?7
inputs+???????????????????????????@
p
? "??<
5?2
0+???????????????????????????@
? ?
8__inference_batch_normalization_80_layer_call_fn_8524964?ABCDM?J
C?@
:?7
inputs+???????????????????????????@
p 
? "2?/+???????????????????????????@?
8__inference_batch_normalization_80_layer_call_fn_8524977?ABCDM?J
C?@
:?7
inputs+???????????????????????????@
p
? "2?/+???????????????????????????@?
P__inference_conv2d_transpose_33_layer_call_and_return_conditional_losses_8523585?(J?G
@?=
;?8
inputs,????????????????????????????
? "@?=
6?3
0,????????????????????????????
? ?
5__inference_conv2d_transpose_33_layer_call_fn_8523593?(J?G
@?=
;?8
inputs,????????????????????????????
? "3?0,?????????????????????????????
P__inference_conv2d_transpose_34_layer_call_and_return_conditional_losses_8523766?;J?G
@?=
;?8
inputs,????????????????????????????
? "??<
5?2
0+???????????????????????????@
? ?
5__inference_conv2d_transpose_34_layer_call_fn_8523774?;J?G
@?=
;?8
inputs,????????????????????????????
? "2?/+???????????????????????????@?
P__inference_conv2d_transpose_35_layer_call_and_return_conditional_losses_8523948?NI?F
??<
:?7
inputs+???????????????????????????@
? "??<
5?2
0+???????????????????????????
? ?
5__inference_conv2d_transpose_35_layer_call_fn_8523956?NI?F
??<
:?7
inputs+???????????????????????????@
? "2?/+????????????????????????????
E__inference_dense_65_layer_call_and_return_conditional_losses_8524727\/?,
%?"
 ?
inputs?????????2
? "&?#
?
0??????????(
? }
*__inference_dense_65_layer_call_fn_8524734O/?,
%?"
 ?
inputs?????????2
? "???????????(?
K__inference_leaky_re_lu_78_layer_call_and_return_conditional_losses_8524819Z0?-
&?#
!?
inputs??????????(
? "&?#
?
0??????????(
? ?
0__inference_leaky_re_lu_78_layer_call_fn_8524824M0?-
&?#
!?
inputs??????????(
? "???????????(?
K__inference_leaky_re_lu_79_layer_call_and_return_conditional_losses_8524910?J?G
@?=
;?8
inputs,????????????????????????????
? "@?=
6?3
0,????????????????????????????
? ?
0__inference_leaky_re_lu_79_layer_call_fn_8524915?J?G
@?=
;?8
inputs,????????????????????????????
? "3?0,?????????????????????????????
K__inference_leaky_re_lu_80_layer_call_and_return_conditional_losses_8524982?I?F
??<
:?7
inputs+???????????????????????????@
? "??<
5?2
0+???????????????????????????@
? ?
0__inference_leaky_re_lu_80_layer_call_fn_8524987I?F
??<
:?7
inputs+???????????????????????????@
? "2?/+???????????????????????????@?
G__inference_reshape_12_layer_call_and_return_conditional_losses_8524838b0?-
&?#
!?
inputs??????????(
? ".?+
$?!
0??????????
? ?
,__inference_reshape_12_layer_call_fn_8524843U0?-
&?#
!?
inputs??????????(
? "!????????????
%__inference_signature_wrapper_8524406?(./01;ABCDN=?:
? 
3?0
.
input_44"?
input_44?????????2"Q?N
L
conv2d_transpose_355?2
conv2d_transpose_35?????????
