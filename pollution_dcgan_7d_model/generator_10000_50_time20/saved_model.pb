˹
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
y
dense_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?(*
shared_namedense_4/kernel
r
"dense_4/kernel/Read/ReadVariableOpReadVariableOpdense_4/kernel*
_output_shapes
:	2?(*
dtype0
?
batch_normalization_12/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?(*-
shared_namebatch_normalization_12/gamma
?
0batch_normalization_12/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_12/gamma*
_output_shapes	
:?(*
dtype0
?
batch_normalization_12/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?(*,
shared_namebatch_normalization_12/beta
?
/batch_normalization_12/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_12/beta*
_output_shapes	
:?(*
dtype0
?
"batch_normalization_12/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?(*3
shared_name$"batch_normalization_12/moving_mean
?
6batch_normalization_12/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_12/moving_mean*
_output_shapes	
:?(*
dtype0
?
&batch_normalization_12/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?(*7
shared_name(&batch_normalization_12/moving_variance
?
:batch_normalization_12/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_12/moving_variance*
_output_shapes	
:?(*
dtype0
?
conv2d_transpose_12/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*+
shared_nameconv2d_transpose_12/kernel
?
.conv2d_transpose_12/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_12/kernel*(
_output_shapes
:??*
dtype0
?
batch_normalization_13/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*-
shared_namebatch_normalization_13/gamma
?
0batch_normalization_13/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_13/gamma*
_output_shapes	
:?*
dtype0
?
batch_normalization_13/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namebatch_normalization_13/beta
?
/batch_normalization_13/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_13/beta*
_output_shapes	
:?*
dtype0
?
"batch_normalization_13/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"batch_normalization_13/moving_mean
?
6batch_normalization_13/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_13/moving_mean*
_output_shapes	
:?*
dtype0
?
&batch_normalization_13/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*7
shared_name(&batch_normalization_13/moving_variance
?
:batch_normalization_13/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_13/moving_variance*
_output_shapes	
:?*
dtype0
?
conv2d_transpose_13/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*+
shared_nameconv2d_transpose_13/kernel
?
.conv2d_transpose_13/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_13/kernel*'
_output_shapes
:@?*
dtype0
?
batch_normalization_14/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*-
shared_namebatch_normalization_14/gamma
?
0batch_normalization_14/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_14/gamma*
_output_shapes
:@*
dtype0
?
batch_normalization_14/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_namebatch_normalization_14/beta
?
/batch_normalization_14/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_14/beta*
_output_shapes
:@*
dtype0
?
"batch_normalization_14/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"batch_normalization_14/moving_mean
?
6batch_normalization_14/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_14/moving_mean*
_output_shapes
:@*
dtype0
?
&batch_normalization_14/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*7
shared_name(&batch_normalization_14/moving_variance
?
:batch_normalization_14/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_14/moving_variance*
_output_shapes
:@*
dtype0
?
conv2d_transpose_14/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*+
shared_nameconv2d_transpose_14/kernel
?
.conv2d_transpose_14/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_14/kernel*&
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

Rlayers
Smetrics
	variables
Tnon_trainable_variables
Ulayer_metrics
Vlayer_regularization_losses
regularization_losses
 
ZX
VARIABLE_VALUEdense_4/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE

0

0
 
?
trainable_variables

Wlayers
Xmetrics
	variables
Ynon_trainable_variables
Zlayer_metrics
[layer_regularization_losses
regularization_losses
 
ge
VARIABLE_VALUEbatch_normalization_12/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_12/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_12/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_12/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
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

\layers
]metrics
	variables
^non_trainable_variables
_layer_metrics
`layer_regularization_losses
regularization_losses
 
 
 
?
trainable_variables

alayers
bmetrics
 	variables
cnon_trainable_variables
dlayer_metrics
elayer_regularization_losses
!regularization_losses
 
 
 
?
#trainable_variables

flayers
gmetrics
$	variables
hnon_trainable_variables
ilayer_metrics
jlayer_regularization_losses
%regularization_losses
fd
VARIABLE_VALUEconv2d_transpose_12/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE

'0

'0
 
?
(trainable_variables

klayers
lmetrics
)	variables
mnon_trainable_variables
nlayer_metrics
olayer_regularization_losses
*regularization_losses
 
ge
VARIABLE_VALUEbatch_normalization_13/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_13/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_13/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_13/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
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

players
qmetrics
2	variables
rnon_trainable_variables
slayer_metrics
tlayer_regularization_losses
3regularization_losses
 
 
 
?
5trainable_variables

ulayers
vmetrics
6	variables
wnon_trainable_variables
xlayer_metrics
ylayer_regularization_losses
7regularization_losses
 
fd
VARIABLE_VALUEconv2d_transpose_13/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE

:0

:0
 
?
;trainable_variables

zlayers
{metrics
<	variables
|non_trainable_variables
}layer_metrics
~layer_regularization_losses
=regularization_losses
 
ge
VARIABLE_VALUEbatch_normalization_14/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_14/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_14/moving_mean;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_14/moving_variance?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
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

layers
?metrics
E	variables
?non_trainable_variables
?layer_metrics
 ?layer_regularization_losses
Fregularization_losses
 
 
 
?
Htrainable_variables
?layers
?metrics
I	variables
?non_trainable_variables
?layer_metrics
 ?layer_regularization_losses
Jregularization_losses
 
fd
VARIABLE_VALUEconv2d_transpose_14/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE

M0

M0
 
?
Ntrainable_variables
?layers
?metrics
O	variables
?non_trainable_variables
?layer_metrics
 ?layer_regularization_losses
Pregularization_losses
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
 
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
 
?
serving_default_dense_4_inputPlaceholder*'
_output_shapes
:?????????2*
dtype0*
shape:?????????2
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_dense_4_inputdense_4/kernel&batch_normalization_12/moving_variancebatch_normalization_12/gamma"batch_normalization_12/moving_meanbatch_normalization_12/betaconv2d_transpose_12/kernelbatch_normalization_13/gammabatch_normalization_13/beta"batch_normalization_13/moving_mean&batch_normalization_13/moving_varianceconv2d_transpose_13/kernelbatch_normalization_14/gammabatch_normalization_14/beta"batch_normalization_14/moving_mean&batch_normalization_14/moving_varianceconv2d_transpose_14/kernel*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *-
f(R&
$__inference_signature_wrapper_311386
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename"dense_4/kernel/Read/ReadVariableOp0batch_normalization_12/gamma/Read/ReadVariableOp/batch_normalization_12/beta/Read/ReadVariableOp6batch_normalization_12/moving_mean/Read/ReadVariableOp:batch_normalization_12/moving_variance/Read/ReadVariableOp.conv2d_transpose_12/kernel/Read/ReadVariableOp0batch_normalization_13/gamma/Read/ReadVariableOp/batch_normalization_13/beta/Read/ReadVariableOp6batch_normalization_13/moving_mean/Read/ReadVariableOp:batch_normalization_13/moving_variance/Read/ReadVariableOp.conv2d_transpose_13/kernel/Read/ReadVariableOp0batch_normalization_14/gamma/Read/ReadVariableOp/batch_normalization_14/beta/Read/ReadVariableOp6batch_normalization_14/moving_mean/Read/ReadVariableOp:batch_normalization_14/moving_variance/Read/ReadVariableOp.conv2d_transpose_14/kernel/Read/ReadVariableOpConst*
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
GPU2*0J 8? *(
f#R!
__inference__traced_save_312038
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_4/kernelbatch_normalization_12/gammabatch_normalization_12/beta"batch_normalization_12/moving_mean&batch_normalization_12/moving_varianceconv2d_transpose_12/kernelbatch_normalization_13/gammabatch_normalization_13/beta"batch_normalization_13/moving_mean&batch_normalization_13/moving_varianceconv2d_transpose_13/kernelbatch_normalization_14/gammabatch_normalization_14/beta"batch_normalization_14/moving_mean&batch_normalization_14/moving_varianceconv2d_transpose_14/kernel*
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
GPU2*0J 8? *+
f&R$
"__inference__traced_restore_312096??
?
?
4__inference_conv2d_transpose_14_layer_call_fn_310936

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
GPU2*0J 8? *X
fSRQ
O__inference_conv2d_transpose_14_layer_call_and_return_conditional_losses_3109282
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
?
?
R__inference_batch_normalization_13_layer_call_and_return_conditional_losses_311885

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
-__inference_sequential_4_layer_call_fn_311063
dense_4_input
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
StatefulPartitionedCallStatefulPartitionedCalldense_4_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
GPU2*0J 8? *Q
fLRJ
H__inference_sequential_4_layer_call_and_return_conditional_losses_3110282
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
StatefulPartitionedCallStatefulPartitionedCall:V R
'
_output_shapes
:?????????2
'
_user_specified_namedense_4_input
?
?
7__inference_batch_normalization_13_layer_call_fn_311836

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
GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_13_layer_call_and_return_conditional_losses_3105952
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
??
?
!__inference__wrapped_model_310372
dense_4_inputF
3sequential_4_dense_4_matmul_readvariableop_resource:	2?(T
Esequential_4_batch_normalization_12_batchnorm_readvariableop_resource:	?(X
Isequential_4_batch_normalization_12_batchnorm_mul_readvariableop_resource:	?(V
Gsequential_4_batch_normalization_12_batchnorm_readvariableop_1_resource:	?(V
Gsequential_4_batch_normalization_12_batchnorm_readvariableop_2_resource:	?(e
Isequential_4_conv2d_transpose_12_conv2d_transpose_readvariableop_resource:??J
;sequential_4_batch_normalization_13_readvariableop_resource:	?L
=sequential_4_batch_normalization_13_readvariableop_1_resource:	?[
Lsequential_4_batch_normalization_13_fusedbatchnormv3_readvariableop_resource:	?]
Nsequential_4_batch_normalization_13_fusedbatchnormv3_readvariableop_1_resource:	?d
Isequential_4_conv2d_transpose_13_conv2d_transpose_readvariableop_resource:@?I
;sequential_4_batch_normalization_14_readvariableop_resource:@K
=sequential_4_batch_normalization_14_readvariableop_1_resource:@Z
Lsequential_4_batch_normalization_14_fusedbatchnormv3_readvariableop_resource:@\
Nsequential_4_batch_normalization_14_fusedbatchnormv3_readvariableop_1_resource:@c
Isequential_4_conv2d_transpose_14_conv2d_transpose_readvariableop_resource:@
identity??<sequential_4/batch_normalization_12/batchnorm/ReadVariableOp?>sequential_4/batch_normalization_12/batchnorm/ReadVariableOp_1?>sequential_4/batch_normalization_12/batchnorm/ReadVariableOp_2?@sequential_4/batch_normalization_12/batchnorm/mul/ReadVariableOp?Csequential_4/batch_normalization_13/FusedBatchNormV3/ReadVariableOp?Esequential_4/batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1?2sequential_4/batch_normalization_13/ReadVariableOp?4sequential_4/batch_normalization_13/ReadVariableOp_1?Csequential_4/batch_normalization_14/FusedBatchNormV3/ReadVariableOp?Esequential_4/batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1?2sequential_4/batch_normalization_14/ReadVariableOp?4sequential_4/batch_normalization_14/ReadVariableOp_1?@sequential_4/conv2d_transpose_12/conv2d_transpose/ReadVariableOp?@sequential_4/conv2d_transpose_13/conv2d_transpose/ReadVariableOp?@sequential_4/conv2d_transpose_14/conv2d_transpose/ReadVariableOp?*sequential_4/dense_4/MatMul/ReadVariableOp?
*sequential_4/dense_4/MatMul/ReadVariableOpReadVariableOp3sequential_4_dense_4_matmul_readvariableop_resource*
_output_shapes
:	2?(*
dtype02,
*sequential_4/dense_4/MatMul/ReadVariableOp?
sequential_4/dense_4/MatMulMatMuldense_4_input2sequential_4/dense_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????(2
sequential_4/dense_4/MatMul?
<sequential_4/batch_normalization_12/batchnorm/ReadVariableOpReadVariableOpEsequential_4_batch_normalization_12_batchnorm_readvariableop_resource*
_output_shapes	
:?(*
dtype02>
<sequential_4/batch_normalization_12/batchnorm/ReadVariableOp?
3sequential_4/batch_normalization_12/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:25
3sequential_4/batch_normalization_12/batchnorm/add/y?
1sequential_4/batch_normalization_12/batchnorm/addAddV2Dsequential_4/batch_normalization_12/batchnorm/ReadVariableOp:value:0<sequential_4/batch_normalization_12/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?(23
1sequential_4/batch_normalization_12/batchnorm/add?
3sequential_4/batch_normalization_12/batchnorm/RsqrtRsqrt5sequential_4/batch_normalization_12/batchnorm/add:z:0*
T0*
_output_shapes	
:?(25
3sequential_4/batch_normalization_12/batchnorm/Rsqrt?
@sequential_4/batch_normalization_12/batchnorm/mul/ReadVariableOpReadVariableOpIsequential_4_batch_normalization_12_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?(*
dtype02B
@sequential_4/batch_normalization_12/batchnorm/mul/ReadVariableOp?
1sequential_4/batch_normalization_12/batchnorm/mulMul7sequential_4/batch_normalization_12/batchnorm/Rsqrt:y:0Hsequential_4/batch_normalization_12/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?(23
1sequential_4/batch_normalization_12/batchnorm/mul?
3sequential_4/batch_normalization_12/batchnorm/mul_1Mul%sequential_4/dense_4/MatMul:product:05sequential_4/batch_normalization_12/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????(25
3sequential_4/batch_normalization_12/batchnorm/mul_1?
>sequential_4/batch_normalization_12/batchnorm/ReadVariableOp_1ReadVariableOpGsequential_4_batch_normalization_12_batchnorm_readvariableop_1_resource*
_output_shapes	
:?(*
dtype02@
>sequential_4/batch_normalization_12/batchnorm/ReadVariableOp_1?
3sequential_4/batch_normalization_12/batchnorm/mul_2MulFsequential_4/batch_normalization_12/batchnorm/ReadVariableOp_1:value:05sequential_4/batch_normalization_12/batchnorm/mul:z:0*
T0*
_output_shapes	
:?(25
3sequential_4/batch_normalization_12/batchnorm/mul_2?
>sequential_4/batch_normalization_12/batchnorm/ReadVariableOp_2ReadVariableOpGsequential_4_batch_normalization_12_batchnorm_readvariableop_2_resource*
_output_shapes	
:?(*
dtype02@
>sequential_4/batch_normalization_12/batchnorm/ReadVariableOp_2?
1sequential_4/batch_normalization_12/batchnorm/subSubFsequential_4/batch_normalization_12/batchnorm/ReadVariableOp_2:value:07sequential_4/batch_normalization_12/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?(23
1sequential_4/batch_normalization_12/batchnorm/sub?
3sequential_4/batch_normalization_12/batchnorm/add_1AddV27sequential_4/batch_normalization_12/batchnorm/mul_1:z:05sequential_4/batch_normalization_12/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????(25
3sequential_4/batch_normalization_12/batchnorm/add_1?
%sequential_4/leaky_re_lu_12/LeakyRelu	LeakyRelu7sequential_4/batch_normalization_12/batchnorm/add_1:z:0*(
_output_shapes
:??????????(2'
%sequential_4/leaky_re_lu_12/LeakyRelu?
sequential_4/reshape_4/ShapeShape3sequential_4/leaky_re_lu_12/LeakyRelu:activations:0*
T0*
_output_shapes
:2
sequential_4/reshape_4/Shape?
*sequential_4/reshape_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*sequential_4/reshape_4/strided_slice/stack?
,sequential_4/reshape_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_4/reshape_4/strided_slice/stack_1?
,sequential_4/reshape_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_4/reshape_4/strided_slice/stack_2?
$sequential_4/reshape_4/strided_sliceStridedSlice%sequential_4/reshape_4/Shape:output:03sequential_4/reshape_4/strided_slice/stack:output:05sequential_4/reshape_4/strided_slice/stack_1:output:05sequential_4/reshape_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$sequential_4/reshape_4/strided_slice?
&sequential_4/reshape_4/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2(
&sequential_4/reshape_4/Reshape/shape/1?
&sequential_4/reshape_4/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2(
&sequential_4/reshape_4/Reshape/shape/2?
&sequential_4/reshape_4/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :?2(
&sequential_4/reshape_4/Reshape/shape/3?
$sequential_4/reshape_4/Reshape/shapePack-sequential_4/reshape_4/strided_slice:output:0/sequential_4/reshape_4/Reshape/shape/1:output:0/sequential_4/reshape_4/Reshape/shape/2:output:0/sequential_4/reshape_4/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2&
$sequential_4/reshape_4/Reshape/shape?
sequential_4/reshape_4/ReshapeReshape3sequential_4/leaky_re_lu_12/LeakyRelu:activations:0-sequential_4/reshape_4/Reshape/shape:output:0*
T0*0
_output_shapes
:??????????2 
sequential_4/reshape_4/Reshape?
&sequential_4/conv2d_transpose_12/ShapeShape'sequential_4/reshape_4/Reshape:output:0*
T0*
_output_shapes
:2(
&sequential_4/conv2d_transpose_12/Shape?
4sequential_4/conv2d_transpose_12/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 26
4sequential_4/conv2d_transpose_12/strided_slice/stack?
6sequential_4/conv2d_transpose_12/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6sequential_4/conv2d_transpose_12/strided_slice/stack_1?
6sequential_4/conv2d_transpose_12/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6sequential_4/conv2d_transpose_12/strided_slice/stack_2?
.sequential_4/conv2d_transpose_12/strided_sliceStridedSlice/sequential_4/conv2d_transpose_12/Shape:output:0=sequential_4/conv2d_transpose_12/strided_slice/stack:output:0?sequential_4/conv2d_transpose_12/strided_slice/stack_1:output:0?sequential_4/conv2d_transpose_12/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask20
.sequential_4/conv2d_transpose_12/strided_slice?
(sequential_4/conv2d_transpose_12/stack/1Const*
_output_shapes
: *
dtype0*
value	B :
2*
(sequential_4/conv2d_transpose_12/stack/1?
(sequential_4/conv2d_transpose_12/stack/2Const*
_output_shapes
: *
dtype0*
value	B :2*
(sequential_4/conv2d_transpose_12/stack/2?
(sequential_4/conv2d_transpose_12/stack/3Const*
_output_shapes
: *
dtype0*
value
B :?2*
(sequential_4/conv2d_transpose_12/stack/3?
&sequential_4/conv2d_transpose_12/stackPack7sequential_4/conv2d_transpose_12/strided_slice:output:01sequential_4/conv2d_transpose_12/stack/1:output:01sequential_4/conv2d_transpose_12/stack/2:output:01sequential_4/conv2d_transpose_12/stack/3:output:0*
N*
T0*
_output_shapes
:2(
&sequential_4/conv2d_transpose_12/stack?
6sequential_4/conv2d_transpose_12/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 28
6sequential_4/conv2d_transpose_12/strided_slice_1/stack?
8sequential_4/conv2d_transpose_12/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2:
8sequential_4/conv2d_transpose_12/strided_slice_1/stack_1?
8sequential_4/conv2d_transpose_12/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2:
8sequential_4/conv2d_transpose_12/strided_slice_1/stack_2?
0sequential_4/conv2d_transpose_12/strided_slice_1StridedSlice/sequential_4/conv2d_transpose_12/stack:output:0?sequential_4/conv2d_transpose_12/strided_slice_1/stack:output:0Asequential_4/conv2d_transpose_12/strided_slice_1/stack_1:output:0Asequential_4/conv2d_transpose_12/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask22
0sequential_4/conv2d_transpose_12/strided_slice_1?
@sequential_4/conv2d_transpose_12/conv2d_transpose/ReadVariableOpReadVariableOpIsequential_4_conv2d_transpose_12_conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype02B
@sequential_4/conv2d_transpose_12/conv2d_transpose/ReadVariableOp?
1sequential_4/conv2d_transpose_12/conv2d_transposeConv2DBackpropInput/sequential_4/conv2d_transpose_12/stack:output:0Hsequential_4/conv2d_transpose_12/conv2d_transpose/ReadVariableOp:value:0'sequential_4/reshape_4/Reshape:output:0*
T0*0
_output_shapes
:?????????
?*
paddingSAME*
strides
23
1sequential_4/conv2d_transpose_12/conv2d_transpose?
2sequential_4/batch_normalization_13/ReadVariableOpReadVariableOp;sequential_4_batch_normalization_13_readvariableop_resource*
_output_shapes	
:?*
dtype024
2sequential_4/batch_normalization_13/ReadVariableOp?
4sequential_4/batch_normalization_13/ReadVariableOp_1ReadVariableOp=sequential_4_batch_normalization_13_readvariableop_1_resource*
_output_shapes	
:?*
dtype026
4sequential_4/batch_normalization_13/ReadVariableOp_1?
Csequential_4/batch_normalization_13/FusedBatchNormV3/ReadVariableOpReadVariableOpLsequential_4_batch_normalization_13_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02E
Csequential_4/batch_normalization_13/FusedBatchNormV3/ReadVariableOp?
Esequential_4/batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpNsequential_4_batch_normalization_13_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02G
Esequential_4/batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1?
4sequential_4/batch_normalization_13/FusedBatchNormV3FusedBatchNormV3:sequential_4/conv2d_transpose_12/conv2d_transpose:output:0:sequential_4/batch_normalization_13/ReadVariableOp:value:0<sequential_4/batch_normalization_13/ReadVariableOp_1:value:0Ksequential_4/batch_normalization_13/FusedBatchNormV3/ReadVariableOp:value:0Msequential_4/batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????
?:?:?:?:?:*
epsilon%o?:*
is_training( 26
4sequential_4/batch_normalization_13/FusedBatchNormV3?
%sequential_4/leaky_re_lu_13/LeakyRelu	LeakyRelu8sequential_4/batch_normalization_13/FusedBatchNormV3:y:0*0
_output_shapes
:?????????
?2'
%sequential_4/leaky_re_lu_13/LeakyRelu?
&sequential_4/conv2d_transpose_13/ShapeShape3sequential_4/leaky_re_lu_13/LeakyRelu:activations:0*
T0*
_output_shapes
:2(
&sequential_4/conv2d_transpose_13/Shape?
4sequential_4/conv2d_transpose_13/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 26
4sequential_4/conv2d_transpose_13/strided_slice/stack?
6sequential_4/conv2d_transpose_13/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6sequential_4/conv2d_transpose_13/strided_slice/stack_1?
6sequential_4/conv2d_transpose_13/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6sequential_4/conv2d_transpose_13/strided_slice/stack_2?
.sequential_4/conv2d_transpose_13/strided_sliceStridedSlice/sequential_4/conv2d_transpose_13/Shape:output:0=sequential_4/conv2d_transpose_13/strided_slice/stack:output:0?sequential_4/conv2d_transpose_13/strided_slice/stack_1:output:0?sequential_4/conv2d_transpose_13/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask20
.sequential_4/conv2d_transpose_13/strided_slice?
(sequential_4/conv2d_transpose_13/stack/1Const*
_output_shapes
: *
dtype0*
value	B :
2*
(sequential_4/conv2d_transpose_13/stack/1?
(sequential_4/conv2d_transpose_13/stack/2Const*
_output_shapes
: *
dtype0*
value	B :2*
(sequential_4/conv2d_transpose_13/stack/2?
(sequential_4/conv2d_transpose_13/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2*
(sequential_4/conv2d_transpose_13/stack/3?
&sequential_4/conv2d_transpose_13/stackPack7sequential_4/conv2d_transpose_13/strided_slice:output:01sequential_4/conv2d_transpose_13/stack/1:output:01sequential_4/conv2d_transpose_13/stack/2:output:01sequential_4/conv2d_transpose_13/stack/3:output:0*
N*
T0*
_output_shapes
:2(
&sequential_4/conv2d_transpose_13/stack?
6sequential_4/conv2d_transpose_13/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 28
6sequential_4/conv2d_transpose_13/strided_slice_1/stack?
8sequential_4/conv2d_transpose_13/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2:
8sequential_4/conv2d_transpose_13/strided_slice_1/stack_1?
8sequential_4/conv2d_transpose_13/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2:
8sequential_4/conv2d_transpose_13/strided_slice_1/stack_2?
0sequential_4/conv2d_transpose_13/strided_slice_1StridedSlice/sequential_4/conv2d_transpose_13/stack:output:0?sequential_4/conv2d_transpose_13/strided_slice_1/stack:output:0Asequential_4/conv2d_transpose_13/strided_slice_1/stack_1:output:0Asequential_4/conv2d_transpose_13/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask22
0sequential_4/conv2d_transpose_13/strided_slice_1?
@sequential_4/conv2d_transpose_13/conv2d_transpose/ReadVariableOpReadVariableOpIsequential_4_conv2d_transpose_13_conv2d_transpose_readvariableop_resource*'
_output_shapes
:@?*
dtype02B
@sequential_4/conv2d_transpose_13/conv2d_transpose/ReadVariableOp?
1sequential_4/conv2d_transpose_13/conv2d_transposeConv2DBackpropInput/sequential_4/conv2d_transpose_13/stack:output:0Hsequential_4/conv2d_transpose_13/conv2d_transpose/ReadVariableOp:value:03sequential_4/leaky_re_lu_13/LeakyRelu:activations:0*
T0*/
_output_shapes
:?????????
@*
paddingSAME*
strides
23
1sequential_4/conv2d_transpose_13/conv2d_transpose?
2sequential_4/batch_normalization_14/ReadVariableOpReadVariableOp;sequential_4_batch_normalization_14_readvariableop_resource*
_output_shapes
:@*
dtype024
2sequential_4/batch_normalization_14/ReadVariableOp?
4sequential_4/batch_normalization_14/ReadVariableOp_1ReadVariableOp=sequential_4_batch_normalization_14_readvariableop_1_resource*
_output_shapes
:@*
dtype026
4sequential_4/batch_normalization_14/ReadVariableOp_1?
Csequential_4/batch_normalization_14/FusedBatchNormV3/ReadVariableOpReadVariableOpLsequential_4_batch_normalization_14_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02E
Csequential_4/batch_normalization_14/FusedBatchNormV3/ReadVariableOp?
Esequential_4/batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpNsequential_4_batch_normalization_14_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02G
Esequential_4/batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1?
4sequential_4/batch_normalization_14/FusedBatchNormV3FusedBatchNormV3:sequential_4/conv2d_transpose_13/conv2d_transpose:output:0:sequential_4/batch_normalization_14/ReadVariableOp:value:0<sequential_4/batch_normalization_14/ReadVariableOp_1:value:0Ksequential_4/batch_normalization_14/FusedBatchNormV3/ReadVariableOp:value:0Msequential_4/batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????
@:@:@:@:@:*
epsilon%o?:*
is_training( 26
4sequential_4/batch_normalization_14/FusedBatchNormV3?
%sequential_4/leaky_re_lu_14/LeakyRelu	LeakyRelu8sequential_4/batch_normalization_14/FusedBatchNormV3:y:0*/
_output_shapes
:?????????
@2'
%sequential_4/leaky_re_lu_14/LeakyRelu?
&sequential_4/conv2d_transpose_14/ShapeShape3sequential_4/leaky_re_lu_14/LeakyRelu:activations:0*
T0*
_output_shapes
:2(
&sequential_4/conv2d_transpose_14/Shape?
4sequential_4/conv2d_transpose_14/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 26
4sequential_4/conv2d_transpose_14/strided_slice/stack?
6sequential_4/conv2d_transpose_14/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6sequential_4/conv2d_transpose_14/strided_slice/stack_1?
6sequential_4/conv2d_transpose_14/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6sequential_4/conv2d_transpose_14/strided_slice/stack_2?
.sequential_4/conv2d_transpose_14/strided_sliceStridedSlice/sequential_4/conv2d_transpose_14/Shape:output:0=sequential_4/conv2d_transpose_14/strided_slice/stack:output:0?sequential_4/conv2d_transpose_14/strided_slice/stack_1:output:0?sequential_4/conv2d_transpose_14/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask20
.sequential_4/conv2d_transpose_14/strided_slice?
(sequential_4/conv2d_transpose_14/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2*
(sequential_4/conv2d_transpose_14/stack/1?
(sequential_4/conv2d_transpose_14/stack/2Const*
_output_shapes
: *
dtype0*
value	B :2*
(sequential_4/conv2d_transpose_14/stack/2?
(sequential_4/conv2d_transpose_14/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2*
(sequential_4/conv2d_transpose_14/stack/3?
&sequential_4/conv2d_transpose_14/stackPack7sequential_4/conv2d_transpose_14/strided_slice:output:01sequential_4/conv2d_transpose_14/stack/1:output:01sequential_4/conv2d_transpose_14/stack/2:output:01sequential_4/conv2d_transpose_14/stack/3:output:0*
N*
T0*
_output_shapes
:2(
&sequential_4/conv2d_transpose_14/stack?
6sequential_4/conv2d_transpose_14/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 28
6sequential_4/conv2d_transpose_14/strided_slice_1/stack?
8sequential_4/conv2d_transpose_14/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2:
8sequential_4/conv2d_transpose_14/strided_slice_1/stack_1?
8sequential_4/conv2d_transpose_14/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2:
8sequential_4/conv2d_transpose_14/strided_slice_1/stack_2?
0sequential_4/conv2d_transpose_14/strided_slice_1StridedSlice/sequential_4/conv2d_transpose_14/stack:output:0?sequential_4/conv2d_transpose_14/strided_slice_1/stack:output:0Asequential_4/conv2d_transpose_14/strided_slice_1/stack_1:output:0Asequential_4/conv2d_transpose_14/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask22
0sequential_4/conv2d_transpose_14/strided_slice_1?
@sequential_4/conv2d_transpose_14/conv2d_transpose/ReadVariableOpReadVariableOpIsequential_4_conv2d_transpose_14_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@*
dtype02B
@sequential_4/conv2d_transpose_14/conv2d_transpose/ReadVariableOp?
1sequential_4/conv2d_transpose_14/conv2d_transposeConv2DBackpropInput/sequential_4/conv2d_transpose_14/stack:output:0Hsequential_4/conv2d_transpose_14/conv2d_transpose/ReadVariableOp:value:03sequential_4/leaky_re_lu_14/LeakyRelu:activations:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
23
1sequential_4/conv2d_transpose_14/conv2d_transpose?
%sequential_4/conv2d_transpose_14/TanhTanh:sequential_4/conv2d_transpose_14/conv2d_transpose:output:0*
T0*/
_output_shapes
:?????????2'
%sequential_4/conv2d_transpose_14/Tanh?
IdentityIdentity)sequential_4/conv2d_transpose_14/Tanh:y:0=^sequential_4/batch_normalization_12/batchnorm/ReadVariableOp?^sequential_4/batch_normalization_12/batchnorm/ReadVariableOp_1?^sequential_4/batch_normalization_12/batchnorm/ReadVariableOp_2A^sequential_4/batch_normalization_12/batchnorm/mul/ReadVariableOpD^sequential_4/batch_normalization_13/FusedBatchNormV3/ReadVariableOpF^sequential_4/batch_normalization_13/FusedBatchNormV3/ReadVariableOp_13^sequential_4/batch_normalization_13/ReadVariableOp5^sequential_4/batch_normalization_13/ReadVariableOp_1D^sequential_4/batch_normalization_14/FusedBatchNormV3/ReadVariableOpF^sequential_4/batch_normalization_14/FusedBatchNormV3/ReadVariableOp_13^sequential_4/batch_normalization_14/ReadVariableOp5^sequential_4/batch_normalization_14/ReadVariableOp_1A^sequential_4/conv2d_transpose_12/conv2d_transpose/ReadVariableOpA^sequential_4/conv2d_transpose_13/conv2d_transpose/ReadVariableOpA^sequential_4/conv2d_transpose_14/conv2d_transpose/ReadVariableOp+^sequential_4/dense_4/MatMul/ReadVariableOp*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????2: : : : : : : : : : : : : : : : 2|
<sequential_4/batch_normalization_12/batchnorm/ReadVariableOp<sequential_4/batch_normalization_12/batchnorm/ReadVariableOp2?
>sequential_4/batch_normalization_12/batchnorm/ReadVariableOp_1>sequential_4/batch_normalization_12/batchnorm/ReadVariableOp_12?
>sequential_4/batch_normalization_12/batchnorm/ReadVariableOp_2>sequential_4/batch_normalization_12/batchnorm/ReadVariableOp_22?
@sequential_4/batch_normalization_12/batchnorm/mul/ReadVariableOp@sequential_4/batch_normalization_12/batchnorm/mul/ReadVariableOp2?
Csequential_4/batch_normalization_13/FusedBatchNormV3/ReadVariableOpCsequential_4/batch_normalization_13/FusedBatchNormV3/ReadVariableOp2?
Esequential_4/batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1Esequential_4/batch_normalization_13/FusedBatchNormV3/ReadVariableOp_12h
2sequential_4/batch_normalization_13/ReadVariableOp2sequential_4/batch_normalization_13/ReadVariableOp2l
4sequential_4/batch_normalization_13/ReadVariableOp_14sequential_4/batch_normalization_13/ReadVariableOp_12?
Csequential_4/batch_normalization_14/FusedBatchNormV3/ReadVariableOpCsequential_4/batch_normalization_14/FusedBatchNormV3/ReadVariableOp2?
Esequential_4/batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1Esequential_4/batch_normalization_14/FusedBatchNormV3/ReadVariableOp_12h
2sequential_4/batch_normalization_14/ReadVariableOp2sequential_4/batch_normalization_14/ReadVariableOp2l
4sequential_4/batch_normalization_14/ReadVariableOp_14sequential_4/batch_normalization_14/ReadVariableOp_12?
@sequential_4/conv2d_transpose_12/conv2d_transpose/ReadVariableOp@sequential_4/conv2d_transpose_12/conv2d_transpose/ReadVariableOp2?
@sequential_4/conv2d_transpose_13/conv2d_transpose/ReadVariableOp@sequential_4/conv2d_transpose_13/conv2d_transpose/ReadVariableOp2?
@sequential_4/conv2d_transpose_14/conv2d_transpose/ReadVariableOp@sequential_4/conv2d_transpose_14/conv2d_transpose/ReadVariableOp2X
*sequential_4/dense_4/MatMul/ReadVariableOp*sequential_4/dense_4/MatMul/ReadVariableOp:V R
'
_output_shapes
:?????????2
'
_user_specified_namedense_4_input
?
?
$__inference_signature_wrapper_311386
dense_4_input
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
StatefulPartitionedCallStatefulPartitionedCalldense_4_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
:?????????*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? **
f%R#
!__inference__wrapped_model_3103722
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????2: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
'
_output_shapes
:?????????2
'
_user_specified_namedense_4_input
?
?
R__inference_batch_normalization_14_layer_call_and_return_conditional_losses_310776

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
?
?
R__inference_batch_normalization_14_layer_call_and_return_conditional_losses_310820

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
?
F
*__inference_reshape_4_layer_call_fn_311809

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
GPU2*0J 8? *N
fIRG
E__inference_reshape_4_layer_call_and_return_conditional_losses_3109842
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
?
f
J__inference_leaky_re_lu_12_layer_call_and_return_conditional_losses_311804

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
??
?
H__inference_sequential_4_layer_call_and_return_conditional_losses_311700

inputs9
&dense_4_matmul_readvariableop_resource:	2?(M
>batch_normalization_12_assignmovingavg_readvariableop_resource:	?(O
@batch_normalization_12_assignmovingavg_1_readvariableop_resource:	?(K
<batch_normalization_12_batchnorm_mul_readvariableop_resource:	?(G
8batch_normalization_12_batchnorm_readvariableop_resource:	?(X
<conv2d_transpose_12_conv2d_transpose_readvariableop_resource:??=
.batch_normalization_13_readvariableop_resource:	??
0batch_normalization_13_readvariableop_1_resource:	?N
?batch_normalization_13_fusedbatchnormv3_readvariableop_resource:	?P
Abatch_normalization_13_fusedbatchnormv3_readvariableop_1_resource:	?W
<conv2d_transpose_13_conv2d_transpose_readvariableop_resource:@?<
.batch_normalization_14_readvariableop_resource:@>
0batch_normalization_14_readvariableop_1_resource:@M
?batch_normalization_14_fusedbatchnormv3_readvariableop_resource:@O
Abatch_normalization_14_fusedbatchnormv3_readvariableop_1_resource:@V
<conv2d_transpose_14_conv2d_transpose_readvariableop_resource:@
identity??&batch_normalization_12/AssignMovingAvg?5batch_normalization_12/AssignMovingAvg/ReadVariableOp?(batch_normalization_12/AssignMovingAvg_1?7batch_normalization_12/AssignMovingAvg_1/ReadVariableOp?/batch_normalization_12/batchnorm/ReadVariableOp?3batch_normalization_12/batchnorm/mul/ReadVariableOp?%batch_normalization_13/AssignNewValue?'batch_normalization_13/AssignNewValue_1?6batch_normalization_13/FusedBatchNormV3/ReadVariableOp?8batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_13/ReadVariableOp?'batch_normalization_13/ReadVariableOp_1?%batch_normalization_14/AssignNewValue?'batch_normalization_14/AssignNewValue_1?6batch_normalization_14/FusedBatchNormV3/ReadVariableOp?8batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_14/ReadVariableOp?'batch_normalization_14/ReadVariableOp_1?3conv2d_transpose_12/conv2d_transpose/ReadVariableOp?3conv2d_transpose_13/conv2d_transpose/ReadVariableOp?3conv2d_transpose_14/conv2d_transpose/ReadVariableOp?dense_4/MatMul/ReadVariableOp?
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource*
_output_shapes
:	2?(*
dtype02
dense_4/MatMul/ReadVariableOp?
dense_4/MatMulMatMulinputs%dense_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????(2
dense_4/MatMul?
5batch_normalization_12/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 27
5batch_normalization_12/moments/mean/reduction_indices?
#batch_normalization_12/moments/meanMeandense_4/MatMul:product:0>batch_normalization_12/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?(*
	keep_dims(2%
#batch_normalization_12/moments/mean?
+batch_normalization_12/moments/StopGradientStopGradient,batch_normalization_12/moments/mean:output:0*
T0*
_output_shapes
:	?(2-
+batch_normalization_12/moments/StopGradient?
0batch_normalization_12/moments/SquaredDifferenceSquaredDifferencedense_4/MatMul:product:04batch_normalization_12/moments/StopGradient:output:0*
T0*(
_output_shapes
:??????????(22
0batch_normalization_12/moments/SquaredDifference?
9batch_normalization_12/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2;
9batch_normalization_12/moments/variance/reduction_indices?
'batch_normalization_12/moments/varianceMean4batch_normalization_12/moments/SquaredDifference:z:0Bbatch_normalization_12/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?(*
	keep_dims(2)
'batch_normalization_12/moments/variance?
&batch_normalization_12/moments/SqueezeSqueeze,batch_normalization_12/moments/mean:output:0*
T0*
_output_shapes	
:?(*
squeeze_dims
 2(
&batch_normalization_12/moments/Squeeze?
(batch_normalization_12/moments/Squeeze_1Squeeze0batch_normalization_12/moments/variance:output:0*
T0*
_output_shapes	
:?(*
squeeze_dims
 2*
(batch_normalization_12/moments/Squeeze_1?
,batch_normalization_12/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2.
,batch_normalization_12/AssignMovingAvg/decay?
5batch_normalization_12/AssignMovingAvg/ReadVariableOpReadVariableOp>batch_normalization_12_assignmovingavg_readvariableop_resource*
_output_shapes	
:?(*
dtype027
5batch_normalization_12/AssignMovingAvg/ReadVariableOp?
*batch_normalization_12/AssignMovingAvg/subSub=batch_normalization_12/AssignMovingAvg/ReadVariableOp:value:0/batch_normalization_12/moments/Squeeze:output:0*
T0*
_output_shapes	
:?(2,
*batch_normalization_12/AssignMovingAvg/sub?
*batch_normalization_12/AssignMovingAvg/mulMul.batch_normalization_12/AssignMovingAvg/sub:z:05batch_normalization_12/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:?(2,
*batch_normalization_12/AssignMovingAvg/mul?
&batch_normalization_12/AssignMovingAvgAssignSubVariableOp>batch_normalization_12_assignmovingavg_readvariableop_resource.batch_normalization_12/AssignMovingAvg/mul:z:06^batch_normalization_12/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02(
&batch_normalization_12/AssignMovingAvg?
.batch_normalization_12/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<20
.batch_normalization_12/AssignMovingAvg_1/decay?
7batch_normalization_12/AssignMovingAvg_1/ReadVariableOpReadVariableOp@batch_normalization_12_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?(*
dtype029
7batch_normalization_12/AssignMovingAvg_1/ReadVariableOp?
,batch_normalization_12/AssignMovingAvg_1/subSub?batch_normalization_12/AssignMovingAvg_1/ReadVariableOp:value:01batch_normalization_12/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?(2.
,batch_normalization_12/AssignMovingAvg_1/sub?
,batch_normalization_12/AssignMovingAvg_1/mulMul0batch_normalization_12/AssignMovingAvg_1/sub:z:07batch_normalization_12/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:?(2.
,batch_normalization_12/AssignMovingAvg_1/mul?
(batch_normalization_12/AssignMovingAvg_1AssignSubVariableOp@batch_normalization_12_assignmovingavg_1_readvariableop_resource0batch_normalization_12/AssignMovingAvg_1/mul:z:08^batch_normalization_12/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02*
(batch_normalization_12/AssignMovingAvg_1?
&batch_normalization_12/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2(
&batch_normalization_12/batchnorm/add/y?
$batch_normalization_12/batchnorm/addAddV21batch_normalization_12/moments/Squeeze_1:output:0/batch_normalization_12/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?(2&
$batch_normalization_12/batchnorm/add?
&batch_normalization_12/batchnorm/RsqrtRsqrt(batch_normalization_12/batchnorm/add:z:0*
T0*
_output_shapes	
:?(2(
&batch_normalization_12/batchnorm/Rsqrt?
3batch_normalization_12/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_12_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?(*
dtype025
3batch_normalization_12/batchnorm/mul/ReadVariableOp?
$batch_normalization_12/batchnorm/mulMul*batch_normalization_12/batchnorm/Rsqrt:y:0;batch_normalization_12/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?(2&
$batch_normalization_12/batchnorm/mul?
&batch_normalization_12/batchnorm/mul_1Muldense_4/MatMul:product:0(batch_normalization_12/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????(2(
&batch_normalization_12/batchnorm/mul_1?
&batch_normalization_12/batchnorm/mul_2Mul/batch_normalization_12/moments/Squeeze:output:0(batch_normalization_12/batchnorm/mul:z:0*
T0*
_output_shapes	
:?(2(
&batch_normalization_12/batchnorm/mul_2?
/batch_normalization_12/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_12_batchnorm_readvariableop_resource*
_output_shapes	
:?(*
dtype021
/batch_normalization_12/batchnorm/ReadVariableOp?
$batch_normalization_12/batchnorm/subSub7batch_normalization_12/batchnorm/ReadVariableOp:value:0*batch_normalization_12/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?(2&
$batch_normalization_12/batchnorm/sub?
&batch_normalization_12/batchnorm/add_1AddV2*batch_normalization_12/batchnorm/mul_1:z:0(batch_normalization_12/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????(2(
&batch_normalization_12/batchnorm/add_1?
leaky_re_lu_12/LeakyRelu	LeakyRelu*batch_normalization_12/batchnorm/add_1:z:0*(
_output_shapes
:??????????(2
leaky_re_lu_12/LeakyRelux
reshape_4/ShapeShape&leaky_re_lu_12/LeakyRelu:activations:0*
T0*
_output_shapes
:2
reshape_4/Shape?
reshape_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
reshape_4/strided_slice/stack?
reshape_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_4/strided_slice/stack_1?
reshape_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_4/strided_slice/stack_2?
reshape_4/strided_sliceStridedSlicereshape_4/Shape:output:0&reshape_4/strided_slice/stack:output:0(reshape_4/strided_slice/stack_1:output:0(reshape_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_4/strided_slicex
reshape_4/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_4/Reshape/shape/1x
reshape_4/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_4/Reshape/shape/2y
reshape_4/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :?2
reshape_4/Reshape/shape/3?
reshape_4/Reshape/shapePack reshape_4/strided_slice:output:0"reshape_4/Reshape/shape/1:output:0"reshape_4/Reshape/shape/2:output:0"reshape_4/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
reshape_4/Reshape/shape?
reshape_4/ReshapeReshape&leaky_re_lu_12/LeakyRelu:activations:0 reshape_4/Reshape/shape:output:0*
T0*0
_output_shapes
:??????????2
reshape_4/Reshape?
conv2d_transpose_12/ShapeShapereshape_4/Reshape:output:0*
T0*
_output_shapes
:2
conv2d_transpose_12/Shape?
'conv2d_transpose_12/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_12/strided_slice/stack?
)conv2d_transpose_12/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_12/strided_slice/stack_1?
)conv2d_transpose_12/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_12/strided_slice/stack_2?
!conv2d_transpose_12/strided_sliceStridedSlice"conv2d_transpose_12/Shape:output:00conv2d_transpose_12/strided_slice/stack:output:02conv2d_transpose_12/strided_slice/stack_1:output:02conv2d_transpose_12/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_12/strided_slice|
conv2d_transpose_12/stack/1Const*
_output_shapes
: *
dtype0*
value	B :
2
conv2d_transpose_12/stack/1|
conv2d_transpose_12/stack/2Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_12/stack/2}
conv2d_transpose_12/stack/3Const*
_output_shapes
: *
dtype0*
value
B :?2
conv2d_transpose_12/stack/3?
conv2d_transpose_12/stackPack*conv2d_transpose_12/strided_slice:output:0$conv2d_transpose_12/stack/1:output:0$conv2d_transpose_12/stack/2:output:0$conv2d_transpose_12/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_12/stack?
)conv2d_transpose_12/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_12/strided_slice_1/stack?
+conv2d_transpose_12/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_12/strided_slice_1/stack_1?
+conv2d_transpose_12/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_12/strided_slice_1/stack_2?
#conv2d_transpose_12/strided_slice_1StridedSlice"conv2d_transpose_12/stack:output:02conv2d_transpose_12/strided_slice_1/stack:output:04conv2d_transpose_12/strided_slice_1/stack_1:output:04conv2d_transpose_12/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_12/strided_slice_1?
3conv2d_transpose_12/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_12_conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype025
3conv2d_transpose_12/conv2d_transpose/ReadVariableOp?
$conv2d_transpose_12/conv2d_transposeConv2DBackpropInput"conv2d_transpose_12/stack:output:0;conv2d_transpose_12/conv2d_transpose/ReadVariableOp:value:0reshape_4/Reshape:output:0*
T0*0
_output_shapes
:?????????
?*
paddingSAME*
strides
2&
$conv2d_transpose_12/conv2d_transpose?
%batch_normalization_13/ReadVariableOpReadVariableOp.batch_normalization_13_readvariableop_resource*
_output_shapes	
:?*
dtype02'
%batch_normalization_13/ReadVariableOp?
'batch_normalization_13/ReadVariableOp_1ReadVariableOp0batch_normalization_13_readvariableop_1_resource*
_output_shapes	
:?*
dtype02)
'batch_normalization_13/ReadVariableOp_1?
6batch_normalization_13/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_13_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype028
6batch_normalization_13/FusedBatchNormV3/ReadVariableOp?
8batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_13_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02:
8batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1?
'batch_normalization_13/FusedBatchNormV3FusedBatchNormV3-conv2d_transpose_12/conv2d_transpose:output:0-batch_normalization_13/ReadVariableOp:value:0/batch_normalization_13/ReadVariableOp_1:value:0>batch_normalization_13/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????
?:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2)
'batch_normalization_13/FusedBatchNormV3?
%batch_normalization_13/AssignNewValueAssignVariableOp?batch_normalization_13_fusedbatchnormv3_readvariableop_resource4batch_normalization_13/FusedBatchNormV3:batch_mean:07^batch_normalization_13/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02'
%batch_normalization_13/AssignNewValue?
'batch_normalization_13/AssignNewValue_1AssignVariableOpAbatch_normalization_13_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_13/FusedBatchNormV3:batch_variance:09^batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02)
'batch_normalization_13/AssignNewValue_1?
leaky_re_lu_13/LeakyRelu	LeakyRelu+batch_normalization_13/FusedBatchNormV3:y:0*0
_output_shapes
:?????????
?2
leaky_re_lu_13/LeakyRelu?
conv2d_transpose_13/ShapeShape&leaky_re_lu_13/LeakyRelu:activations:0*
T0*
_output_shapes
:2
conv2d_transpose_13/Shape?
'conv2d_transpose_13/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_13/strided_slice/stack?
)conv2d_transpose_13/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_13/strided_slice/stack_1?
)conv2d_transpose_13/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_13/strided_slice/stack_2?
!conv2d_transpose_13/strided_sliceStridedSlice"conv2d_transpose_13/Shape:output:00conv2d_transpose_13/strided_slice/stack:output:02conv2d_transpose_13/strided_slice/stack_1:output:02conv2d_transpose_13/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_13/strided_slice|
conv2d_transpose_13/stack/1Const*
_output_shapes
: *
dtype0*
value	B :
2
conv2d_transpose_13/stack/1|
conv2d_transpose_13/stack/2Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_13/stack/2|
conv2d_transpose_13/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2
conv2d_transpose_13/stack/3?
conv2d_transpose_13/stackPack*conv2d_transpose_13/strided_slice:output:0$conv2d_transpose_13/stack/1:output:0$conv2d_transpose_13/stack/2:output:0$conv2d_transpose_13/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_13/stack?
)conv2d_transpose_13/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_13/strided_slice_1/stack?
+conv2d_transpose_13/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_13/strided_slice_1/stack_1?
+conv2d_transpose_13/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_13/strided_slice_1/stack_2?
#conv2d_transpose_13/strided_slice_1StridedSlice"conv2d_transpose_13/stack:output:02conv2d_transpose_13/strided_slice_1/stack:output:04conv2d_transpose_13/strided_slice_1/stack_1:output:04conv2d_transpose_13/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_13/strided_slice_1?
3conv2d_transpose_13/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_13_conv2d_transpose_readvariableop_resource*'
_output_shapes
:@?*
dtype025
3conv2d_transpose_13/conv2d_transpose/ReadVariableOp?
$conv2d_transpose_13/conv2d_transposeConv2DBackpropInput"conv2d_transpose_13/stack:output:0;conv2d_transpose_13/conv2d_transpose/ReadVariableOp:value:0&leaky_re_lu_13/LeakyRelu:activations:0*
T0*/
_output_shapes
:?????????
@*
paddingSAME*
strides
2&
$conv2d_transpose_13/conv2d_transpose?
%batch_normalization_14/ReadVariableOpReadVariableOp.batch_normalization_14_readvariableop_resource*
_output_shapes
:@*
dtype02'
%batch_normalization_14/ReadVariableOp?
'batch_normalization_14/ReadVariableOp_1ReadVariableOp0batch_normalization_14_readvariableop_1_resource*
_output_shapes
:@*
dtype02)
'batch_normalization_14/ReadVariableOp_1?
6batch_normalization_14/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_14_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype028
6batch_normalization_14/FusedBatchNormV3/ReadVariableOp?
8batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_14_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02:
8batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1?
'batch_normalization_14/FusedBatchNormV3FusedBatchNormV3-conv2d_transpose_13/conv2d_transpose:output:0-batch_normalization_14/ReadVariableOp:value:0/batch_normalization_14/ReadVariableOp_1:value:0>batch_normalization_14/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????
@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2)
'batch_normalization_14/FusedBatchNormV3?
%batch_normalization_14/AssignNewValueAssignVariableOp?batch_normalization_14_fusedbatchnormv3_readvariableop_resource4batch_normalization_14/FusedBatchNormV3:batch_mean:07^batch_normalization_14/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02'
%batch_normalization_14/AssignNewValue?
'batch_normalization_14/AssignNewValue_1AssignVariableOpAbatch_normalization_14_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_14/FusedBatchNormV3:batch_variance:09^batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02)
'batch_normalization_14/AssignNewValue_1?
leaky_re_lu_14/LeakyRelu	LeakyRelu+batch_normalization_14/FusedBatchNormV3:y:0*/
_output_shapes
:?????????
@2
leaky_re_lu_14/LeakyRelu?
conv2d_transpose_14/ShapeShape&leaky_re_lu_14/LeakyRelu:activations:0*
T0*
_output_shapes
:2
conv2d_transpose_14/Shape?
'conv2d_transpose_14/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_14/strided_slice/stack?
)conv2d_transpose_14/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_14/strided_slice/stack_1?
)conv2d_transpose_14/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_14/strided_slice/stack_2?
!conv2d_transpose_14/strided_sliceStridedSlice"conv2d_transpose_14/Shape:output:00conv2d_transpose_14/strided_slice/stack:output:02conv2d_transpose_14/strided_slice/stack_1:output:02conv2d_transpose_14/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_14/strided_slice|
conv2d_transpose_14/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_14/stack/1|
conv2d_transpose_14/stack/2Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_14/stack/2|
conv2d_transpose_14/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_14/stack/3?
conv2d_transpose_14/stackPack*conv2d_transpose_14/strided_slice:output:0$conv2d_transpose_14/stack/1:output:0$conv2d_transpose_14/stack/2:output:0$conv2d_transpose_14/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_14/stack?
)conv2d_transpose_14/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_14/strided_slice_1/stack?
+conv2d_transpose_14/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_14/strided_slice_1/stack_1?
+conv2d_transpose_14/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_14/strided_slice_1/stack_2?
#conv2d_transpose_14/strided_slice_1StridedSlice"conv2d_transpose_14/stack:output:02conv2d_transpose_14/strided_slice_1/stack:output:04conv2d_transpose_14/strided_slice_1/stack_1:output:04conv2d_transpose_14/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_14/strided_slice_1?
3conv2d_transpose_14/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_14_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@*
dtype025
3conv2d_transpose_14/conv2d_transpose/ReadVariableOp?
$conv2d_transpose_14/conv2d_transposeConv2DBackpropInput"conv2d_transpose_14/stack:output:0;conv2d_transpose_14/conv2d_transpose/ReadVariableOp:value:0&leaky_re_lu_14/LeakyRelu:activations:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2&
$conv2d_transpose_14/conv2d_transpose?
conv2d_transpose_14/TanhTanh-conv2d_transpose_14/conv2d_transpose:output:0*
T0*/
_output_shapes
:?????????2
conv2d_transpose_14/Tanh?	
IdentityIdentityconv2d_transpose_14/Tanh:y:0'^batch_normalization_12/AssignMovingAvg6^batch_normalization_12/AssignMovingAvg/ReadVariableOp)^batch_normalization_12/AssignMovingAvg_18^batch_normalization_12/AssignMovingAvg_1/ReadVariableOp0^batch_normalization_12/batchnorm/ReadVariableOp4^batch_normalization_12/batchnorm/mul/ReadVariableOp&^batch_normalization_13/AssignNewValue(^batch_normalization_13/AssignNewValue_17^batch_normalization_13/FusedBatchNormV3/ReadVariableOp9^batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_13/ReadVariableOp(^batch_normalization_13/ReadVariableOp_1&^batch_normalization_14/AssignNewValue(^batch_normalization_14/AssignNewValue_17^batch_normalization_14/FusedBatchNormV3/ReadVariableOp9^batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_14/ReadVariableOp(^batch_normalization_14/ReadVariableOp_14^conv2d_transpose_12/conv2d_transpose/ReadVariableOp4^conv2d_transpose_13/conv2d_transpose/ReadVariableOp4^conv2d_transpose_14/conv2d_transpose/ReadVariableOp^dense_4/MatMul/ReadVariableOp*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????2: : : : : : : : : : : : : : : : 2P
&batch_normalization_12/AssignMovingAvg&batch_normalization_12/AssignMovingAvg2n
5batch_normalization_12/AssignMovingAvg/ReadVariableOp5batch_normalization_12/AssignMovingAvg/ReadVariableOp2T
(batch_normalization_12/AssignMovingAvg_1(batch_normalization_12/AssignMovingAvg_12r
7batch_normalization_12/AssignMovingAvg_1/ReadVariableOp7batch_normalization_12/AssignMovingAvg_1/ReadVariableOp2b
/batch_normalization_12/batchnorm/ReadVariableOp/batch_normalization_12/batchnorm/ReadVariableOp2j
3batch_normalization_12/batchnorm/mul/ReadVariableOp3batch_normalization_12/batchnorm/mul/ReadVariableOp2N
%batch_normalization_13/AssignNewValue%batch_normalization_13/AssignNewValue2R
'batch_normalization_13/AssignNewValue_1'batch_normalization_13/AssignNewValue_12p
6batch_normalization_13/FusedBatchNormV3/ReadVariableOp6batch_normalization_13/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_13/FusedBatchNormV3/ReadVariableOp_18batch_normalization_13/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_13/ReadVariableOp%batch_normalization_13/ReadVariableOp2R
'batch_normalization_13/ReadVariableOp_1'batch_normalization_13/ReadVariableOp_12N
%batch_normalization_14/AssignNewValue%batch_normalization_14/AssignNewValue2R
'batch_normalization_14/AssignNewValue_1'batch_normalization_14/AssignNewValue_12p
6batch_normalization_14/FusedBatchNormV3/ReadVariableOp6batch_normalization_14/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_14/FusedBatchNormV3/ReadVariableOp_18batch_normalization_14/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_14/ReadVariableOp%batch_normalization_14/ReadVariableOp2R
'batch_normalization_14/ReadVariableOp_1'batch_normalization_14/ReadVariableOp_12j
3conv2d_transpose_12/conv2d_transpose/ReadVariableOp3conv2d_transpose_12/conv2d_transpose/ReadVariableOp2j
3conv2d_transpose_13/conv2d_transpose/ReadVariableOp3conv2d_transpose_13/conv2d_transpose/ReadVariableOp2j
3conv2d_transpose_14/conv2d_transpose/ReadVariableOp3conv2d_transpose_14/conv2d_transpose/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_14_layer_call_and_return_conditional_losses_311957

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
?
?
R__inference_batch_normalization_13_layer_call_and_return_conditional_losses_310639

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
?
?
7__inference_batch_normalization_12_layer_call_fn_311727

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
GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_12_layer_call_and_return_conditional_losses_3103962
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
?
f
J__inference_leaky_re_lu_14_layer_call_and_return_conditional_losses_311022

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
?J
?
"__inference__traced_restore_312096
file_prefix2
assignvariableop_dense_4_kernel:	2?(>
/assignvariableop_1_batch_normalization_12_gamma:	?(=
.assignvariableop_2_batch_normalization_12_beta:	?(D
5assignvariableop_3_batch_normalization_12_moving_mean:	?(H
9assignvariableop_4_batch_normalization_12_moving_variance:	?(I
-assignvariableop_5_conv2d_transpose_12_kernel:??>
/assignvariableop_6_batch_normalization_13_gamma:	?=
.assignvariableop_7_batch_normalization_13_beta:	?D
5assignvariableop_8_batch_normalization_13_moving_mean:	?H
9assignvariableop_9_batch_normalization_13_moving_variance:	?I
.assignvariableop_10_conv2d_transpose_13_kernel:@?>
0assignvariableop_11_batch_normalization_14_gamma:@=
/assignvariableop_12_batch_normalization_14_beta:@D
6assignvariableop_13_batch_normalization_14_moving_mean:@H
:assignvariableop_14_batch_normalization_14_moving_variance:@H
.assignvariableop_15_conv2d_transpose_14_kernel:@
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
AssignVariableOpAssignVariableOpassignvariableop_dense_4_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp/assignvariableop_1_batch_normalization_12_gammaIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp.assignvariableop_2_batch_normalization_12_betaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp5assignvariableop_3_batch_normalization_12_moving_meanIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp9assignvariableop_4_batch_normalization_12_moving_varianceIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp-assignvariableop_5_conv2d_transpose_12_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp/assignvariableop_6_batch_normalization_13_gammaIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp.assignvariableop_7_batch_normalization_13_betaIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp5assignvariableop_8_batch_normalization_13_moving_meanIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp9assignvariableop_9_batch_normalization_13_moving_varianceIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp.assignvariableop_10_conv2d_transpose_13_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp0assignvariableop_11_batch_normalization_14_gammaIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_batch_normalization_14_betaIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp6assignvariableop_13_batch_normalization_14_moving_meanIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp:assignvariableop_14_batch_normalization_14_moving_varianceIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp.assignvariableop_15_conv2d_transpose_14_kernelIdentity_15:output:0"/device:CPU:0*
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
??
?
H__inference_sequential_4_layer_call_and_return_conditional_losses_311573

inputs9
&dense_4_matmul_readvariableop_resource:	2?(G
8batch_normalization_12_batchnorm_readvariableop_resource:	?(K
<batch_normalization_12_batchnorm_mul_readvariableop_resource:	?(I
:batch_normalization_12_batchnorm_readvariableop_1_resource:	?(I
:batch_normalization_12_batchnorm_readvariableop_2_resource:	?(X
<conv2d_transpose_12_conv2d_transpose_readvariableop_resource:??=
.batch_normalization_13_readvariableop_resource:	??
0batch_normalization_13_readvariableop_1_resource:	?N
?batch_normalization_13_fusedbatchnormv3_readvariableop_resource:	?P
Abatch_normalization_13_fusedbatchnormv3_readvariableop_1_resource:	?W
<conv2d_transpose_13_conv2d_transpose_readvariableop_resource:@?<
.batch_normalization_14_readvariableop_resource:@>
0batch_normalization_14_readvariableop_1_resource:@M
?batch_normalization_14_fusedbatchnormv3_readvariableop_resource:@O
Abatch_normalization_14_fusedbatchnormv3_readvariableop_1_resource:@V
<conv2d_transpose_14_conv2d_transpose_readvariableop_resource:@
identity??/batch_normalization_12/batchnorm/ReadVariableOp?1batch_normalization_12/batchnorm/ReadVariableOp_1?1batch_normalization_12/batchnorm/ReadVariableOp_2?3batch_normalization_12/batchnorm/mul/ReadVariableOp?6batch_normalization_13/FusedBatchNormV3/ReadVariableOp?8batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_13/ReadVariableOp?'batch_normalization_13/ReadVariableOp_1?6batch_normalization_14/FusedBatchNormV3/ReadVariableOp?8batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_14/ReadVariableOp?'batch_normalization_14/ReadVariableOp_1?3conv2d_transpose_12/conv2d_transpose/ReadVariableOp?3conv2d_transpose_13/conv2d_transpose/ReadVariableOp?3conv2d_transpose_14/conv2d_transpose/ReadVariableOp?dense_4/MatMul/ReadVariableOp?
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource*
_output_shapes
:	2?(*
dtype02
dense_4/MatMul/ReadVariableOp?
dense_4/MatMulMatMulinputs%dense_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????(2
dense_4/MatMul?
/batch_normalization_12/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_12_batchnorm_readvariableop_resource*
_output_shapes	
:?(*
dtype021
/batch_normalization_12/batchnorm/ReadVariableOp?
&batch_normalization_12/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2(
&batch_normalization_12/batchnorm/add/y?
$batch_normalization_12/batchnorm/addAddV27batch_normalization_12/batchnorm/ReadVariableOp:value:0/batch_normalization_12/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?(2&
$batch_normalization_12/batchnorm/add?
&batch_normalization_12/batchnorm/RsqrtRsqrt(batch_normalization_12/batchnorm/add:z:0*
T0*
_output_shapes	
:?(2(
&batch_normalization_12/batchnorm/Rsqrt?
3batch_normalization_12/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_12_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?(*
dtype025
3batch_normalization_12/batchnorm/mul/ReadVariableOp?
$batch_normalization_12/batchnorm/mulMul*batch_normalization_12/batchnorm/Rsqrt:y:0;batch_normalization_12/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?(2&
$batch_normalization_12/batchnorm/mul?
&batch_normalization_12/batchnorm/mul_1Muldense_4/MatMul:product:0(batch_normalization_12/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????(2(
&batch_normalization_12/batchnorm/mul_1?
1batch_normalization_12/batchnorm/ReadVariableOp_1ReadVariableOp:batch_normalization_12_batchnorm_readvariableop_1_resource*
_output_shapes	
:?(*
dtype023
1batch_normalization_12/batchnorm/ReadVariableOp_1?
&batch_normalization_12/batchnorm/mul_2Mul9batch_normalization_12/batchnorm/ReadVariableOp_1:value:0(batch_normalization_12/batchnorm/mul:z:0*
T0*
_output_shapes	
:?(2(
&batch_normalization_12/batchnorm/mul_2?
1batch_normalization_12/batchnorm/ReadVariableOp_2ReadVariableOp:batch_normalization_12_batchnorm_readvariableop_2_resource*
_output_shapes	
:?(*
dtype023
1batch_normalization_12/batchnorm/ReadVariableOp_2?
$batch_normalization_12/batchnorm/subSub9batch_normalization_12/batchnorm/ReadVariableOp_2:value:0*batch_normalization_12/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?(2&
$batch_normalization_12/batchnorm/sub?
&batch_normalization_12/batchnorm/add_1AddV2*batch_normalization_12/batchnorm/mul_1:z:0(batch_normalization_12/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????(2(
&batch_normalization_12/batchnorm/add_1?
leaky_re_lu_12/LeakyRelu	LeakyRelu*batch_normalization_12/batchnorm/add_1:z:0*(
_output_shapes
:??????????(2
leaky_re_lu_12/LeakyRelux
reshape_4/ShapeShape&leaky_re_lu_12/LeakyRelu:activations:0*
T0*
_output_shapes
:2
reshape_4/Shape?
reshape_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
reshape_4/strided_slice/stack?
reshape_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_4/strided_slice/stack_1?
reshape_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_4/strided_slice/stack_2?
reshape_4/strided_sliceStridedSlicereshape_4/Shape:output:0&reshape_4/strided_slice/stack:output:0(reshape_4/strided_slice/stack_1:output:0(reshape_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_4/strided_slicex
reshape_4/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_4/Reshape/shape/1x
reshape_4/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_4/Reshape/shape/2y
reshape_4/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :?2
reshape_4/Reshape/shape/3?
reshape_4/Reshape/shapePack reshape_4/strided_slice:output:0"reshape_4/Reshape/shape/1:output:0"reshape_4/Reshape/shape/2:output:0"reshape_4/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
reshape_4/Reshape/shape?
reshape_4/ReshapeReshape&leaky_re_lu_12/LeakyRelu:activations:0 reshape_4/Reshape/shape:output:0*
T0*0
_output_shapes
:??????????2
reshape_4/Reshape?
conv2d_transpose_12/ShapeShapereshape_4/Reshape:output:0*
T0*
_output_shapes
:2
conv2d_transpose_12/Shape?
'conv2d_transpose_12/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_12/strided_slice/stack?
)conv2d_transpose_12/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_12/strided_slice/stack_1?
)conv2d_transpose_12/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_12/strided_slice/stack_2?
!conv2d_transpose_12/strided_sliceStridedSlice"conv2d_transpose_12/Shape:output:00conv2d_transpose_12/strided_slice/stack:output:02conv2d_transpose_12/strided_slice/stack_1:output:02conv2d_transpose_12/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_12/strided_slice|
conv2d_transpose_12/stack/1Const*
_output_shapes
: *
dtype0*
value	B :
2
conv2d_transpose_12/stack/1|
conv2d_transpose_12/stack/2Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_12/stack/2}
conv2d_transpose_12/stack/3Const*
_output_shapes
: *
dtype0*
value
B :?2
conv2d_transpose_12/stack/3?
conv2d_transpose_12/stackPack*conv2d_transpose_12/strided_slice:output:0$conv2d_transpose_12/stack/1:output:0$conv2d_transpose_12/stack/2:output:0$conv2d_transpose_12/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_12/stack?
)conv2d_transpose_12/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_12/strided_slice_1/stack?
+conv2d_transpose_12/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_12/strided_slice_1/stack_1?
+conv2d_transpose_12/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_12/strided_slice_1/stack_2?
#conv2d_transpose_12/strided_slice_1StridedSlice"conv2d_transpose_12/stack:output:02conv2d_transpose_12/strided_slice_1/stack:output:04conv2d_transpose_12/strided_slice_1/stack_1:output:04conv2d_transpose_12/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_12/strided_slice_1?
3conv2d_transpose_12/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_12_conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype025
3conv2d_transpose_12/conv2d_transpose/ReadVariableOp?
$conv2d_transpose_12/conv2d_transposeConv2DBackpropInput"conv2d_transpose_12/stack:output:0;conv2d_transpose_12/conv2d_transpose/ReadVariableOp:value:0reshape_4/Reshape:output:0*
T0*0
_output_shapes
:?????????
?*
paddingSAME*
strides
2&
$conv2d_transpose_12/conv2d_transpose?
%batch_normalization_13/ReadVariableOpReadVariableOp.batch_normalization_13_readvariableop_resource*
_output_shapes	
:?*
dtype02'
%batch_normalization_13/ReadVariableOp?
'batch_normalization_13/ReadVariableOp_1ReadVariableOp0batch_normalization_13_readvariableop_1_resource*
_output_shapes	
:?*
dtype02)
'batch_normalization_13/ReadVariableOp_1?
6batch_normalization_13/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_13_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype028
6batch_normalization_13/FusedBatchNormV3/ReadVariableOp?
8batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_13_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02:
8batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1?
'batch_normalization_13/FusedBatchNormV3FusedBatchNormV3-conv2d_transpose_12/conv2d_transpose:output:0-batch_normalization_13/ReadVariableOp:value:0/batch_normalization_13/ReadVariableOp_1:value:0>batch_normalization_13/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????
?:?:?:?:?:*
epsilon%o?:*
is_training( 2)
'batch_normalization_13/FusedBatchNormV3?
leaky_re_lu_13/LeakyRelu	LeakyRelu+batch_normalization_13/FusedBatchNormV3:y:0*0
_output_shapes
:?????????
?2
leaky_re_lu_13/LeakyRelu?
conv2d_transpose_13/ShapeShape&leaky_re_lu_13/LeakyRelu:activations:0*
T0*
_output_shapes
:2
conv2d_transpose_13/Shape?
'conv2d_transpose_13/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_13/strided_slice/stack?
)conv2d_transpose_13/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_13/strided_slice/stack_1?
)conv2d_transpose_13/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_13/strided_slice/stack_2?
!conv2d_transpose_13/strided_sliceStridedSlice"conv2d_transpose_13/Shape:output:00conv2d_transpose_13/strided_slice/stack:output:02conv2d_transpose_13/strided_slice/stack_1:output:02conv2d_transpose_13/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_13/strided_slice|
conv2d_transpose_13/stack/1Const*
_output_shapes
: *
dtype0*
value	B :
2
conv2d_transpose_13/stack/1|
conv2d_transpose_13/stack/2Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_13/stack/2|
conv2d_transpose_13/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2
conv2d_transpose_13/stack/3?
conv2d_transpose_13/stackPack*conv2d_transpose_13/strided_slice:output:0$conv2d_transpose_13/stack/1:output:0$conv2d_transpose_13/stack/2:output:0$conv2d_transpose_13/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_13/stack?
)conv2d_transpose_13/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_13/strided_slice_1/stack?
+conv2d_transpose_13/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_13/strided_slice_1/stack_1?
+conv2d_transpose_13/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_13/strided_slice_1/stack_2?
#conv2d_transpose_13/strided_slice_1StridedSlice"conv2d_transpose_13/stack:output:02conv2d_transpose_13/strided_slice_1/stack:output:04conv2d_transpose_13/strided_slice_1/stack_1:output:04conv2d_transpose_13/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_13/strided_slice_1?
3conv2d_transpose_13/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_13_conv2d_transpose_readvariableop_resource*'
_output_shapes
:@?*
dtype025
3conv2d_transpose_13/conv2d_transpose/ReadVariableOp?
$conv2d_transpose_13/conv2d_transposeConv2DBackpropInput"conv2d_transpose_13/stack:output:0;conv2d_transpose_13/conv2d_transpose/ReadVariableOp:value:0&leaky_re_lu_13/LeakyRelu:activations:0*
T0*/
_output_shapes
:?????????
@*
paddingSAME*
strides
2&
$conv2d_transpose_13/conv2d_transpose?
%batch_normalization_14/ReadVariableOpReadVariableOp.batch_normalization_14_readvariableop_resource*
_output_shapes
:@*
dtype02'
%batch_normalization_14/ReadVariableOp?
'batch_normalization_14/ReadVariableOp_1ReadVariableOp0batch_normalization_14_readvariableop_1_resource*
_output_shapes
:@*
dtype02)
'batch_normalization_14/ReadVariableOp_1?
6batch_normalization_14/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_14_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype028
6batch_normalization_14/FusedBatchNormV3/ReadVariableOp?
8batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_14_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02:
8batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1?
'batch_normalization_14/FusedBatchNormV3FusedBatchNormV3-conv2d_transpose_13/conv2d_transpose:output:0-batch_normalization_14/ReadVariableOp:value:0/batch_normalization_14/ReadVariableOp_1:value:0>batch_normalization_14/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????
@:@:@:@:@:*
epsilon%o?:*
is_training( 2)
'batch_normalization_14/FusedBatchNormV3?
leaky_re_lu_14/LeakyRelu	LeakyRelu+batch_normalization_14/FusedBatchNormV3:y:0*/
_output_shapes
:?????????
@2
leaky_re_lu_14/LeakyRelu?
conv2d_transpose_14/ShapeShape&leaky_re_lu_14/LeakyRelu:activations:0*
T0*
_output_shapes
:2
conv2d_transpose_14/Shape?
'conv2d_transpose_14/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_14/strided_slice/stack?
)conv2d_transpose_14/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_14/strided_slice/stack_1?
)conv2d_transpose_14/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_14/strided_slice/stack_2?
!conv2d_transpose_14/strided_sliceStridedSlice"conv2d_transpose_14/Shape:output:00conv2d_transpose_14/strided_slice/stack:output:02conv2d_transpose_14/strided_slice/stack_1:output:02conv2d_transpose_14/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_14/strided_slice|
conv2d_transpose_14/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_14/stack/1|
conv2d_transpose_14/stack/2Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_14/stack/2|
conv2d_transpose_14/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_14/stack/3?
conv2d_transpose_14/stackPack*conv2d_transpose_14/strided_slice:output:0$conv2d_transpose_14/stack/1:output:0$conv2d_transpose_14/stack/2:output:0$conv2d_transpose_14/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_14/stack?
)conv2d_transpose_14/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_14/strided_slice_1/stack?
+conv2d_transpose_14/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_14/strided_slice_1/stack_1?
+conv2d_transpose_14/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_14/strided_slice_1/stack_2?
#conv2d_transpose_14/strided_slice_1StridedSlice"conv2d_transpose_14/stack:output:02conv2d_transpose_14/strided_slice_1/stack:output:04conv2d_transpose_14/strided_slice_1/stack_1:output:04conv2d_transpose_14/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_14/strided_slice_1?
3conv2d_transpose_14/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_14_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@*
dtype025
3conv2d_transpose_14/conv2d_transpose/ReadVariableOp?
$conv2d_transpose_14/conv2d_transposeConv2DBackpropInput"conv2d_transpose_14/stack:output:0;conv2d_transpose_14/conv2d_transpose/ReadVariableOp:value:0&leaky_re_lu_14/LeakyRelu:activations:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2&
$conv2d_transpose_14/conv2d_transpose?
conv2d_transpose_14/TanhTanh-conv2d_transpose_14/conv2d_transpose:output:0*
T0*/
_output_shapes
:?????????2
conv2d_transpose_14/Tanh?
IdentityIdentityconv2d_transpose_14/Tanh:y:00^batch_normalization_12/batchnorm/ReadVariableOp2^batch_normalization_12/batchnorm/ReadVariableOp_12^batch_normalization_12/batchnorm/ReadVariableOp_24^batch_normalization_12/batchnorm/mul/ReadVariableOp7^batch_normalization_13/FusedBatchNormV3/ReadVariableOp9^batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_13/ReadVariableOp(^batch_normalization_13/ReadVariableOp_17^batch_normalization_14/FusedBatchNormV3/ReadVariableOp9^batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_14/ReadVariableOp(^batch_normalization_14/ReadVariableOp_14^conv2d_transpose_12/conv2d_transpose/ReadVariableOp4^conv2d_transpose_13/conv2d_transpose/ReadVariableOp4^conv2d_transpose_14/conv2d_transpose/ReadVariableOp^dense_4/MatMul/ReadVariableOp*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????2: : : : : : : : : : : : : : : : 2b
/batch_normalization_12/batchnorm/ReadVariableOp/batch_normalization_12/batchnorm/ReadVariableOp2f
1batch_normalization_12/batchnorm/ReadVariableOp_11batch_normalization_12/batchnorm/ReadVariableOp_12f
1batch_normalization_12/batchnorm/ReadVariableOp_21batch_normalization_12/batchnorm/ReadVariableOp_22j
3batch_normalization_12/batchnorm/mul/ReadVariableOp3batch_normalization_12/batchnorm/mul/ReadVariableOp2p
6batch_normalization_13/FusedBatchNormV3/ReadVariableOp6batch_normalization_13/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_13/FusedBatchNormV3/ReadVariableOp_18batch_normalization_13/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_13/ReadVariableOp%batch_normalization_13/ReadVariableOp2R
'batch_normalization_13/ReadVariableOp_1'batch_normalization_13/ReadVariableOp_12p
6batch_normalization_14/FusedBatchNormV3/ReadVariableOp6batch_normalization_14/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_14/FusedBatchNormV3/ReadVariableOp_18batch_normalization_14/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_14/ReadVariableOp%batch_normalization_14/ReadVariableOp2R
'batch_normalization_14/ReadVariableOp_1'batch_normalization_14/ReadVariableOp_12j
3conv2d_transpose_12/conv2d_transpose/ReadVariableOp3conv2d_transpose_12/conv2d_transpose/ReadVariableOp2j
3conv2d_transpose_13/conv2d_transpose/ReadVariableOp3conv2d_transpose_13/conv2d_transpose/ReadVariableOp2j
3conv2d_transpose_14/conv2d_transpose/ReadVariableOp3conv2d_transpose_14/conv2d_transpose/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_13_layer_call_and_return_conditional_losses_311867

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
?=
?	
H__inference_sequential_4_layer_call_and_return_conditional_losses_311028

inputs!
dense_4_310951:	2?(,
batch_normalization_12_310954:	?(,
batch_normalization_12_310956:	?(,
batch_normalization_12_310958:	?(,
batch_normalization_12_310960:	?(6
conv2d_transpose_12_310986:??,
batch_normalization_13_310989:	?,
batch_normalization_13_310991:	?,
batch_normalization_13_310993:	?,
batch_normalization_13_310995:	?5
conv2d_transpose_13_311005:@?+
batch_normalization_14_311008:@+
batch_normalization_14_311010:@+
batch_normalization_14_311012:@+
batch_normalization_14_311014:@4
conv2d_transpose_14_311024:@
identity??.batch_normalization_12/StatefulPartitionedCall?.batch_normalization_13/StatefulPartitionedCall?.batch_normalization_14/StatefulPartitionedCall?+conv2d_transpose_12/StatefulPartitionedCall?+conv2d_transpose_13/StatefulPartitionedCall?+conv2d_transpose_14/StatefulPartitionedCall?dense_4/StatefulPartitionedCall?
dense_4/StatefulPartitionedCallStatefulPartitionedCallinputsdense_4_310951*
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
GPU2*0J 8? *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_3109502!
dense_4/StatefulPartitionedCall?
.batch_normalization_12/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0batch_normalization_12_310954batch_normalization_12_310956batch_normalization_12_310958batch_normalization_12_310960*
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
GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_12_layer_call_and_return_conditional_losses_31039620
.batch_normalization_12/StatefulPartitionedCall?
leaky_re_lu_12/PartitionedCallPartitionedCall7batch_normalization_12/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *S
fNRL
J__inference_leaky_re_lu_12_layer_call_and_return_conditional_losses_3109682 
leaky_re_lu_12/PartitionedCall?
reshape_4/PartitionedCallPartitionedCall'leaky_re_lu_12/PartitionedCall:output:0*
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
GPU2*0J 8? *N
fIRG
E__inference_reshape_4_layer_call_and_return_conditional_losses_3109842
reshape_4/PartitionedCall?
+conv2d_transpose_12/StatefulPartitionedCallStatefulPartitionedCall"reshape_4/PartitionedCall:output:0conv2d_transpose_12_310986*
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
GPU2*0J 8? *X
fSRQ
O__inference_conv2d_transpose_12_layer_call_and_return_conditional_losses_3105652-
+conv2d_transpose_12/StatefulPartitionedCall?
.batch_normalization_13/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_12/StatefulPartitionedCall:output:0batch_normalization_13_310989batch_normalization_13_310991batch_normalization_13_310993batch_normalization_13_310995*
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
GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_13_layer_call_and_return_conditional_losses_31059520
.batch_normalization_13/StatefulPartitionedCall?
leaky_re_lu_13/PartitionedCallPartitionedCall7batch_normalization_13/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *S
fNRL
J__inference_leaky_re_lu_13_layer_call_and_return_conditional_losses_3110032 
leaky_re_lu_13/PartitionedCall?
+conv2d_transpose_13/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_13/PartitionedCall:output:0conv2d_transpose_13_311005*
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
GPU2*0J 8? *X
fSRQ
O__inference_conv2d_transpose_13_layer_call_and_return_conditional_losses_3107462-
+conv2d_transpose_13/StatefulPartitionedCall?
.batch_normalization_14/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_13/StatefulPartitionedCall:output:0batch_normalization_14_311008batch_normalization_14_311010batch_normalization_14_311012batch_normalization_14_311014*
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
GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_14_layer_call_and_return_conditional_losses_31077620
.batch_normalization_14/StatefulPartitionedCall?
leaky_re_lu_14/PartitionedCallPartitionedCall7batch_normalization_14/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *S
fNRL
J__inference_leaky_re_lu_14_layer_call_and_return_conditional_losses_3110222 
leaky_re_lu_14/PartitionedCall?
+conv2d_transpose_14/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_14/PartitionedCall:output:0conv2d_transpose_14_311024*
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
GPU2*0J 8? *X
fSRQ
O__inference_conv2d_transpose_14_layer_call_and_return_conditional_losses_3109282-
+conv2d_transpose_14/StatefulPartitionedCall?
IdentityIdentity4conv2d_transpose_14/StatefulPartitionedCall:output:0/^batch_normalization_12/StatefulPartitionedCall/^batch_normalization_13/StatefulPartitionedCall/^batch_normalization_14/StatefulPartitionedCall,^conv2d_transpose_12/StatefulPartitionedCall,^conv2d_transpose_13/StatefulPartitionedCall,^conv2d_transpose_14/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????2: : : : : : : : : : : : : : : : 2`
.batch_normalization_12/StatefulPartitionedCall.batch_normalization_12/StatefulPartitionedCall2`
.batch_normalization_13/StatefulPartitionedCall.batch_normalization_13/StatefulPartitionedCall2`
.batch_normalization_14/StatefulPartitionedCall.batch_normalization_14/StatefulPartitionedCall2Z
+conv2d_transpose_12/StatefulPartitionedCall+conv2d_transpose_12/StatefulPartitionedCall2Z
+conv2d_transpose_13/StatefulPartitionedCall+conv2d_transpose_13/StatefulPartitionedCall2Z
+conv2d_transpose_14/StatefulPartitionedCall+conv2d_transpose_14/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
K
/__inference_leaky_re_lu_14_layer_call_fn_311962

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
GPU2*0J 8? *S
fNRL
J__inference_leaky_re_lu_14_layer_call_and_return_conditional_losses_3110222
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
?
?
-__inference_sequential_4_layer_call_fn_311423

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
GPU2*0J 8? *Q
fLRJ
H__inference_sequential_4_layer_call_and_return_conditional_losses_3110282
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
?
?
C__inference_dense_4_layer_call_and_return_conditional_losses_311714

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
?
f
J__inference_leaky_re_lu_13_layer_call_and_return_conditional_losses_311003

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
?
}
(__inference_dense_4_layer_call_fn_311707

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
GPU2*0J 8? *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_3109502
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
?*
?
R__inference_batch_normalization_12_layer_call_and_return_conditional_losses_310456

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
?=
?	
H__inference_sequential_4_layer_call_and_return_conditional_losses_311300
dense_4_input!
dense_4_311256:	2?(,
batch_normalization_12_311259:	?(,
batch_normalization_12_311261:	?(,
batch_normalization_12_311263:	?(,
batch_normalization_12_311265:	?(6
conv2d_transpose_12_311270:??,
batch_normalization_13_311273:	?,
batch_normalization_13_311275:	?,
batch_normalization_13_311277:	?,
batch_normalization_13_311279:	?5
conv2d_transpose_13_311283:@?+
batch_normalization_14_311286:@+
batch_normalization_14_311288:@+
batch_normalization_14_311290:@+
batch_normalization_14_311292:@4
conv2d_transpose_14_311296:@
identity??.batch_normalization_12/StatefulPartitionedCall?.batch_normalization_13/StatefulPartitionedCall?.batch_normalization_14/StatefulPartitionedCall?+conv2d_transpose_12/StatefulPartitionedCall?+conv2d_transpose_13/StatefulPartitionedCall?+conv2d_transpose_14/StatefulPartitionedCall?dense_4/StatefulPartitionedCall?
dense_4/StatefulPartitionedCallStatefulPartitionedCalldense_4_inputdense_4_311256*
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
GPU2*0J 8? *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_3109502!
dense_4/StatefulPartitionedCall?
.batch_normalization_12/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0batch_normalization_12_311259batch_normalization_12_311261batch_normalization_12_311263batch_normalization_12_311265*
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
GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_12_layer_call_and_return_conditional_losses_31039620
.batch_normalization_12/StatefulPartitionedCall?
leaky_re_lu_12/PartitionedCallPartitionedCall7batch_normalization_12/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *S
fNRL
J__inference_leaky_re_lu_12_layer_call_and_return_conditional_losses_3109682 
leaky_re_lu_12/PartitionedCall?
reshape_4/PartitionedCallPartitionedCall'leaky_re_lu_12/PartitionedCall:output:0*
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
GPU2*0J 8? *N
fIRG
E__inference_reshape_4_layer_call_and_return_conditional_losses_3109842
reshape_4/PartitionedCall?
+conv2d_transpose_12/StatefulPartitionedCallStatefulPartitionedCall"reshape_4/PartitionedCall:output:0conv2d_transpose_12_311270*
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
GPU2*0J 8? *X
fSRQ
O__inference_conv2d_transpose_12_layer_call_and_return_conditional_losses_3105652-
+conv2d_transpose_12/StatefulPartitionedCall?
.batch_normalization_13/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_12/StatefulPartitionedCall:output:0batch_normalization_13_311273batch_normalization_13_311275batch_normalization_13_311277batch_normalization_13_311279*
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
GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_13_layer_call_and_return_conditional_losses_31059520
.batch_normalization_13/StatefulPartitionedCall?
leaky_re_lu_13/PartitionedCallPartitionedCall7batch_normalization_13/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *S
fNRL
J__inference_leaky_re_lu_13_layer_call_and_return_conditional_losses_3110032 
leaky_re_lu_13/PartitionedCall?
+conv2d_transpose_13/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_13/PartitionedCall:output:0conv2d_transpose_13_311283*
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
GPU2*0J 8? *X
fSRQ
O__inference_conv2d_transpose_13_layer_call_and_return_conditional_losses_3107462-
+conv2d_transpose_13/StatefulPartitionedCall?
.batch_normalization_14/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_13/StatefulPartitionedCall:output:0batch_normalization_14_311286batch_normalization_14_311288batch_normalization_14_311290batch_normalization_14_311292*
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
GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_14_layer_call_and_return_conditional_losses_31077620
.batch_normalization_14/StatefulPartitionedCall?
leaky_re_lu_14/PartitionedCallPartitionedCall7batch_normalization_14/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *S
fNRL
J__inference_leaky_re_lu_14_layer_call_and_return_conditional_losses_3110222 
leaky_re_lu_14/PartitionedCall?
+conv2d_transpose_14/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_14/PartitionedCall:output:0conv2d_transpose_14_311296*
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
GPU2*0J 8? *X
fSRQ
O__inference_conv2d_transpose_14_layer_call_and_return_conditional_losses_3109282-
+conv2d_transpose_14/StatefulPartitionedCall?
IdentityIdentity4conv2d_transpose_14/StatefulPartitionedCall:output:0/^batch_normalization_12/StatefulPartitionedCall/^batch_normalization_13/StatefulPartitionedCall/^batch_normalization_14/StatefulPartitionedCall,^conv2d_transpose_12/StatefulPartitionedCall,^conv2d_transpose_13/StatefulPartitionedCall,^conv2d_transpose_14/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????2: : : : : : : : : : : : : : : : 2`
.batch_normalization_12/StatefulPartitionedCall.batch_normalization_12/StatefulPartitionedCall2`
.batch_normalization_13/StatefulPartitionedCall.batch_normalization_13/StatefulPartitionedCall2`
.batch_normalization_14/StatefulPartitionedCall.batch_normalization_14/StatefulPartitionedCall2Z
+conv2d_transpose_12/StatefulPartitionedCall+conv2d_transpose_12/StatefulPartitionedCall2Z
+conv2d_transpose_13/StatefulPartitionedCall+conv2d_transpose_13/StatefulPartitionedCall2Z
+conv2d_transpose_14/StatefulPartitionedCall+conv2d_transpose_14/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall:V R
'
_output_shapes
:?????????2
'
_user_specified_namedense_4_input
?
?
R__inference_batch_normalization_13_layer_call_and_return_conditional_losses_310595

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
?
a
E__inference_reshape_4_layer_call_and_return_conditional_losses_311823

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
7__inference_batch_normalization_13_layer_call_fn_311849

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
GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_13_layer_call_and_return_conditional_losses_3106392
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
?
?
7__inference_batch_normalization_14_layer_call_fn_311921

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
GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_14_layer_call_and_return_conditional_losses_3108202
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
?
C__inference_dense_4_layer_call_and_return_conditional_losses_310950

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
?
?
4__inference_conv2d_transpose_13_layer_call_fn_310754

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
GPU2*0J 8? *X
fSRQ
O__inference_conv2d_transpose_13_layer_call_and_return_conditional_losses_3107462
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
4__inference_conv2d_transpose_12_layer_call_fn_310573

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
GPU2*0J 8? *X
fSRQ
O__inference_conv2d_transpose_12_layer_call_and_return_conditional_losses_3105652
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
?=
?	
H__inference_sequential_4_layer_call_and_return_conditional_losses_311181

inputs!
dense_4_311137:	2?(,
batch_normalization_12_311140:	?(,
batch_normalization_12_311142:	?(,
batch_normalization_12_311144:	?(,
batch_normalization_12_311146:	?(6
conv2d_transpose_12_311151:??,
batch_normalization_13_311154:	?,
batch_normalization_13_311156:	?,
batch_normalization_13_311158:	?,
batch_normalization_13_311160:	?5
conv2d_transpose_13_311164:@?+
batch_normalization_14_311167:@+
batch_normalization_14_311169:@+
batch_normalization_14_311171:@+
batch_normalization_14_311173:@4
conv2d_transpose_14_311177:@
identity??.batch_normalization_12/StatefulPartitionedCall?.batch_normalization_13/StatefulPartitionedCall?.batch_normalization_14/StatefulPartitionedCall?+conv2d_transpose_12/StatefulPartitionedCall?+conv2d_transpose_13/StatefulPartitionedCall?+conv2d_transpose_14/StatefulPartitionedCall?dense_4/StatefulPartitionedCall?
dense_4/StatefulPartitionedCallStatefulPartitionedCallinputsdense_4_311137*
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
GPU2*0J 8? *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_3109502!
dense_4/StatefulPartitionedCall?
.batch_normalization_12/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0batch_normalization_12_311140batch_normalization_12_311142batch_normalization_12_311144batch_normalization_12_311146*
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
GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_12_layer_call_and_return_conditional_losses_31045620
.batch_normalization_12/StatefulPartitionedCall?
leaky_re_lu_12/PartitionedCallPartitionedCall7batch_normalization_12/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *S
fNRL
J__inference_leaky_re_lu_12_layer_call_and_return_conditional_losses_3109682 
leaky_re_lu_12/PartitionedCall?
reshape_4/PartitionedCallPartitionedCall'leaky_re_lu_12/PartitionedCall:output:0*
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
GPU2*0J 8? *N
fIRG
E__inference_reshape_4_layer_call_and_return_conditional_losses_3109842
reshape_4/PartitionedCall?
+conv2d_transpose_12/StatefulPartitionedCallStatefulPartitionedCall"reshape_4/PartitionedCall:output:0conv2d_transpose_12_311151*
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
GPU2*0J 8? *X
fSRQ
O__inference_conv2d_transpose_12_layer_call_and_return_conditional_losses_3105652-
+conv2d_transpose_12/StatefulPartitionedCall?
.batch_normalization_13/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_12/StatefulPartitionedCall:output:0batch_normalization_13_311154batch_normalization_13_311156batch_normalization_13_311158batch_normalization_13_311160*
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
GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_13_layer_call_and_return_conditional_losses_31063920
.batch_normalization_13/StatefulPartitionedCall?
leaky_re_lu_13/PartitionedCallPartitionedCall7batch_normalization_13/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *S
fNRL
J__inference_leaky_re_lu_13_layer_call_and_return_conditional_losses_3110032 
leaky_re_lu_13/PartitionedCall?
+conv2d_transpose_13/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_13/PartitionedCall:output:0conv2d_transpose_13_311164*
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
GPU2*0J 8? *X
fSRQ
O__inference_conv2d_transpose_13_layer_call_and_return_conditional_losses_3107462-
+conv2d_transpose_13/StatefulPartitionedCall?
.batch_normalization_14/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_13/StatefulPartitionedCall:output:0batch_normalization_14_311167batch_normalization_14_311169batch_normalization_14_311171batch_normalization_14_311173*
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
GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_14_layer_call_and_return_conditional_losses_31082020
.batch_normalization_14/StatefulPartitionedCall?
leaky_re_lu_14/PartitionedCallPartitionedCall7batch_normalization_14/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *S
fNRL
J__inference_leaky_re_lu_14_layer_call_and_return_conditional_losses_3110222 
leaky_re_lu_14/PartitionedCall?
+conv2d_transpose_14/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_14/PartitionedCall:output:0conv2d_transpose_14_311177*
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
GPU2*0J 8? *X
fSRQ
O__inference_conv2d_transpose_14_layer_call_and_return_conditional_losses_3109282-
+conv2d_transpose_14/StatefulPartitionedCall?
IdentityIdentity4conv2d_transpose_14/StatefulPartitionedCall:output:0/^batch_normalization_12/StatefulPartitionedCall/^batch_normalization_13/StatefulPartitionedCall/^batch_normalization_14/StatefulPartitionedCall,^conv2d_transpose_12/StatefulPartitionedCall,^conv2d_transpose_13/StatefulPartitionedCall,^conv2d_transpose_14/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????2: : : : : : : : : : : : : : : : 2`
.batch_normalization_12/StatefulPartitionedCall.batch_normalization_12/StatefulPartitionedCall2`
.batch_normalization_13/StatefulPartitionedCall.batch_normalization_13/StatefulPartitionedCall2`
.batch_normalization_14/StatefulPartitionedCall.batch_normalization_14/StatefulPartitionedCall2Z
+conv2d_transpose_12/StatefulPartitionedCall+conv2d_transpose_12/StatefulPartitionedCall2Z
+conv2d_transpose_13/StatefulPartitionedCall+conv2d_transpose_13/StatefulPartitionedCall2Z
+conv2d_transpose_14/StatefulPartitionedCall+conv2d_transpose_14/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_12_layer_call_and_return_conditional_losses_311760

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
?
?
R__inference_batch_normalization_12_layer_call_and_return_conditional_losses_310396

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
?
-__inference_sequential_4_layer_call_fn_311253
dense_4_input
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
StatefulPartitionedCallStatefulPartitionedCalldense_4_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
GPU2*0J 8? *Q
fLRJ
H__inference_sequential_4_layer_call_and_return_conditional_losses_3111812
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
StatefulPartitionedCallStatefulPartitionedCall:V R
'
_output_shapes
:?????????2
'
_user_specified_namedense_4_input
?
K
/__inference_leaky_re_lu_13_layer_call_fn_311890

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
GPU2*0J 8? *S
fNRL
J__inference_leaky_re_lu_13_layer_call_and_return_conditional_losses_3110032
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
?
?
7__inference_batch_normalization_14_layer_call_fn_311908

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
GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_14_layer_call_and_return_conditional_losses_3107762
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
?
?
R__inference_batch_normalization_14_layer_call_and_return_conditional_losses_311939

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
7__inference_batch_normalization_12_layer_call_fn_311740

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
GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_12_layer_call_and_return_conditional_losses_3104562
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
?
K
/__inference_leaky_re_lu_12_layer_call_fn_311799

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
GPU2*0J 8? *S
fNRL
J__inference_leaky_re_lu_12_layer_call_and_return_conditional_losses_3109682
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
?,
?
O__inference_conv2d_transpose_14_layer_call_and_return_conditional_losses_310928

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
? 
?
O__inference_conv2d_transpose_12_layer_call_and_return_conditional_losses_310565

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
value	B :2
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
2
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
?
f
J__inference_leaky_re_lu_14_layer_call_and_return_conditional_losses_311967

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
?/
?
__inference__traced_save_312038
file_prefix-
)savev2_dense_4_kernel_read_readvariableop;
7savev2_batch_normalization_12_gamma_read_readvariableop:
6savev2_batch_normalization_12_beta_read_readvariableopA
=savev2_batch_normalization_12_moving_mean_read_readvariableopE
Asavev2_batch_normalization_12_moving_variance_read_readvariableop9
5savev2_conv2d_transpose_12_kernel_read_readvariableop;
7savev2_batch_normalization_13_gamma_read_readvariableop:
6savev2_batch_normalization_13_beta_read_readvariableopA
=savev2_batch_normalization_13_moving_mean_read_readvariableopE
Asavev2_batch_normalization_13_moving_variance_read_readvariableop9
5savev2_conv2d_transpose_13_kernel_read_readvariableop;
7savev2_batch_normalization_14_gamma_read_readvariableop:
6savev2_batch_normalization_14_beta_read_readvariableopA
=savev2_batch_normalization_14_moving_mean_read_readvariableopE
Asavev2_batch_normalization_14_moving_variance_read_readvariableop9
5savev2_conv2d_transpose_14_kernel_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0)savev2_dense_4_kernel_read_readvariableop7savev2_batch_normalization_12_gamma_read_readvariableop6savev2_batch_normalization_12_beta_read_readvariableop=savev2_batch_normalization_12_moving_mean_read_readvariableopAsavev2_batch_normalization_12_moving_variance_read_readvariableop5savev2_conv2d_transpose_12_kernel_read_readvariableop7savev2_batch_normalization_13_gamma_read_readvariableop6savev2_batch_normalization_13_beta_read_readvariableop=savev2_batch_normalization_13_moving_mean_read_readvariableopAsavev2_batch_normalization_13_moving_variance_read_readvariableop5savev2_conv2d_transpose_13_kernel_read_readvariableop7savev2_batch_normalization_14_gamma_read_readvariableop6savev2_batch_normalization_14_beta_read_readvariableop=savev2_batch_normalization_14_moving_mean_read_readvariableopAsavev2_batch_normalization_14_moving_variance_read_readvariableop5savev2_conv2d_transpose_14_kernel_read_readvariableopsavev2_const"/device:CPU:0*
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
?*
?
R__inference_batch_normalization_12_layer_call_and_return_conditional_losses_311794

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
?=
?	
H__inference_sequential_4_layer_call_and_return_conditional_losses_311347
dense_4_input!
dense_4_311303:	2?(,
batch_normalization_12_311306:	?(,
batch_normalization_12_311308:	?(,
batch_normalization_12_311310:	?(,
batch_normalization_12_311312:	?(6
conv2d_transpose_12_311317:??,
batch_normalization_13_311320:	?,
batch_normalization_13_311322:	?,
batch_normalization_13_311324:	?,
batch_normalization_13_311326:	?5
conv2d_transpose_13_311330:@?+
batch_normalization_14_311333:@+
batch_normalization_14_311335:@+
batch_normalization_14_311337:@+
batch_normalization_14_311339:@4
conv2d_transpose_14_311343:@
identity??.batch_normalization_12/StatefulPartitionedCall?.batch_normalization_13/StatefulPartitionedCall?.batch_normalization_14/StatefulPartitionedCall?+conv2d_transpose_12/StatefulPartitionedCall?+conv2d_transpose_13/StatefulPartitionedCall?+conv2d_transpose_14/StatefulPartitionedCall?dense_4/StatefulPartitionedCall?
dense_4/StatefulPartitionedCallStatefulPartitionedCalldense_4_inputdense_4_311303*
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
GPU2*0J 8? *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_3109502!
dense_4/StatefulPartitionedCall?
.batch_normalization_12/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0batch_normalization_12_311306batch_normalization_12_311308batch_normalization_12_311310batch_normalization_12_311312*
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
GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_12_layer_call_and_return_conditional_losses_31045620
.batch_normalization_12/StatefulPartitionedCall?
leaky_re_lu_12/PartitionedCallPartitionedCall7batch_normalization_12/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *S
fNRL
J__inference_leaky_re_lu_12_layer_call_and_return_conditional_losses_3109682 
leaky_re_lu_12/PartitionedCall?
reshape_4/PartitionedCallPartitionedCall'leaky_re_lu_12/PartitionedCall:output:0*
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
GPU2*0J 8? *N
fIRG
E__inference_reshape_4_layer_call_and_return_conditional_losses_3109842
reshape_4/PartitionedCall?
+conv2d_transpose_12/StatefulPartitionedCallStatefulPartitionedCall"reshape_4/PartitionedCall:output:0conv2d_transpose_12_311317*
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
GPU2*0J 8? *X
fSRQ
O__inference_conv2d_transpose_12_layer_call_and_return_conditional_losses_3105652-
+conv2d_transpose_12/StatefulPartitionedCall?
.batch_normalization_13/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_12/StatefulPartitionedCall:output:0batch_normalization_13_311320batch_normalization_13_311322batch_normalization_13_311324batch_normalization_13_311326*
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
GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_13_layer_call_and_return_conditional_losses_31063920
.batch_normalization_13/StatefulPartitionedCall?
leaky_re_lu_13/PartitionedCallPartitionedCall7batch_normalization_13/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *S
fNRL
J__inference_leaky_re_lu_13_layer_call_and_return_conditional_losses_3110032 
leaky_re_lu_13/PartitionedCall?
+conv2d_transpose_13/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_13/PartitionedCall:output:0conv2d_transpose_13_311330*
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
GPU2*0J 8? *X
fSRQ
O__inference_conv2d_transpose_13_layer_call_and_return_conditional_losses_3107462-
+conv2d_transpose_13/StatefulPartitionedCall?
.batch_normalization_14/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_13/StatefulPartitionedCall:output:0batch_normalization_14_311333batch_normalization_14_311335batch_normalization_14_311337batch_normalization_14_311339*
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
GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_14_layer_call_and_return_conditional_losses_31082020
.batch_normalization_14/StatefulPartitionedCall?
leaky_re_lu_14/PartitionedCallPartitionedCall7batch_normalization_14/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *S
fNRL
J__inference_leaky_re_lu_14_layer_call_and_return_conditional_losses_3110222 
leaky_re_lu_14/PartitionedCall?
+conv2d_transpose_14/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_14/PartitionedCall:output:0conv2d_transpose_14_311343*
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
GPU2*0J 8? *X
fSRQ
O__inference_conv2d_transpose_14_layer_call_and_return_conditional_losses_3109282-
+conv2d_transpose_14/StatefulPartitionedCall?
IdentityIdentity4conv2d_transpose_14/StatefulPartitionedCall:output:0/^batch_normalization_12/StatefulPartitionedCall/^batch_normalization_13/StatefulPartitionedCall/^batch_normalization_14/StatefulPartitionedCall,^conv2d_transpose_12/StatefulPartitionedCall,^conv2d_transpose_13/StatefulPartitionedCall,^conv2d_transpose_14/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????2: : : : : : : : : : : : : : : : 2`
.batch_normalization_12/StatefulPartitionedCall.batch_normalization_12/StatefulPartitionedCall2`
.batch_normalization_13/StatefulPartitionedCall.batch_normalization_13/StatefulPartitionedCall2`
.batch_normalization_14/StatefulPartitionedCall.batch_normalization_14/StatefulPartitionedCall2Z
+conv2d_transpose_12/StatefulPartitionedCall+conv2d_transpose_12/StatefulPartitionedCall2Z
+conv2d_transpose_13/StatefulPartitionedCall+conv2d_transpose_13/StatefulPartitionedCall2Z
+conv2d_transpose_14/StatefulPartitionedCall+conv2d_transpose_14/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall:V R
'
_output_shapes
:?????????2
'
_user_specified_namedense_4_input
?
f
J__inference_leaky_re_lu_12_layer_call_and_return_conditional_losses_310968

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
?
f
J__inference_leaky_re_lu_13_layer_call_and_return_conditional_losses_311895

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
?+
?
O__inference_conv2d_transpose_13_layer_call_and_return_conditional_losses_310746

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
?
a
E__inference_reshape_4_layer_call_and_return_conditional_losses_310984

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
-__inference_sequential_4_layer_call_fn_311460

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
GPU2*0J 8? *Q
fLRJ
H__inference_sequential_4_layer_call_and_return_conditional_losses_3111812
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
G
dense_4_input6
serving_default_dense_4_input:0?????????2O
conv2d_transpose_148
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
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
_tf_keras_sequential?]{"name": "sequential_4", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_4", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 50]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "dense_4_input"}}, {"class_name": "Dense", "config": {"name": "dense_4", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 50]}, "dtype": "float32", "units": 5120, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_12", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_12", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}}, {"class_name": "Reshape", "config": {"name": "reshape_4", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [5, 4, 256]}}}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_12", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [2, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_13", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_13", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_13", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": {"class_name": "__tuple__", "items": [0, 0]}}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_14", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_14", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_14", "trainable": true, "dtype": "float32", "filters": 1, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "tanh", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": {"class_name": "__tuple__", "items": [1, 0]}}}]}, "shared_object_id": 32, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 50}}, "shared_object_id": 33}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 50]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 50]}, "float32", "dense_4_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_4", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 50]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "dense_4_input"}, "shared_object_id": 0}, {"class_name": "Dense", "config": {"name": "dense_4", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 50]}, "dtype": "float32", "units": 5120, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_12", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 4}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 5}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 6}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 7}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 8}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_12", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}, "shared_object_id": 9}, {"class_name": "Reshape", "config": {"name": "reshape_4", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [5, 4, 256]}}, "shared_object_id": 10}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_12", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [2, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 11}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 12}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "shared_object_id": 13}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_13", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 14}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 15}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 16}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 17}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 18}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_13", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}, "shared_object_id": 19}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_13", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 20}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 21}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": {"class_name": "__tuple__", "items": [0, 0]}}, "shared_object_id": 22}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_14", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 23}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 24}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 25}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 26}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 27}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_14", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}, "shared_object_id": 28}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_14", "trainable": true, "dtype": "float32", "filters": 1, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "tanh", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 29}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 30}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": {"class_name": "__tuple__", "items": [1, 0]}}, "shared_object_id": 31}]}}}
?	

kernel
trainable_variables
	variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dense_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 50]}, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_4", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 50]}, "dtype": "float32", "units": 5120, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 50}}, "shared_object_id": 33}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 50]}}
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
_tf_keras_layer?{"name": "batch_normalization_12", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_12", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 4}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 5}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 6}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 7}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 8, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {"1": 5120}}, "shared_object_id": 34}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 5120]}}
?
trainable_variables
 	variables
!regularization_losses
"	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "leaky_re_lu_12", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_12", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}, "shared_object_id": 9}
?
#trainable_variables
$	variables
%regularization_losses
&	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "reshape_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Reshape", "config": {"name": "reshape_4", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [5, 4, 256]}}, "shared_object_id": 10}
?

'kernel
(trainable_variables
)	variables
*regularization_losses
+	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "conv2d_transpose_12", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_12", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [2, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 11}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 12}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "shared_object_id": 13, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 256}}, "shared_object_id": 35}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 5, 4, 256]}}
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
_tf_keras_layer?{"name": "batch_normalization_13", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_13", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 14}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 15}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 16}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 17}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 18, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 128}}, "shared_object_id": 36}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 10, 4, 128]}}
?
5trainable_variables
6	variables
7regularization_losses
8	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "leaky_re_lu_13", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_13", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}, "shared_object_id": 19}
?
9output_padding

:kernel
;trainable_variables
<	variables
=regularization_losses
>	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?

_tf_keras_layer?	{"name": "conv2d_transpose_13", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_13", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 20}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 21}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": {"class_name": "__tuple__", "items": [0, 0]}}, "shared_object_id": 22, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 128}}, "shared_object_id": 37}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 10, 4, 128]}}
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
_tf_keras_layer?{"name": "batch_normalization_14", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_14", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 23}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 24}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 25}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 26}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 27, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 64}}, "shared_object_id": 38}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 10, 4, 64]}}
?
Htrainable_variables
I	variables
Jregularization_losses
K	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "leaky_re_lu_14", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_14", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}, "shared_object_id": 28}
?
Loutput_padding

Mkernel
Ntrainable_variables
O	variables
Pregularization_losses
Q	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?

_tf_keras_layer?	{"name": "conv2d_transpose_14", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_14", "trainable": true, "dtype": "float32", "filters": 1, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "tanh", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 29}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 30}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": {"class_name": "__tuple__", "items": [1, 0]}}, "shared_object_id": 31, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 64}}, "shared_object_id": 39}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 10, 4, 64]}}
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

Rlayers
Smetrics
	variables
Tnon_trainable_variables
Ulayer_metrics
Vlayer_regularization_losses
regularization_losses
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
!:	2?(2dense_4/kernel
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

Wlayers
Xmetrics
	variables
Ynon_trainable_variables
Zlayer_metrics
[layer_regularization_losses
regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
+:)?(2batch_normalization_12/gamma
*:(?(2batch_normalization_12/beta
3:1?( (2"batch_normalization_12/moving_mean
7:5?( (2&batch_normalization_12/moving_variance
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

\layers
]metrics
	variables
^non_trainable_variables
_layer_metrics
`layer_regularization_losses
regularization_losses
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

alayers
bmetrics
 	variables
cnon_trainable_variables
dlayer_metrics
elayer_regularization_losses
!regularization_losses
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

flayers
gmetrics
$	variables
hnon_trainable_variables
ilayer_metrics
jlayer_regularization_losses
%regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
6:4??2conv2d_transpose_12/kernel
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

klayers
lmetrics
)	variables
mnon_trainable_variables
nlayer_metrics
olayer_regularization_losses
*regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
+:)?2batch_normalization_13/gamma
*:(?2batch_normalization_13/beta
3:1? (2"batch_normalization_13/moving_mean
7:5? (2&batch_normalization_13/moving_variance
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

players
qmetrics
2	variables
rnon_trainable_variables
slayer_metrics
tlayer_regularization_losses
3regularization_losses
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

ulayers
vmetrics
6	variables
wnon_trainable_variables
xlayer_metrics
ylayer_regularization_losses
7regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
5:3@?2conv2d_transpose_13/kernel
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

zlayers
{metrics
<	variables
|non_trainable_variables
}layer_metrics
~layer_regularization_losses
=regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
*:(@2batch_normalization_14/gamma
):'@2batch_normalization_14/beta
2:0@ (2"batch_normalization_14/moving_mean
6:4@ (2&batch_normalization_14/moving_variance
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

layers
?metrics
E	variables
?non_trainable_variables
?layer_metrics
 ?layer_regularization_losses
Fregularization_losses
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
?layers
?metrics
I	variables
?non_trainable_variables
?layer_metrics
 ?layer_regularization_losses
Jregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
4:2@2conv2d_transpose_14/kernel
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
?layers
?metrics
O	variables
?non_trainable_variables
?layer_metrics
 ?layer_regularization_losses
Pregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
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
 "
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
 "
trackable_list_wrapper
?2?
-__inference_sequential_4_layer_call_fn_311063
-__inference_sequential_4_layer_call_fn_311423
-__inference_sequential_4_layer_call_fn_311460
-__inference_sequential_4_layer_call_fn_311253?
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
!__inference__wrapped_model_310372?
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
annotations? *,?)
'?$
dense_4_input?????????2
?2?
H__inference_sequential_4_layer_call_and_return_conditional_losses_311573
H__inference_sequential_4_layer_call_and_return_conditional_losses_311700
H__inference_sequential_4_layer_call_and_return_conditional_losses_311300
H__inference_sequential_4_layer_call_and_return_conditional_losses_311347?
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
(__inference_dense_4_layer_call_fn_311707?
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
C__inference_dense_4_layer_call_and_return_conditional_losses_311714?
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
7__inference_batch_normalization_12_layer_call_fn_311727
7__inference_batch_normalization_12_layer_call_fn_311740?
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
R__inference_batch_normalization_12_layer_call_and_return_conditional_losses_311760
R__inference_batch_normalization_12_layer_call_and_return_conditional_losses_311794?
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
/__inference_leaky_re_lu_12_layer_call_fn_311799?
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
J__inference_leaky_re_lu_12_layer_call_and_return_conditional_losses_311804?
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
*__inference_reshape_4_layer_call_fn_311809?
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
E__inference_reshape_4_layer_call_and_return_conditional_losses_311823?
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
4__inference_conv2d_transpose_12_layer_call_fn_310573?
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
O__inference_conv2d_transpose_12_layer_call_and_return_conditional_losses_310565?
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
7__inference_batch_normalization_13_layer_call_fn_311836
7__inference_batch_normalization_13_layer_call_fn_311849?
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
R__inference_batch_normalization_13_layer_call_and_return_conditional_losses_311867
R__inference_batch_normalization_13_layer_call_and_return_conditional_losses_311885?
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
/__inference_leaky_re_lu_13_layer_call_fn_311890?
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
J__inference_leaky_re_lu_13_layer_call_and_return_conditional_losses_311895?
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
4__inference_conv2d_transpose_13_layer_call_fn_310754?
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
O__inference_conv2d_transpose_13_layer_call_and_return_conditional_losses_310746?
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
7__inference_batch_normalization_14_layer_call_fn_311908
7__inference_batch_normalization_14_layer_call_fn_311921?
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
R__inference_batch_normalization_14_layer_call_and_return_conditional_losses_311939
R__inference_batch_normalization_14_layer_call_and_return_conditional_losses_311957?
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
/__inference_leaky_re_lu_14_layer_call_fn_311962?
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
J__inference_leaky_re_lu_14_layer_call_and_return_conditional_losses_311967?
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
4__inference_conv2d_transpose_14_layer_call_fn_310936?
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
O__inference_conv2d_transpose_14_layer_call_and_return_conditional_losses_310928?
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
$__inference_signature_wrapper_311386dense_4_input"?
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
!__inference__wrapped_model_310372?'-./0:@ABCM6?3
,?)
'?$
dense_4_input?????????2
? "Q?N
L
conv2d_transpose_145?2
conv2d_transpose_14??????????
R__inference_batch_normalization_12_layer_call_and_return_conditional_losses_311760d4?1
*?'
!?
inputs??????????(
p 
? "&?#
?
0??????????(
? ?
R__inference_batch_normalization_12_layer_call_and_return_conditional_losses_311794d4?1
*?'
!?
inputs??????????(
p
? "&?#
?
0??????????(
? ?
7__inference_batch_normalization_12_layer_call_fn_311727W4?1
*?'
!?
inputs??????????(
p 
? "???????????(?
7__inference_batch_normalization_12_layer_call_fn_311740W4?1
*?'
!?
inputs??????????(
p
? "???????????(?
R__inference_batch_normalization_13_layer_call_and_return_conditional_losses_311867?-./0N?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
R__inference_batch_normalization_13_layer_call_and_return_conditional_losses_311885?-./0N?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
7__inference_batch_normalization_13_layer_call_fn_311836?-./0N?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
7__inference_batch_normalization_13_layer_call_fn_311849?-./0N?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
R__inference_batch_normalization_14_layer_call_and_return_conditional_losses_311939?@ABCM?J
C?@
:?7
inputs+???????????????????????????@
p 
? "??<
5?2
0+???????????????????????????@
? ?
R__inference_batch_normalization_14_layer_call_and_return_conditional_losses_311957?@ABCM?J
C?@
:?7
inputs+???????????????????????????@
p
? "??<
5?2
0+???????????????????????????@
? ?
7__inference_batch_normalization_14_layer_call_fn_311908?@ABCM?J
C?@
:?7
inputs+???????????????????????????@
p 
? "2?/+???????????????????????????@?
7__inference_batch_normalization_14_layer_call_fn_311921?@ABCM?J
C?@
:?7
inputs+???????????????????????????@
p
? "2?/+???????????????????????????@?
O__inference_conv2d_transpose_12_layer_call_and_return_conditional_losses_310565?'J?G
@?=
;?8
inputs,????????????????????????????
? "@?=
6?3
0,????????????????????????????
? ?
4__inference_conv2d_transpose_12_layer_call_fn_310573?'J?G
@?=
;?8
inputs,????????????????????????????
? "3?0,?????????????????????????????
O__inference_conv2d_transpose_13_layer_call_and_return_conditional_losses_310746?:J?G
@?=
;?8
inputs,????????????????????????????
? "??<
5?2
0+???????????????????????????@
? ?
4__inference_conv2d_transpose_13_layer_call_fn_310754?:J?G
@?=
;?8
inputs,????????????????????????????
? "2?/+???????????????????????????@?
O__inference_conv2d_transpose_14_layer_call_and_return_conditional_losses_310928?MI?F
??<
:?7
inputs+???????????????????????????@
? "??<
5?2
0+???????????????????????????
? ?
4__inference_conv2d_transpose_14_layer_call_fn_310936?MI?F
??<
:?7
inputs+???????????????????????????@
? "2?/+????????????????????????????
C__inference_dense_4_layer_call_and_return_conditional_losses_311714\/?,
%?"
 ?
inputs?????????2
? "&?#
?
0??????????(
? {
(__inference_dense_4_layer_call_fn_311707O/?,
%?"
 ?
inputs?????????2
? "???????????(?
J__inference_leaky_re_lu_12_layer_call_and_return_conditional_losses_311804Z0?-
&?#
!?
inputs??????????(
? "&?#
?
0??????????(
? ?
/__inference_leaky_re_lu_12_layer_call_fn_311799M0?-
&?#
!?
inputs??????????(
? "???????????(?
J__inference_leaky_re_lu_13_layer_call_and_return_conditional_losses_311895?J?G
@?=
;?8
inputs,????????????????????????????
? "@?=
6?3
0,????????????????????????????
? ?
/__inference_leaky_re_lu_13_layer_call_fn_311890?J?G
@?=
;?8
inputs,????????????????????????????
? "3?0,?????????????????????????????
J__inference_leaky_re_lu_14_layer_call_and_return_conditional_losses_311967?I?F
??<
:?7
inputs+???????????????????????????@
? "??<
5?2
0+???????????????????????????@
? ?
/__inference_leaky_re_lu_14_layer_call_fn_311962I?F
??<
:?7
inputs+???????????????????????????@
? "2?/+???????????????????????????@?
E__inference_reshape_4_layer_call_and_return_conditional_losses_311823b0?-
&?#
!?
inputs??????????(
? ".?+
$?!
0??????????
? ?
*__inference_reshape_4_layer_call_fn_311809U0?-
&?#
!?
inputs??????????(
? "!????????????
H__inference_sequential_4_layer_call_and_return_conditional_losses_311300?'-./0:@ABCM>?;
4?1
'?$
dense_4_input?????????2
p 

 
? "??<
5?2
0+???????????????????????????
? ?
H__inference_sequential_4_layer_call_and_return_conditional_losses_311347?'-./0:@ABCM>?;
4?1
'?$
dense_4_input?????????2
p

 
? "??<
5?2
0+???????????????????????????
? ?
H__inference_sequential_4_layer_call_and_return_conditional_losses_311573z'-./0:@ABCM7?4
-?*
 ?
inputs?????????2
p 

 
? "-?*
#? 
0?????????
? ?
H__inference_sequential_4_layer_call_and_return_conditional_losses_311700z'-./0:@ABCM7?4
-?*
 ?
inputs?????????2
p

 
? "-?*
#? 
0?????????
? ?
-__inference_sequential_4_layer_call_fn_311063?'-./0:@ABCM>?;
4?1
'?$
dense_4_input?????????2
p 

 
? "2?/+????????????????????????????
-__inference_sequential_4_layer_call_fn_311253?'-./0:@ABCM>?;
4?1
'?$
dense_4_input?????????2
p

 
? "2?/+????????????????????????????
-__inference_sequential_4_layer_call_fn_311423'-./0:@ABCM7?4
-?*
 ?
inputs?????????2
p 

 
? "2?/+????????????????????????????
-__inference_sequential_4_layer_call_fn_311460'-./0:@ABCM7?4
-?*
 ?
inputs?????????2
p

 
? "2?/+????????????????????????????
$__inference_signature_wrapper_311386?'-./0:@ABCMG?D
? 
=?:
8
dense_4_input'?$
dense_4_input?????????2"Q?N
L
conv2d_transpose_145?2
conv2d_transpose_14?????????