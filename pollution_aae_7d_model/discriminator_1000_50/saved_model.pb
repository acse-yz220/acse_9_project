??
??
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
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
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
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
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
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.5.02v2.5.0-0-ga4dfb8d1a718??
{
dense_67/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?* 
shared_namedense_67/kernel
t
#dense_67/kernel/Read/ReadVariableOpReadVariableOpdense_67/kernel*
_output_shapes
:	2?*
dtype0
?
batch_normalization_82/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*-
shared_namebatch_normalization_82/gamma
?
0batch_normalization_82/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_82/gamma*
_output_shapes	
:?*
dtype0
?
batch_normalization_82/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namebatch_normalization_82/beta
?
/batch_normalization_82/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_82/beta*
_output_shapes	
:?*
dtype0
?
"batch_normalization_82/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"batch_normalization_82/moving_mean
?
6batch_normalization_82/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_82/moving_mean*
_output_shapes	
:?*
dtype0
?
&batch_normalization_82/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*7
shared_name(&batch_normalization_82/moving_variance
?
:batch_normalization_82/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_82/moving_variance*
_output_shapes	
:?*
dtype0
{
dense_68/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?* 
shared_namedense_68/kernel
t
#dense_68/kernel/Read/ReadVariableOpReadVariableOpdense_68/kernel*
_output_shapes
:	?*
dtype0
r
dense_68/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_68/bias
k
!dense_68/bias/Read/ReadVariableOpReadVariableOpdense_68/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
?
Adam/dense_67/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*'
shared_nameAdam/dense_67/kernel/m
?
*Adam/dense_67/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_67/kernel/m*
_output_shapes
:	2?*
dtype0
?
#Adam/batch_normalization_82/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*4
shared_name%#Adam/batch_normalization_82/gamma/m
?
7Adam/batch_normalization_82/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_82/gamma/m*
_output_shapes	
:?*
dtype0
?
"Adam/batch_normalization_82/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/batch_normalization_82/beta/m
?
6Adam/batch_normalization_82/beta/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_82/beta/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_68/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*'
shared_nameAdam/dense_68/kernel/m
?
*Adam/dense_68/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_68/kernel/m*
_output_shapes
:	?*
dtype0
?
Adam/dense_68/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_68/bias/m
y
(Adam/dense_68/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_68/bias/m*
_output_shapes
:*
dtype0
?
Adam/dense_67/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*'
shared_nameAdam/dense_67/kernel/v
?
*Adam/dense_67/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_67/kernel/v*
_output_shapes
:	2?*
dtype0
?
#Adam/batch_normalization_82/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*4
shared_name%#Adam/batch_normalization_82/gamma/v
?
7Adam/batch_normalization_82/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_82/gamma/v*
_output_shapes	
:?*
dtype0
?
"Adam/batch_normalization_82/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/batch_normalization_82/beta/v
?
6Adam/batch_normalization_82/beta/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_82/beta/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_68/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*'
shared_nameAdam/dense_68/kernel/v
?
*Adam/dense_68/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_68/kernel/v*
_output_shapes
:	?*
dtype0
?
Adam/dense_68/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_68/bias/v
y
(Adam/dense_68/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_68/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
?(
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?'
value?'B?' B?'
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer-4
layer_with_weights-2
layer-5
	optimizer
	variables
	trainable_variables

regularization_losses
	keras_api

signatures
 
^

kernel
	variables
trainable_variables
regularization_losses
	keras_api
?
axis
	gamma
beta
moving_mean
moving_variance
	variables
trainable_variables
regularization_losses
	keras_api
R
	variables
trainable_variables
regularization_losses
	keras_api
R
	variables
 trainable_variables
!regularization_losses
"	keras_api
h

#kernel
$bias
%	variables
&trainable_variables
'regularization_losses
(	keras_api
?
)iter

*beta_1

+beta_2
	,decay
-learning_ratemQmRmS#mT$mUvVvWvX#vY$vZ
1
0
1
2
3
4
#5
$6
#
0
1
2
#3
$4
 
?
.layer_metrics
/layer_regularization_losses
0metrics
1non_trainable_variables
	variables

2layers
	trainable_variables

regularization_losses
 
[Y
VARIABLE_VALUEdense_67/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE

0

0
 
?
3layer_metrics
4layer_regularization_losses
5metrics
6non_trainable_variables
	variables

7layers
trainable_variables
regularization_losses
 
ge
VARIABLE_VALUEbatch_normalization_82/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_82/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_82/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_82/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

0
1
2
3

0
1
 
?
8layer_metrics
9layer_regularization_losses
:metrics
;non_trainable_variables
	variables

<layers
trainable_variables
regularization_losses
 
 
 
?
=layer_metrics
>layer_regularization_losses
?metrics
@non_trainable_variables
	variables

Alayers
trainable_variables
regularization_losses
 
 
 
?
Blayer_metrics
Clayer_regularization_losses
Dmetrics
Enon_trainable_variables
	variables

Flayers
 trainable_variables
!regularization_losses
[Y
VARIABLE_VALUEdense_68/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_68/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

#0
$1

#0
$1
 
?
Glayer_metrics
Hlayer_regularization_losses
Imetrics
Jnon_trainable_variables
%	variables

Klayers
&trainable_variables
'regularization_losses
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
 
 

L0

0
1
*
0
1
2
3
4
5
 
 
 
 
 
 
 
 

0
1
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
4
	Mtotal
	Ncount
O	variables
P	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

M0
N1

O	variables
~|
VARIABLE_VALUEAdam/dense_67/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE#Adam/batch_normalization_82/gamma/mQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"Adam/batch_normalization_82/beta/mPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_68/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_68/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_67/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE#Adam/batch_normalization_82/gamma/vQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"Adam/batch_normalization_82/beta/vPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_68/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_68/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{
serving_default_input_45Placeholder*'
_output_shapes
:?????????2*
dtype0*
shape:?????????2
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_45dense_67/kernel&batch_normalization_82/moving_variancebatch_normalization_82/gamma"batch_normalization_82/moving_meanbatch_normalization_82/betadense_68/kerneldense_68/bias*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*)
_read_only_resource_inputs
	*0
config_proto 

CPU

GPU2*0J 8? *.
f)R'
%__inference_signature_wrapper_8525651
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_67/kernel/Read/ReadVariableOp0batch_normalization_82/gamma/Read/ReadVariableOp/batch_normalization_82/beta/Read/ReadVariableOp6batch_normalization_82/moving_mean/Read/ReadVariableOp:batch_normalization_82/moving_variance/Read/ReadVariableOp#dense_68/kernel/Read/ReadVariableOp!dense_68/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/dense_67/kernel/m/Read/ReadVariableOp7Adam/batch_normalization_82/gamma/m/Read/ReadVariableOp6Adam/batch_normalization_82/beta/m/Read/ReadVariableOp*Adam/dense_68/kernel/m/Read/ReadVariableOp(Adam/dense_68/bias/m/Read/ReadVariableOp*Adam/dense_67/kernel/v/Read/ReadVariableOp7Adam/batch_normalization_82/gamma/v/Read/ReadVariableOp6Adam/batch_normalization_82/beta/v/Read/ReadVariableOp*Adam/dense_68/kernel/v/Read/ReadVariableOp(Adam/dense_68/bias/v/Read/ReadVariableOpConst*%
Tin
2	*
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
 __inference__traced_save_8525999
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_67/kernelbatch_normalization_82/gammabatch_normalization_82/beta"batch_normalization_82/moving_mean&batch_normalization_82/moving_variancedense_68/kerneldense_68/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcountAdam/dense_67/kernel/m#Adam/batch_normalization_82/gamma/m"Adam/batch_normalization_82/beta/mAdam/dense_68/kernel/mAdam/dense_68/bias/mAdam/dense_67/kernel/v#Adam/batch_normalization_82/gamma/v"Adam/batch_normalization_82/beta/vAdam/dense_68/kernel/vAdam/dense_68/bias/v*$
Tin
2*
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
#__inference__traced_restore_8526081??
?
?
%__inference_signature_wrapper_8525651
input_45
unknown:	2?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
	unknown_3:	?
	unknown_4:	?
	unknown_5:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_45unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*)
_read_only_resource_inputs
	*0
config_proto 

CPU

GPU2*0J 8? *+
f&R$
"__inference__wrapped_model_85252292
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????2: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:?????????2
"
_user_specified_name
input_45
?
?
J__inference_Discriminator_layer_call_and_return_conditional_losses_8525624
input_45#
dense_67_8525604:	2?-
batch_normalization_82_8525607:	?-
batch_normalization_82_8525609:	?-
batch_normalization_82_8525611:	?-
batch_normalization_82_8525613:	?#
dense_68_8525618:	?
dense_68_8525620:
identity??.batch_normalization_82/StatefulPartitionedCall? dense_67/StatefulPartitionedCall? dense_68/StatefulPartitionedCall?
 dense_67/StatefulPartitionedCallStatefulPartitionedCallinput_45dense_67_8525604*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_67_layer_call_and_return_conditional_losses_85254052"
 dense_67/StatefulPartitionedCall?
.batch_normalization_82/StatefulPartitionedCallStatefulPartitionedCall)dense_67/StatefulPartitionedCall:output:0batch_normalization_82_8525607batch_normalization_82_8525609batch_normalization_82_8525611batch_normalization_82_8525613*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_82_layer_call_and_return_conditional_losses_852531320
.batch_normalization_82/StatefulPartitionedCall?
leaky_re_lu_82/PartitionedCallPartitionedCall7batch_normalization_82/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_leaky_re_lu_82_layer_call_and_return_conditional_losses_85254232 
leaky_re_lu_82/PartitionedCall?
flatten_22/PartitionedCallPartitionedCall'leaky_re_lu_82/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_flatten_22_layer_call_and_return_conditional_losses_85254312
flatten_22/PartitionedCall?
 dense_68/StatefulPartitionedCallStatefulPartitionedCall#flatten_22/PartitionedCall:output:0dense_68_8525618dense_68_8525620*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_68_layer_call_and_return_conditional_losses_85254442"
 dense_68/StatefulPartitionedCall?
IdentityIdentity)dense_68/StatefulPartitionedCall:output:0/^batch_normalization_82/StatefulPartitionedCall!^dense_67/StatefulPartitionedCall!^dense_68/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????2: : : : : : : 2`
.batch_normalization_82/StatefulPartitionedCall.batch_normalization_82/StatefulPartitionedCall2D
 dense_67/StatefulPartitionedCall dense_67/StatefulPartitionedCall2D
 dense_68/StatefulPartitionedCall dense_68/StatefulPartitionedCall:Q M
'
_output_shapes
:?????????2
"
_user_specified_name
input_45
?<
?
"__inference__wrapped_model_8525229
input_45H
5discriminator_dense_67_matmul_readvariableop_resource:	2?U
Fdiscriminator_batch_normalization_82_batchnorm_readvariableop_resource:	?Y
Jdiscriminator_batch_normalization_82_batchnorm_mul_readvariableop_resource:	?W
Hdiscriminator_batch_normalization_82_batchnorm_readvariableop_1_resource:	?W
Hdiscriminator_batch_normalization_82_batchnorm_readvariableop_2_resource:	?H
5discriminator_dense_68_matmul_readvariableop_resource:	?D
6discriminator_dense_68_biasadd_readvariableop_resource:
identity??=Discriminator/batch_normalization_82/batchnorm/ReadVariableOp??Discriminator/batch_normalization_82/batchnorm/ReadVariableOp_1??Discriminator/batch_normalization_82/batchnorm/ReadVariableOp_2?ADiscriminator/batch_normalization_82/batchnorm/mul/ReadVariableOp?,Discriminator/dense_67/MatMul/ReadVariableOp?-Discriminator/dense_68/BiasAdd/ReadVariableOp?,Discriminator/dense_68/MatMul/ReadVariableOp?
,Discriminator/dense_67/MatMul/ReadVariableOpReadVariableOp5discriminator_dense_67_matmul_readvariableop_resource*
_output_shapes
:	2?*
dtype02.
,Discriminator/dense_67/MatMul/ReadVariableOp?
Discriminator/dense_67/MatMulMatMulinput_454Discriminator/dense_67/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
Discriminator/dense_67/MatMul?
=Discriminator/batch_normalization_82/batchnorm/ReadVariableOpReadVariableOpFdiscriminator_batch_normalization_82_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02?
=Discriminator/batch_normalization_82/batchnorm/ReadVariableOp?
4Discriminator/batch_normalization_82/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:26
4Discriminator/batch_normalization_82/batchnorm/add/y?
2Discriminator/batch_normalization_82/batchnorm/addAddV2EDiscriminator/batch_normalization_82/batchnorm/ReadVariableOp:value:0=Discriminator/batch_normalization_82/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?24
2Discriminator/batch_normalization_82/batchnorm/add?
4Discriminator/batch_normalization_82/batchnorm/RsqrtRsqrt6Discriminator/batch_normalization_82/batchnorm/add:z:0*
T0*
_output_shapes	
:?26
4Discriminator/batch_normalization_82/batchnorm/Rsqrt?
ADiscriminator/batch_normalization_82/batchnorm/mul/ReadVariableOpReadVariableOpJdiscriminator_batch_normalization_82_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02C
ADiscriminator/batch_normalization_82/batchnorm/mul/ReadVariableOp?
2Discriminator/batch_normalization_82/batchnorm/mulMul8Discriminator/batch_normalization_82/batchnorm/Rsqrt:y:0IDiscriminator/batch_normalization_82/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?24
2Discriminator/batch_normalization_82/batchnorm/mul?
4Discriminator/batch_normalization_82/batchnorm/mul_1Mul'Discriminator/dense_67/MatMul:product:06Discriminator/batch_normalization_82/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????26
4Discriminator/batch_normalization_82/batchnorm/mul_1?
?Discriminator/batch_normalization_82/batchnorm/ReadVariableOp_1ReadVariableOpHdiscriminator_batch_normalization_82_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02A
?Discriminator/batch_normalization_82/batchnorm/ReadVariableOp_1?
4Discriminator/batch_normalization_82/batchnorm/mul_2MulGDiscriminator/batch_normalization_82/batchnorm/ReadVariableOp_1:value:06Discriminator/batch_normalization_82/batchnorm/mul:z:0*
T0*
_output_shapes	
:?26
4Discriminator/batch_normalization_82/batchnorm/mul_2?
?Discriminator/batch_normalization_82/batchnorm/ReadVariableOp_2ReadVariableOpHdiscriminator_batch_normalization_82_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02A
?Discriminator/batch_normalization_82/batchnorm/ReadVariableOp_2?
2Discriminator/batch_normalization_82/batchnorm/subSubGDiscriminator/batch_normalization_82/batchnorm/ReadVariableOp_2:value:08Discriminator/batch_normalization_82/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?24
2Discriminator/batch_normalization_82/batchnorm/sub?
4Discriminator/batch_normalization_82/batchnorm/add_1AddV28Discriminator/batch_normalization_82/batchnorm/mul_1:z:06Discriminator/batch_normalization_82/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????26
4Discriminator/batch_normalization_82/batchnorm/add_1?
&Discriminator/leaky_re_lu_82/LeakyRelu	LeakyRelu8Discriminator/batch_normalization_82/batchnorm/add_1:z:0*(
_output_shapes
:??????????*
alpha%???>2(
&Discriminator/leaky_re_lu_82/LeakyRelu?
Discriminator/flatten_22/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????   2 
Discriminator/flatten_22/Const?
 Discriminator/flatten_22/ReshapeReshape4Discriminator/leaky_re_lu_82/LeakyRelu:activations:0'Discriminator/flatten_22/Const:output:0*
T0*(
_output_shapes
:??????????2"
 Discriminator/flatten_22/Reshape?
,Discriminator/dense_68/MatMul/ReadVariableOpReadVariableOp5discriminator_dense_68_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02.
,Discriminator/dense_68/MatMul/ReadVariableOp?
Discriminator/dense_68/MatMulMatMul)Discriminator/flatten_22/Reshape:output:04Discriminator/dense_68/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
Discriminator/dense_68/MatMul?
-Discriminator/dense_68/BiasAdd/ReadVariableOpReadVariableOp6discriminator_dense_68_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-Discriminator/dense_68/BiasAdd/ReadVariableOp?
Discriminator/dense_68/BiasAddBiasAdd'Discriminator/dense_68/MatMul:product:05Discriminator/dense_68/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2 
Discriminator/dense_68/BiasAdd?
Discriminator/dense_68/SigmoidSigmoid'Discriminator/dense_68/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2 
Discriminator/dense_68/Sigmoid?
IdentityIdentity"Discriminator/dense_68/Sigmoid:y:0>^Discriminator/batch_normalization_82/batchnorm/ReadVariableOp@^Discriminator/batch_normalization_82/batchnorm/ReadVariableOp_1@^Discriminator/batch_normalization_82/batchnorm/ReadVariableOp_2B^Discriminator/batch_normalization_82/batchnorm/mul/ReadVariableOp-^Discriminator/dense_67/MatMul/ReadVariableOp.^Discriminator/dense_68/BiasAdd/ReadVariableOp-^Discriminator/dense_68/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????2: : : : : : : 2~
=Discriminator/batch_normalization_82/batchnorm/ReadVariableOp=Discriminator/batch_normalization_82/batchnorm/ReadVariableOp2?
?Discriminator/batch_normalization_82/batchnorm/ReadVariableOp_1?Discriminator/batch_normalization_82/batchnorm/ReadVariableOp_12?
?Discriminator/batch_normalization_82/batchnorm/ReadVariableOp_2?Discriminator/batch_normalization_82/batchnorm/ReadVariableOp_22?
ADiscriminator/batch_normalization_82/batchnorm/mul/ReadVariableOpADiscriminator/batch_normalization_82/batchnorm/mul/ReadVariableOp2\
,Discriminator/dense_67/MatMul/ReadVariableOp,Discriminator/dense_67/MatMul/ReadVariableOp2^
-Discriminator/dense_68/BiasAdd/ReadVariableOp-Discriminator/dense_68/BiasAdd/ReadVariableOp2\
,Discriminator/dense_68/MatMul/ReadVariableOp,Discriminator/dense_68/MatMul/ReadVariableOp:Q M
'
_output_shapes
:?????????2
"
_user_specified_name
input_45
?
?
S__inference_batch_normalization_82_layer_call_and_return_conditional_losses_8525253

inputs0
!batchnorm_readvariableop_resource:	?4
%batchnorm_mul_readvariableop_resource:	?2
#batchnorm_readvariableop_1_resource:	?2
#batchnorm_readvariableop_2_resource:	?
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
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
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
J__inference_Discriminator_layer_call_and_return_conditional_losses_8525451

inputs#
dense_67_8525406:	2?-
batch_normalization_82_8525409:	?-
batch_normalization_82_8525411:	?-
batch_normalization_82_8525413:	?-
batch_normalization_82_8525415:	?#
dense_68_8525445:	?
dense_68_8525447:
identity??.batch_normalization_82/StatefulPartitionedCall? dense_67/StatefulPartitionedCall? dense_68/StatefulPartitionedCall?
 dense_67/StatefulPartitionedCallStatefulPartitionedCallinputsdense_67_8525406*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_67_layer_call_and_return_conditional_losses_85254052"
 dense_67/StatefulPartitionedCall?
.batch_normalization_82/StatefulPartitionedCallStatefulPartitionedCall)dense_67/StatefulPartitionedCall:output:0batch_normalization_82_8525409batch_normalization_82_8525411batch_normalization_82_8525413batch_normalization_82_8525415*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_82_layer_call_and_return_conditional_losses_852525320
.batch_normalization_82/StatefulPartitionedCall?
leaky_re_lu_82/PartitionedCallPartitionedCall7batch_normalization_82/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_leaky_re_lu_82_layer_call_and_return_conditional_losses_85254232 
leaky_re_lu_82/PartitionedCall?
flatten_22/PartitionedCallPartitionedCall'leaky_re_lu_82/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_flatten_22_layer_call_and_return_conditional_losses_85254312
flatten_22/PartitionedCall?
 dense_68/StatefulPartitionedCallStatefulPartitionedCall#flatten_22/PartitionedCall:output:0dense_68_8525445dense_68_8525447*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_68_layer_call_and_return_conditional_losses_85254442"
 dense_68/StatefulPartitionedCall?
IdentityIdentity)dense_68/StatefulPartitionedCall:output:0/^batch_normalization_82/StatefulPartitionedCall!^dense_67/StatefulPartitionedCall!^dense_68/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????2: : : : : : : 2`
.batch_normalization_82/StatefulPartitionedCall.batch_normalization_82/StatefulPartitionedCall2D
 dense_67/StatefulPartitionedCall dense_67/StatefulPartitionedCall2D
 dense_68/StatefulPartitionedCall dense_68/StatefulPartitionedCall:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?j
?
#__inference__traced_restore_8526081
file_prefix3
 assignvariableop_dense_67_kernel:	2?>
/assignvariableop_1_batch_normalization_82_gamma:	?=
.assignvariableop_2_batch_normalization_82_beta:	?D
5assignvariableop_3_batch_normalization_82_moving_mean:	?H
9assignvariableop_4_batch_normalization_82_moving_variance:	?5
"assignvariableop_5_dense_68_kernel:	?.
 assignvariableop_6_dense_68_bias:&
assignvariableop_7_adam_iter:	 (
assignvariableop_8_adam_beta_1: (
assignvariableop_9_adam_beta_2: (
assignvariableop_10_adam_decay: 0
&assignvariableop_11_adam_learning_rate: #
assignvariableop_12_total: #
assignvariableop_13_count: =
*assignvariableop_14_adam_dense_67_kernel_m:	2?F
7assignvariableop_15_adam_batch_normalization_82_gamma_m:	?E
6assignvariableop_16_adam_batch_normalization_82_beta_m:	?=
*assignvariableop_17_adam_dense_68_kernel_m:	?6
(assignvariableop_18_adam_dense_68_bias_m:=
*assignvariableop_19_adam_dense_67_kernel_v:	2?F
7assignvariableop_20_adam_batch_normalization_82_gamma_v:	?E
6assignvariableop_21_adam_batch_normalization_82_beta_v:	?=
*assignvariableop_22_adam_dense_68_kernel_v:	?6
(assignvariableop_23_adam_dense_68_bias_v:
identity_25??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*E
value<B:B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*x
_output_shapesf
d:::::::::::::::::::::::::*'
dtypes
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp assignvariableop_dense_67_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp/assignvariableop_1_batch_normalization_82_gammaIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp.assignvariableop_2_batch_normalization_82_betaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp5assignvariableop_3_batch_normalization_82_moving_meanIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp9assignvariableop_4_batch_normalization_82_moving_varianceIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp"assignvariableop_5_dense_68_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp assignvariableop_6_dense_68_biasIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_iterIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_beta_1Identity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_beta_2Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_decayIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp&assignvariableop_11_adam_learning_rateIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOpassignvariableop_12_totalIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOpassignvariableop_13_countIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp*assignvariableop_14_adam_dense_67_kernel_mIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp7assignvariableop_15_adam_batch_normalization_82_gamma_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp6assignvariableop_16_adam_batch_normalization_82_beta_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp*assignvariableop_17_adam_dense_68_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp(assignvariableop_18_adam_dense_68_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp*assignvariableop_19_adam_dense_67_kernel_vIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp7assignvariableop_20_adam_batch_normalization_82_gamma_vIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp6assignvariableop_21_adam_batch_normalization_82_beta_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp*assignvariableop_22_adam_dense_68_kernel_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp(assignvariableop_23_adam_dense_68_bias_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_239
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_24Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_24?
Identity_25IdentityIdentity_24:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_25"#
identity_25Identity_25:output:0*E
_input_shapes4
2: : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232(
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
?
?
/__inference_Discriminator_layer_call_fn_8525769

inputs
unknown:	2?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
	unknown_3:	?
	unknown_4:	?
	unknown_5:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*'
_read_only_resource_inputs	
*0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_Discriminator_layer_call_and_return_conditional_losses_85255422
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????2: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
g
K__inference_leaky_re_lu_82_layer_call_and_return_conditional_losses_8525868

inputs
identitye
	LeakyRelu	LeakyReluinputs*(
_output_shapes
:??????????*
alpha%???>2
	LeakyRelul
IdentityIdentityLeakyRelu:activations:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
E__inference_dense_67_layer_call_and_return_conditional_losses_8525405

inputs1
matmul_readvariableop_resource:	2?
identity??MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	2?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul}
IdentityIdentityMatMul:product:0^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

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

?
E__inference_dense_68_layer_call_and_return_conditional_losses_8525444

inputs1
matmul_readvariableop_resource:	?-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Sigmoid?
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_82_layer_call_and_return_conditional_losses_8525803

inputs0
!batchnorm_readvariableop_resource:	?4
%batchnorm_mul_readvariableop_resource:	?2
#batchnorm_readvariableop_1_resource:	?2
#batchnorm_readvariableop_2_resource:	?
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
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
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
H
,__inference_flatten_22_layer_call_fn_8525884

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
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_flatten_22_layer_call_and_return_conditional_losses_85254312
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
J__inference_Discriminator_layer_call_and_return_conditional_losses_8525601
input_45#
dense_67_8525581:	2?-
batch_normalization_82_8525584:	?-
batch_normalization_82_8525586:	?-
batch_normalization_82_8525588:	?-
batch_normalization_82_8525590:	?#
dense_68_8525595:	?
dense_68_8525597:
identity??.batch_normalization_82/StatefulPartitionedCall? dense_67/StatefulPartitionedCall? dense_68/StatefulPartitionedCall?
 dense_67/StatefulPartitionedCallStatefulPartitionedCallinput_45dense_67_8525581*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_67_layer_call_and_return_conditional_losses_85254052"
 dense_67/StatefulPartitionedCall?
.batch_normalization_82/StatefulPartitionedCallStatefulPartitionedCall)dense_67/StatefulPartitionedCall:output:0batch_normalization_82_8525584batch_normalization_82_8525586batch_normalization_82_8525588batch_normalization_82_8525590*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_82_layer_call_and_return_conditional_losses_852525320
.batch_normalization_82/StatefulPartitionedCall?
leaky_re_lu_82/PartitionedCallPartitionedCall7batch_normalization_82/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_leaky_re_lu_82_layer_call_and_return_conditional_losses_85254232 
leaky_re_lu_82/PartitionedCall?
flatten_22/PartitionedCallPartitionedCall'leaky_re_lu_82/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_flatten_22_layer_call_and_return_conditional_losses_85254312
flatten_22/PartitionedCall?
 dense_68/StatefulPartitionedCallStatefulPartitionedCall#flatten_22/PartitionedCall:output:0dense_68_8525595dense_68_8525597*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_68_layer_call_and_return_conditional_losses_85254442"
 dense_68/StatefulPartitionedCall?
IdentityIdentity)dense_68/StatefulPartitionedCall:output:0/^batch_normalization_82/StatefulPartitionedCall!^dense_67/StatefulPartitionedCall!^dense_68/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????2: : : : : : : 2`
.batch_normalization_82/StatefulPartitionedCall.batch_normalization_82/StatefulPartitionedCall2D
 dense_67/StatefulPartitionedCall dense_67/StatefulPartitionedCall2D
 dense_68/StatefulPartitionedCall dense_68/StatefulPartitionedCall:Q M
'
_output_shapes
:?????????2
"
_user_specified_name
input_45
?Q
?
J__inference_Discriminator_layer_call_and_return_conditional_losses_8525731

inputs:
'dense_67_matmul_readvariableop_resource:	2?M
>batch_normalization_82_assignmovingavg_readvariableop_resource:	?O
@batch_normalization_82_assignmovingavg_1_readvariableop_resource:	?K
<batch_normalization_82_batchnorm_mul_readvariableop_resource:	?G
8batch_normalization_82_batchnorm_readvariableop_resource:	?:
'dense_68_matmul_readvariableop_resource:	?6
(dense_68_biasadd_readvariableop_resource:
identity??&batch_normalization_82/AssignMovingAvg?5batch_normalization_82/AssignMovingAvg/ReadVariableOp?(batch_normalization_82/AssignMovingAvg_1?7batch_normalization_82/AssignMovingAvg_1/ReadVariableOp?/batch_normalization_82/batchnorm/ReadVariableOp?3batch_normalization_82/batchnorm/mul/ReadVariableOp?dense_67/MatMul/ReadVariableOp?dense_68/BiasAdd/ReadVariableOp?dense_68/MatMul/ReadVariableOp?
dense_67/MatMul/ReadVariableOpReadVariableOp'dense_67_matmul_readvariableop_resource*
_output_shapes
:	2?*
dtype02 
dense_67/MatMul/ReadVariableOp?
dense_67/MatMulMatMulinputs&dense_67/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_67/MatMul?
5batch_normalization_82/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 27
5batch_normalization_82/moments/mean/reduction_indices?
#batch_normalization_82/moments/meanMeandense_67/MatMul:product:0>batch_normalization_82/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2%
#batch_normalization_82/moments/mean?
+batch_normalization_82/moments/StopGradientStopGradient,batch_normalization_82/moments/mean:output:0*
T0*
_output_shapes
:	?2-
+batch_normalization_82/moments/StopGradient?
0batch_normalization_82/moments/SquaredDifferenceSquaredDifferencedense_67/MatMul:product:04batch_normalization_82/moments/StopGradient:output:0*
T0*(
_output_shapes
:??????????22
0batch_normalization_82/moments/SquaredDifference?
9batch_normalization_82/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2;
9batch_normalization_82/moments/variance/reduction_indices?
'batch_normalization_82/moments/varianceMean4batch_normalization_82/moments/SquaredDifference:z:0Bbatch_normalization_82/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2)
'batch_normalization_82/moments/variance?
&batch_normalization_82/moments/SqueezeSqueeze,batch_normalization_82/moments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2(
&batch_normalization_82/moments/Squeeze?
(batch_normalization_82/moments/Squeeze_1Squeeze0batch_normalization_82/moments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2*
(batch_normalization_82/moments/Squeeze_1?
,batch_normalization_82/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2.
,batch_normalization_82/AssignMovingAvg/decay?
5batch_normalization_82/AssignMovingAvg/ReadVariableOpReadVariableOp>batch_normalization_82_assignmovingavg_readvariableop_resource*
_output_shapes	
:?*
dtype027
5batch_normalization_82/AssignMovingAvg/ReadVariableOp?
*batch_normalization_82/AssignMovingAvg/subSub=batch_normalization_82/AssignMovingAvg/ReadVariableOp:value:0/batch_normalization_82/moments/Squeeze:output:0*
T0*
_output_shapes	
:?2,
*batch_normalization_82/AssignMovingAvg/sub?
*batch_normalization_82/AssignMovingAvg/mulMul.batch_normalization_82/AssignMovingAvg/sub:z:05batch_normalization_82/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:?2,
*batch_normalization_82/AssignMovingAvg/mul?
&batch_normalization_82/AssignMovingAvgAssignSubVariableOp>batch_normalization_82_assignmovingavg_readvariableop_resource.batch_normalization_82/AssignMovingAvg/mul:z:06^batch_normalization_82/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02(
&batch_normalization_82/AssignMovingAvg?
.batch_normalization_82/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<20
.batch_normalization_82/AssignMovingAvg_1/decay?
7batch_normalization_82/AssignMovingAvg_1/ReadVariableOpReadVariableOp@batch_normalization_82_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_82/AssignMovingAvg_1/ReadVariableOp?
,batch_normalization_82/AssignMovingAvg_1/subSub?batch_normalization_82/AssignMovingAvg_1/ReadVariableOp:value:01batch_normalization_82/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?2.
,batch_normalization_82/AssignMovingAvg_1/sub?
,batch_normalization_82/AssignMovingAvg_1/mulMul0batch_normalization_82/AssignMovingAvg_1/sub:z:07batch_normalization_82/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:?2.
,batch_normalization_82/AssignMovingAvg_1/mul?
(batch_normalization_82/AssignMovingAvg_1AssignSubVariableOp@batch_normalization_82_assignmovingavg_1_readvariableop_resource0batch_normalization_82/AssignMovingAvg_1/mul:z:08^batch_normalization_82/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02*
(batch_normalization_82/AssignMovingAvg_1?
&batch_normalization_82/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2(
&batch_normalization_82/batchnorm/add/y?
$batch_normalization_82/batchnorm/addAddV21batch_normalization_82/moments/Squeeze_1:output:0/batch_normalization_82/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2&
$batch_normalization_82/batchnorm/add?
&batch_normalization_82/batchnorm/RsqrtRsqrt(batch_normalization_82/batchnorm/add:z:0*
T0*
_output_shapes	
:?2(
&batch_normalization_82/batchnorm/Rsqrt?
3batch_normalization_82/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_82_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype025
3batch_normalization_82/batchnorm/mul/ReadVariableOp?
$batch_normalization_82/batchnorm/mulMul*batch_normalization_82/batchnorm/Rsqrt:y:0;batch_normalization_82/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2&
$batch_normalization_82/batchnorm/mul?
&batch_normalization_82/batchnorm/mul_1Muldense_67/MatMul:product:0(batch_normalization_82/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2(
&batch_normalization_82/batchnorm/mul_1?
&batch_normalization_82/batchnorm/mul_2Mul/batch_normalization_82/moments/Squeeze:output:0(batch_normalization_82/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2(
&batch_normalization_82/batchnorm/mul_2?
/batch_normalization_82/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_82_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype021
/batch_normalization_82/batchnorm/ReadVariableOp?
$batch_normalization_82/batchnorm/subSub7batch_normalization_82/batchnorm/ReadVariableOp:value:0*batch_normalization_82/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2&
$batch_normalization_82/batchnorm/sub?
&batch_normalization_82/batchnorm/add_1AddV2*batch_normalization_82/batchnorm/mul_1:z:0(batch_normalization_82/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2(
&batch_normalization_82/batchnorm/add_1?
leaky_re_lu_82/LeakyRelu	LeakyRelu*batch_normalization_82/batchnorm/add_1:z:0*(
_output_shapes
:??????????*
alpha%???>2
leaky_re_lu_82/LeakyReluu
flatten_22/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????   2
flatten_22/Const?
flatten_22/ReshapeReshape&leaky_re_lu_82/LeakyRelu:activations:0flatten_22/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten_22/Reshape?
dense_68/MatMul/ReadVariableOpReadVariableOp'dense_68_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02 
dense_68/MatMul/ReadVariableOp?
dense_68/MatMulMatMulflatten_22/Reshape:output:0&dense_68/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_68/MatMul?
dense_68/BiasAdd/ReadVariableOpReadVariableOp(dense_68_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_68/BiasAdd/ReadVariableOp?
dense_68/BiasAddBiasAdddense_68/MatMul:product:0'dense_68/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_68/BiasAdd|
dense_68/SigmoidSigmoiddense_68/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_68/Sigmoid?
IdentityIdentitydense_68/Sigmoid:y:0'^batch_normalization_82/AssignMovingAvg6^batch_normalization_82/AssignMovingAvg/ReadVariableOp)^batch_normalization_82/AssignMovingAvg_18^batch_normalization_82/AssignMovingAvg_1/ReadVariableOp0^batch_normalization_82/batchnorm/ReadVariableOp4^batch_normalization_82/batchnorm/mul/ReadVariableOp^dense_67/MatMul/ReadVariableOp ^dense_68/BiasAdd/ReadVariableOp^dense_68/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????2: : : : : : : 2P
&batch_normalization_82/AssignMovingAvg&batch_normalization_82/AssignMovingAvg2n
5batch_normalization_82/AssignMovingAvg/ReadVariableOp5batch_normalization_82/AssignMovingAvg/ReadVariableOp2T
(batch_normalization_82/AssignMovingAvg_1(batch_normalization_82/AssignMovingAvg_12r
7batch_normalization_82/AssignMovingAvg_1/ReadVariableOp7batch_normalization_82/AssignMovingAvg_1/ReadVariableOp2b
/batch_normalization_82/batchnorm/ReadVariableOp/batch_normalization_82/batchnorm/ReadVariableOp2j
3batch_normalization_82/batchnorm/mul/ReadVariableOp3batch_normalization_82/batchnorm/mul/ReadVariableOp2@
dense_67/MatMul/ReadVariableOpdense_67/MatMul/ReadVariableOp2B
dense_68/BiasAdd/ReadVariableOpdense_68/BiasAdd/ReadVariableOp2@
dense_68/MatMul/ReadVariableOpdense_68/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
8__inference_batch_normalization_82_layer_call_fn_8525863

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
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_82_layer_call_and_return_conditional_losses_85253132
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?:
?

 __inference__traced_save_8525999
file_prefix.
*savev2_dense_67_kernel_read_readvariableop;
7savev2_batch_normalization_82_gamma_read_readvariableop:
6savev2_batch_normalization_82_beta_read_readvariableopA
=savev2_batch_normalization_82_moving_mean_read_readvariableopE
Asavev2_batch_normalization_82_moving_variance_read_readvariableop.
*savev2_dense_68_kernel_read_readvariableop,
(savev2_dense_68_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_dense_67_kernel_m_read_readvariableopB
>savev2_adam_batch_normalization_82_gamma_m_read_readvariableopA
=savev2_adam_batch_normalization_82_beta_m_read_readvariableop5
1savev2_adam_dense_68_kernel_m_read_readvariableop3
/savev2_adam_dense_68_bias_m_read_readvariableop5
1savev2_adam_dense_67_kernel_v_read_readvariableopB
>savev2_adam_batch_normalization_82_gamma_v_read_readvariableopA
=savev2_adam_batch_normalization_82_beta_v_read_readvariableop5
1savev2_adam_dense_68_kernel_v_read_readvariableop3
/savev2_adam_dense_68_bias_v_read_readvariableop
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
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*E
value<B:B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_67_kernel_read_readvariableop7savev2_batch_normalization_82_gamma_read_readvariableop6savev2_batch_normalization_82_beta_read_readvariableop=savev2_batch_normalization_82_moving_mean_read_readvariableopAsavev2_batch_normalization_82_moving_variance_read_readvariableop*savev2_dense_68_kernel_read_readvariableop(savev2_dense_68_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_dense_67_kernel_m_read_readvariableop>savev2_adam_batch_normalization_82_gamma_m_read_readvariableop=savev2_adam_batch_normalization_82_beta_m_read_readvariableop1savev2_adam_dense_68_kernel_m_read_readvariableop/savev2_adam_dense_68_bias_m_read_readvariableop1savev2_adam_dense_67_kernel_v_read_readvariableop>savev2_adam_batch_normalization_82_gamma_v_read_readvariableop=savev2_adam_batch_normalization_82_beta_v_read_readvariableop1savev2_adam_dense_68_kernel_v_read_readvariableop/savev2_adam_dense_68_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *'
dtypes
2	2
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
?: :	2?:?:?:?:?:	?:: : : : : : : :	2?:?:?:	?::	2?:?:?:	?:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	2?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:%!

_output_shapes
:	?: 

_output_shapes
::

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	2?:!

_output_shapes	
:?:!

_output_shapes	
:?:%!

_output_shapes
:	?: 

_output_shapes
::%!

_output_shapes
:	2?:!

_output_shapes	
:?:!

_output_shapes	
:?:%!

_output_shapes
:	?: 

_output_shapes
::

_output_shapes
: 
?	
?
/__inference_Discriminator_layer_call_fn_8525468
input_45
unknown:	2?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
	unknown_3:	?
	unknown_4:	?
	unknown_5:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_45unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*)
_read_only_resource_inputs
	*0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_Discriminator_layer_call_and_return_conditional_losses_85254512
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????2: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:?????????2
"
_user_specified_name
input_45
?
?
8__inference_batch_normalization_82_layer_call_fn_8525850

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
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_82_layer_call_and_return_conditional_losses_85252532
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

*__inference_dense_67_layer_call_fn_8525783

inputs
unknown:	2?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_67_layer_call_and_return_conditional_losses_85254052
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

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
?
c
G__inference_flatten_22_layer_call_and_return_conditional_losses_8525879

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"?????   2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
g
K__inference_leaky_re_lu_82_layer_call_and_return_conditional_losses_8525423

inputs
identitye
	LeakyRelu	LeakyReluinputs*(
_output_shapes
:??????????*
alpha%???>2
	LeakyRelul
IdentityIdentityLeakyRelu:activations:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
J__inference_Discriminator_layer_call_and_return_conditional_losses_8525542

inputs#
dense_67_8525522:	2?-
batch_normalization_82_8525525:	?-
batch_normalization_82_8525527:	?-
batch_normalization_82_8525529:	?-
batch_normalization_82_8525531:	?#
dense_68_8525536:	?
dense_68_8525538:
identity??.batch_normalization_82/StatefulPartitionedCall? dense_67/StatefulPartitionedCall? dense_68/StatefulPartitionedCall?
 dense_67/StatefulPartitionedCallStatefulPartitionedCallinputsdense_67_8525522*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_67_layer_call_and_return_conditional_losses_85254052"
 dense_67/StatefulPartitionedCall?
.batch_normalization_82/StatefulPartitionedCallStatefulPartitionedCall)dense_67/StatefulPartitionedCall:output:0batch_normalization_82_8525525batch_normalization_82_8525527batch_normalization_82_8525529batch_normalization_82_8525531*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_82_layer_call_and_return_conditional_losses_852531320
.batch_normalization_82/StatefulPartitionedCall?
leaky_re_lu_82/PartitionedCallPartitionedCall7batch_normalization_82/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_leaky_re_lu_82_layer_call_and_return_conditional_losses_85254232 
leaky_re_lu_82/PartitionedCall?
flatten_22/PartitionedCallPartitionedCall'leaky_re_lu_82/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_flatten_22_layer_call_and_return_conditional_losses_85254312
flatten_22/PartitionedCall?
 dense_68/StatefulPartitionedCallStatefulPartitionedCall#flatten_22/PartitionedCall:output:0dense_68_8525536dense_68_8525538*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_68_layer_call_and_return_conditional_losses_85254442"
 dense_68/StatefulPartitionedCall?
IdentityIdentity)dense_68/StatefulPartitionedCall:output:0/^batch_normalization_82/StatefulPartitionedCall!^dense_67/StatefulPartitionedCall!^dense_68/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????2: : : : : : : 2`
.batch_normalization_82/StatefulPartitionedCall.batch_normalization_82/StatefulPartitionedCall2D
 dense_67/StatefulPartitionedCall dense_67/StatefulPartitionedCall2D
 dense_68/StatefulPartitionedCall dense_68/StatefulPartitionedCall:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?1
?
J__inference_Discriminator_layer_call_and_return_conditional_losses_8525684

inputs:
'dense_67_matmul_readvariableop_resource:	2?G
8batch_normalization_82_batchnorm_readvariableop_resource:	?K
<batch_normalization_82_batchnorm_mul_readvariableop_resource:	?I
:batch_normalization_82_batchnorm_readvariableop_1_resource:	?I
:batch_normalization_82_batchnorm_readvariableop_2_resource:	?:
'dense_68_matmul_readvariableop_resource:	?6
(dense_68_biasadd_readvariableop_resource:
identity??/batch_normalization_82/batchnorm/ReadVariableOp?1batch_normalization_82/batchnorm/ReadVariableOp_1?1batch_normalization_82/batchnorm/ReadVariableOp_2?3batch_normalization_82/batchnorm/mul/ReadVariableOp?dense_67/MatMul/ReadVariableOp?dense_68/BiasAdd/ReadVariableOp?dense_68/MatMul/ReadVariableOp?
dense_67/MatMul/ReadVariableOpReadVariableOp'dense_67_matmul_readvariableop_resource*
_output_shapes
:	2?*
dtype02 
dense_67/MatMul/ReadVariableOp?
dense_67/MatMulMatMulinputs&dense_67/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_67/MatMul?
/batch_normalization_82/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_82_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype021
/batch_normalization_82/batchnorm/ReadVariableOp?
&batch_normalization_82/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2(
&batch_normalization_82/batchnorm/add/y?
$batch_normalization_82/batchnorm/addAddV27batch_normalization_82/batchnorm/ReadVariableOp:value:0/batch_normalization_82/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2&
$batch_normalization_82/batchnorm/add?
&batch_normalization_82/batchnorm/RsqrtRsqrt(batch_normalization_82/batchnorm/add:z:0*
T0*
_output_shapes	
:?2(
&batch_normalization_82/batchnorm/Rsqrt?
3batch_normalization_82/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_82_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype025
3batch_normalization_82/batchnorm/mul/ReadVariableOp?
$batch_normalization_82/batchnorm/mulMul*batch_normalization_82/batchnorm/Rsqrt:y:0;batch_normalization_82/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2&
$batch_normalization_82/batchnorm/mul?
&batch_normalization_82/batchnorm/mul_1Muldense_67/MatMul:product:0(batch_normalization_82/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2(
&batch_normalization_82/batchnorm/mul_1?
1batch_normalization_82/batchnorm/ReadVariableOp_1ReadVariableOp:batch_normalization_82_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype023
1batch_normalization_82/batchnorm/ReadVariableOp_1?
&batch_normalization_82/batchnorm/mul_2Mul9batch_normalization_82/batchnorm/ReadVariableOp_1:value:0(batch_normalization_82/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2(
&batch_normalization_82/batchnorm/mul_2?
1batch_normalization_82/batchnorm/ReadVariableOp_2ReadVariableOp:batch_normalization_82_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype023
1batch_normalization_82/batchnorm/ReadVariableOp_2?
$batch_normalization_82/batchnorm/subSub9batch_normalization_82/batchnorm/ReadVariableOp_2:value:0*batch_normalization_82/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2&
$batch_normalization_82/batchnorm/sub?
&batch_normalization_82/batchnorm/add_1AddV2*batch_normalization_82/batchnorm/mul_1:z:0(batch_normalization_82/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2(
&batch_normalization_82/batchnorm/add_1?
leaky_re_lu_82/LeakyRelu	LeakyRelu*batch_normalization_82/batchnorm/add_1:z:0*(
_output_shapes
:??????????*
alpha%???>2
leaky_re_lu_82/LeakyReluu
flatten_22/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????   2
flatten_22/Const?
flatten_22/ReshapeReshape&leaky_re_lu_82/LeakyRelu:activations:0flatten_22/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten_22/Reshape?
dense_68/MatMul/ReadVariableOpReadVariableOp'dense_68_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02 
dense_68/MatMul/ReadVariableOp?
dense_68/MatMulMatMulflatten_22/Reshape:output:0&dense_68/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_68/MatMul?
dense_68/BiasAdd/ReadVariableOpReadVariableOp(dense_68_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_68/BiasAdd/ReadVariableOp?
dense_68/BiasAddBiasAdddense_68/MatMul:product:0'dense_68/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_68/BiasAdd|
dense_68/SigmoidSigmoiddense_68/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_68/Sigmoid?
IdentityIdentitydense_68/Sigmoid:y:00^batch_normalization_82/batchnorm/ReadVariableOp2^batch_normalization_82/batchnorm/ReadVariableOp_12^batch_normalization_82/batchnorm/ReadVariableOp_24^batch_normalization_82/batchnorm/mul/ReadVariableOp^dense_67/MatMul/ReadVariableOp ^dense_68/BiasAdd/ReadVariableOp^dense_68/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????2: : : : : : : 2b
/batch_normalization_82/batchnorm/ReadVariableOp/batch_normalization_82/batchnorm/ReadVariableOp2f
1batch_normalization_82/batchnorm/ReadVariableOp_11batch_normalization_82/batchnorm/ReadVariableOp_12f
1batch_normalization_82/batchnorm/ReadVariableOp_21batch_normalization_82/batchnorm/ReadVariableOp_22j
3batch_normalization_82/batchnorm/mul/ReadVariableOp3batch_normalization_82/batchnorm/mul/ReadVariableOp2@
dense_67/MatMul/ReadVariableOpdense_67/MatMul/ReadVariableOp2B
dense_68/BiasAdd/ReadVariableOpdense_68/BiasAdd/ReadVariableOp2@
dense_68/MatMul/ReadVariableOpdense_68/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
*__inference_dense_68_layer_call_fn_8525904

inputs
unknown:	?
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_68_layer_call_and_return_conditional_losses_85254442
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
L
0__inference_leaky_re_lu_82_layer_call_fn_8525873

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
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_leaky_re_lu_82_layer_call_and_return_conditional_losses_85254232
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
/__inference_Discriminator_layer_call_fn_8525750

inputs
unknown:	2?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
	unknown_3:	?
	unknown_4:	?
	unknown_5:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*)
_read_only_resource_inputs
	*0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_Discriminator_layer_call_and_return_conditional_losses_85254512
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????2: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?

?
E__inference_dense_68_layer_call_and_return_conditional_losses_8525895

inputs1
matmul_readvariableop_resource:	?-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Sigmoid?
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
E__inference_dense_67_layer_call_and_return_conditional_losses_8525776

inputs1
matmul_readvariableop_resource:	2?
identity??MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	2?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul}
IdentityIdentityMatMul:product:0^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

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
?*
?
S__inference_batch_normalization_82_layer_call_and_return_conditional_losses_8525837

inputs6
'assignmovingavg_readvariableop_resource:	?8
)assignmovingavg_1_readvariableop_resource:	?4
%batchnorm_mul_readvariableop_resource:	?0
!batchnorm_readvariableop_resource:	?
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
:	?*
	keep_dims(2
moments/mean}
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	?2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:??????????2
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
:	?*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:?*
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
:?*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:?2
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
:?*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:?2
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
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
/__inference_Discriminator_layer_call_fn_8525578
input_45
unknown:	2?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
	unknown_3:	?
	unknown_4:	?
	unknown_5:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_45unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*'
_read_only_resource_inputs	
*0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_Discriminator_layer_call_and_return_conditional_losses_85255422
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????2: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:?????????2
"
_user_specified_name
input_45
?
c
G__inference_flatten_22_layer_call_and_return_conditional_losses_8525431

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"?????   2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?*
?
S__inference_batch_normalization_82_layer_call_and_return_conditional_losses_8525313

inputs6
'assignmovingavg_readvariableop_resource:	?8
)assignmovingavg_1_readvariableop_resource:	?4
%batchnorm_mul_readvariableop_resource:	?0
!batchnorm_readvariableop_resource:	?
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
:	?*
	keep_dims(2
moments/mean}
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	?2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:??????????2
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
:	?*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:?*
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
:?*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:?2
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
:?*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:?2
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
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
=
input_451
serving_default_input_45:0?????????2<
dense_680
StatefulPartitionedCall:0?????????tensorflow/serving/predict:ֿ
?3
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer-4
layer_with_weights-2
layer-5
	optimizer
	variables
	trainable_variables

regularization_losses
	keras_api

signatures
*[&call_and_return_all_conditional_losses
\_default_save_signature
]__call__"?0
_tf_keras_network?0{"name": "Discriminator", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Functional", "config": {"name": "Discriminator", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 50]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_45"}, "name": "input_45", "inbound_nodes": []}, {"class_name": "Dense", "config": {"name": "dense_67", "trainable": true, "dtype": "float32", "units": 128, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_67", "inbound_nodes": [[["input_45", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_82", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_82", "inbound_nodes": [[["dense_67", 0, 0, {}]]]}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_82", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}, "name": "leaky_re_lu_82", "inbound_nodes": [[["batch_normalization_82", 0, 0, {}]]]}, {"class_name": "Flatten", "config": {"name": "flatten_22", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_22", "inbound_nodes": [[["leaky_re_lu_82", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_68", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_68", "inbound_nodes": [[["flatten_22", 0, 0, {}]]]}], "input_layers": [["input_45", 0, 0]], "output_layers": [["dense_68", 0, 0]]}, "shared_object_id": 14, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 50]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 50]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 50]}, "float32", "input_45"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "Discriminator", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 50]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_45"}, "name": "input_45", "inbound_nodes": [], "shared_object_id": 0}, {"class_name": "Dense", "config": {"name": "dense_67", "trainable": true, "dtype": "float32", "units": 128, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_67", "inbound_nodes": [[["input_45", 0, 0, {}]]], "shared_object_id": 3}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_82", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 4}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 5}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 6}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 7}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_82", "inbound_nodes": [[["dense_67", 0, 0, {}]]], "shared_object_id": 8}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_82", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}, "name": "leaky_re_lu_82", "inbound_nodes": [[["batch_normalization_82", 0, 0, {}]]], "shared_object_id": 9}, {"class_name": "Flatten", "config": {"name": "flatten_22", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_22", "inbound_nodes": [[["leaky_re_lu_82", 0, 0, {}]]], "shared_object_id": 10}, {"class_name": "Dense", "config": {"name": "dense_68", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 11}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 12}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_68", "inbound_nodes": [[["flatten_22", 0, 0, {}]]], "shared_object_id": 13}], "input_layers": [["input_45", 0, 0]], "output_layers": [["dense_68", 0, 0]]}}, "training_config": {"loss": "binary_crossentropy", "metrics": null, "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.00019999999494757503, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
?"?
_tf_keras_input_layer?{"class_name": "InputLayer", "name": "input_45", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 50]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 50]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_45"}}
?

kernel
	variables
trainable_variables
regularization_losses
	keras_api
*^&call_and_return_all_conditional_losses
___call__"?
_tf_keras_layer?{"name": "dense_67", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_67", "trainable": true, "dtype": "float32", "units": 128, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["input_45", 0, 0, {}]]], "shared_object_id": 3, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 50}}, "shared_object_id": 16}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 50]}}
?

axis
	gamma
beta
moving_mean
moving_variance
	variables
trainable_variables
regularization_losses
	keras_api
*`&call_and_return_all_conditional_losses
a__call__"?	
_tf_keras_layer?	{"name": "batch_normalization_82", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_82", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 4}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 5}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 6}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 7}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "inbound_nodes": [[["dense_67", 0, 0, {}]]], "shared_object_id": 8, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {"1": 128}}, "shared_object_id": 17}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128]}}
?
	variables
trainable_variables
regularization_losses
	keras_api
*b&call_and_return_all_conditional_losses
c__call__"?
_tf_keras_layer?{"name": "leaky_re_lu_82", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_82", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}, "inbound_nodes": [[["batch_normalization_82", 0, 0, {}]]], "shared_object_id": 9}
?
	variables
 trainable_variables
!regularization_losses
"	keras_api
*d&call_and_return_all_conditional_losses
e__call__"?
_tf_keras_layer?{"name": "flatten_22", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Flatten", "config": {"name": "flatten_22", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "inbound_nodes": [[["leaky_re_lu_82", 0, 0, {}]]], "shared_object_id": 10, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}, "shared_object_id": 18}}
?	

#kernel
$bias
%	variables
&trainable_variables
'regularization_losses
(	keras_api
*f&call_and_return_all_conditional_losses
g__call__"?
_tf_keras_layer?{"name": "dense_68", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_68", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 11}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 12}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["flatten_22", 0, 0, {}]]], "shared_object_id": 13, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 128}}, "shared_object_id": 19}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128]}}
?
)iter

*beta_1

+beta_2
	,decay
-learning_ratemQmRmS#mT$mUvVvWvX#vY$vZ"
	optimizer
Q
0
1
2
3
4
#5
$6"
trackable_list_wrapper
C
0
1
2
#3
$4"
trackable_list_wrapper
 "
trackable_list_wrapper
?
.layer_metrics
/layer_regularization_losses
0metrics
1non_trainable_variables
	variables

2layers
	trainable_variables

regularization_losses
]__call__
\_default_save_signature
*[&call_and_return_all_conditional_losses
&["call_and_return_conditional_losses"
_generic_user_object
,
hserving_default"
signature_map
": 	2?2dense_67/kernel
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
3layer_metrics
4layer_regularization_losses
5metrics
6non_trainable_variables
	variables

7layers
trainable_variables
regularization_losses
___call__
*^&call_and_return_all_conditional_losses
&^"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
+:)?2batch_normalization_82/gamma
*:(?2batch_normalization_82/beta
3:1? (2"batch_normalization_82/moving_mean
7:5? (2&batch_normalization_82/moving_variance
<
0
1
2
3"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
8layer_metrics
9layer_regularization_losses
:metrics
;non_trainable_variables
	variables

<layers
trainable_variables
regularization_losses
a__call__
*`&call_and_return_all_conditional_losses
&`"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
=layer_metrics
>layer_regularization_losses
?metrics
@non_trainable_variables
	variables

Alayers
trainable_variables
regularization_losses
c__call__
*b&call_and_return_all_conditional_losses
&b"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Blayer_metrics
Clayer_regularization_losses
Dmetrics
Enon_trainable_variables
	variables

Flayers
 trainable_variables
!regularization_losses
e__call__
*d&call_and_return_all_conditional_losses
&d"call_and_return_conditional_losses"
_generic_user_object
": 	?2dense_68/kernel
:2dense_68/bias
.
#0
$1"
trackable_list_wrapper
.
#0
$1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Glayer_metrics
Hlayer_regularization_losses
Imetrics
Jnon_trainable_variables
%	variables

Klayers
&trainable_variables
'regularization_losses
g__call__
*f&call_and_return_all_conditional_losses
&f"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
'
L0"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
J
0
1
2
3
4
5"
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
0
1"
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
?
	Mtotal
	Ncount
O	variables
P	keras_api"?
_tf_keras_metric?{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 20}
:  (2total
:  (2count
.
M0
N1"
trackable_list_wrapper
-
O	variables"
_generic_user_object
':%	2?2Adam/dense_67/kernel/m
0:.?2#Adam/batch_normalization_82/gamma/m
/:-?2"Adam/batch_normalization_82/beta/m
':%	?2Adam/dense_68/kernel/m
 :2Adam/dense_68/bias/m
':%	2?2Adam/dense_67/kernel/v
0:.?2#Adam/batch_normalization_82/gamma/v
/:-?2"Adam/batch_normalization_82/beta/v
':%	?2Adam/dense_68/kernel/v
 :2Adam/dense_68/bias/v
?2?
J__inference_Discriminator_layer_call_and_return_conditional_losses_8525684
J__inference_Discriminator_layer_call_and_return_conditional_losses_8525731
J__inference_Discriminator_layer_call_and_return_conditional_losses_8525601
J__inference_Discriminator_layer_call_and_return_conditional_losses_8525624?
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
"__inference__wrapped_model_8525229?
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
input_45?????????2
?2?
/__inference_Discriminator_layer_call_fn_8525468
/__inference_Discriminator_layer_call_fn_8525750
/__inference_Discriminator_layer_call_fn_8525769
/__inference_Discriminator_layer_call_fn_8525578?
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
E__inference_dense_67_layer_call_and_return_conditional_losses_8525776?
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
*__inference_dense_67_layer_call_fn_8525783?
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
S__inference_batch_normalization_82_layer_call_and_return_conditional_losses_8525803
S__inference_batch_normalization_82_layer_call_and_return_conditional_losses_8525837?
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
8__inference_batch_normalization_82_layer_call_fn_8525850
8__inference_batch_normalization_82_layer_call_fn_8525863?
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
K__inference_leaky_re_lu_82_layer_call_and_return_conditional_losses_8525868?
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
0__inference_leaky_re_lu_82_layer_call_fn_8525873?
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
G__inference_flatten_22_layer_call_and_return_conditional_losses_8525879?
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
,__inference_flatten_22_layer_call_fn_8525884?
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
E__inference_dense_68_layer_call_and_return_conditional_losses_8525895?
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
*__inference_dense_68_layer_call_fn_8525904?
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
?B?
%__inference_signature_wrapper_8525651input_45"?
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
J__inference_Discriminator_layer_call_and_return_conditional_losses_8525601k#$9?6
/?,
"?
input_45?????????2
p 

 
? "%?"
?
0?????????
? ?
J__inference_Discriminator_layer_call_and_return_conditional_losses_8525624k#$9?6
/?,
"?
input_45?????????2
p

 
? "%?"
?
0?????????
? ?
J__inference_Discriminator_layer_call_and_return_conditional_losses_8525684i#$7?4
-?*
 ?
inputs?????????2
p 

 
? "%?"
?
0?????????
? ?
J__inference_Discriminator_layer_call_and_return_conditional_losses_8525731i#$7?4
-?*
 ?
inputs?????????2
p

 
? "%?"
?
0?????????
? ?
/__inference_Discriminator_layer_call_fn_8525468^#$9?6
/?,
"?
input_45?????????2
p 

 
? "???????????
/__inference_Discriminator_layer_call_fn_8525578^#$9?6
/?,
"?
input_45?????????2
p

 
? "???????????
/__inference_Discriminator_layer_call_fn_8525750\#$7?4
-?*
 ?
inputs?????????2
p 

 
? "???????????
/__inference_Discriminator_layer_call_fn_8525769\#$7?4
-?*
 ?
inputs?????????2
p

 
? "???????????
"__inference__wrapped_model_8525229q#$1?.
'?$
"?
input_45?????????2
? "3?0
.
dense_68"?
dense_68??????????
S__inference_batch_normalization_82_layer_call_and_return_conditional_losses_8525803d4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
S__inference_batch_normalization_82_layer_call_and_return_conditional_losses_8525837d4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? ?
8__inference_batch_normalization_82_layer_call_fn_8525850W4?1
*?'
!?
inputs??????????
p 
? "????????????
8__inference_batch_normalization_82_layer_call_fn_8525863W4?1
*?'
!?
inputs??????????
p
? "????????????
E__inference_dense_67_layer_call_and_return_conditional_losses_8525776\/?,
%?"
 ?
inputs?????????2
? "&?#
?
0??????????
? }
*__inference_dense_67_layer_call_fn_8525783O/?,
%?"
 ?
inputs?????????2
? "????????????
E__inference_dense_68_layer_call_and_return_conditional_losses_8525895]#$0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????
? ~
*__inference_dense_68_layer_call_fn_8525904P#$0?-
&?#
!?
inputs??????????
? "???????????
G__inference_flatten_22_layer_call_and_return_conditional_losses_8525879Z0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? }
,__inference_flatten_22_layer_call_fn_8525884M0?-
&?#
!?
inputs??????????
? "????????????
K__inference_leaky_re_lu_82_layer_call_and_return_conditional_losses_8525868Z0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? ?
0__inference_leaky_re_lu_82_layer_call_fn_8525873M0?-
&?#
!?
inputs??????????
? "????????????
%__inference_signature_wrapper_8525651}#$=?:
? 
3?0
.
input_45"?
input_45?????????2"3?0
.
dense_68"?
dense_68?????????