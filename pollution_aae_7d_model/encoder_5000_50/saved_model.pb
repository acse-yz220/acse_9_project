??	
??
:
Add
x"T
y"T
z"T"
Ttype:
2	
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
Conv2D

input"T
filter"T
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
,
Exp
x"T
y"T"
Ttype:

2
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
?
RandomStandardNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	?
@
ReadVariableOp
resource
value"dtype"
dtypetype?
@
RealDiv
x"T
y"T
z"T"
Ttype:
2	
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
 ?"serve*2.5.02v2.5.0-0-ga4dfb8d1a718??
?
conv2d_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:?* 
shared_nameconv2d_5/kernel
|
#conv2d_5/kernel/Read/ReadVariableOpReadVariableOpconv2d_5/kernel*'
_output_shapes
:?*
dtype0
?
batch_normalization_15/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*-
shared_namebatch_normalization_15/gamma
?
0batch_normalization_15/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_15/gamma*
_output_shapes	
:?*
dtype0
?
batch_normalization_15/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namebatch_normalization_15/beta
?
/batch_normalization_15/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_15/beta*
_output_shapes	
:?*
dtype0
?
"batch_normalization_15/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"batch_normalization_15/moving_mean
?
6batch_normalization_15/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_15/moving_mean*
_output_shapes	
:?*
dtype0
?
&batch_normalization_15/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*7
shared_name(&batch_normalization_15/moving_variance
?
:batch_normalization_15/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_15/moving_variance*
_output_shapes	
:?*
dtype0
{
dense_12/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?(2* 
shared_namedense_12/kernel
t
#dense_12/kernel/Read/ReadVariableOpReadVariableOpdense_12/kernel*
_output_shapes
:	?(2*
dtype0
{
dense_13/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?(2* 
shared_namedense_13/kernel
t
#dense_13/kernel/Read/ReadVariableOpReadVariableOpdense_13/kernel*
_output_shapes
:	?(2*
dtype0

NoOpNoOp
?
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?
value?B? B?
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
layer_with_weights-3
layer-6
layer-7
	trainable_variables

	variables
regularization_losses
	keras_api

signatures
 
^

kernel
trainable_variables
	variables
regularization_losses
	keras_api
?
axis
	gamma
beta
moving_mean
moving_variance
trainable_variables
	variables
regularization_losses
	keras_api
R
trainable_variables
	variables
regularization_losses
	keras_api
R
 trainable_variables
!	variables
"regularization_losses
#	keras_api
^

$kernel
%trainable_variables
&	variables
'regularization_losses
(	keras_api
^

)kernel
*trainable_variables
+	variables
,regularization_losses
-	keras_api
R
.trainable_variables
/	variables
0regularization_losses
1	keras_api
#
0
1
2
$3
)4
1
0
1
2
3
4
$5
)6
 
?
2layer_regularization_losses
3metrics
	trainable_variables

4layers

	variables
5layer_metrics
6non_trainable_variables
regularization_losses
 
[Y
VARIABLE_VALUEconv2d_5/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE

0

0
 
?
7layer_regularization_losses
8metrics
trainable_variables

9layers
	variables
:layer_metrics
regularization_losses
;non_trainable_variables
 
ge
VARIABLE_VALUEbatch_normalization_15/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_15/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_15/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_15/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
2
3
 
?
<layer_regularization_losses
=metrics
trainable_variables

>layers
	variables
?layer_metrics
regularization_losses
@non_trainable_variables
 
 
 
?
Alayer_regularization_losses
Bmetrics
trainable_variables

Clayers
	variables
Dlayer_metrics
regularization_losses
Enon_trainable_variables
 
 
 
?
Flayer_regularization_losses
Gmetrics
 trainable_variables

Hlayers
!	variables
Ilayer_metrics
"regularization_losses
Jnon_trainable_variables
[Y
VARIABLE_VALUEdense_12/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE

$0

$0
 
?
Klayer_regularization_losses
Lmetrics
%trainable_variables

Mlayers
&	variables
Nlayer_metrics
'regularization_losses
Onon_trainable_variables
[Y
VARIABLE_VALUEdense_13/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE

)0

)0
 
?
Player_regularization_losses
Qmetrics
*trainable_variables

Rlayers
+	variables
Slayer_metrics
,regularization_losses
Tnon_trainable_variables
 
 
 
?
Ulayer_regularization_losses
Vmetrics
.trainable_variables

Wlayers
/	variables
Xlayer_metrics
0regularization_losses
Ynon_trainable_variables
 
 
8
0
1
2
3
4
5
6
7
 

0
1
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
0
1
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
 
 
 
 
 
 
?
serving_default_input_9Placeholder*/
_output_shapes
:?????????
*
dtype0*$
shape:?????????

?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_9conv2d_5/kernelbatch_normalization_15/gammabatch_normalization_15/beta"batch_normalization_15/moving_mean&batch_normalization_15/moving_variancedense_12/kerneldense_13/kernel*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*)
_read_only_resource_inputs
	*0
config_proto 

CPU

GPU2*0J 8? *.
f)R'
%__inference_signature_wrapper_9483370
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#conv2d_5/kernel/Read/ReadVariableOp0batch_normalization_15/gamma/Read/ReadVariableOp/batch_normalization_15/beta/Read/ReadVariableOp6batch_normalization_15/moving_mean/Read/ReadVariableOp:batch_normalization_15/moving_variance/Read/ReadVariableOp#dense_12/kernel/Read/ReadVariableOp#dense_13/kernel/Read/ReadVariableOpConst*
Tin
2	*
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
 __inference__traced_save_9483795
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_5/kernelbatch_normalization_15/gammabatch_normalization_15/beta"batch_normalization_15/moving_mean&batch_normalization_15/moving_variancedense_12/kerneldense_13/kernel*
Tin

2*
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
#__inference__traced_restore_9483826??
?
?
8__inference_batch_normalization_15_layer_call_fn_9483605

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
S__inference_batch_normalization_15_layer_call_and_return_conditional_losses_94828722
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
?
?
S__inference_batch_normalization_15_layer_call_and_return_conditional_losses_9483574

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
U0*P
_output_shapes>
<:?????????
?:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:?????????
?2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:?????????
?: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:?????????
?
 
_user_specified_nameinputs
?
r
E__inference_lambda_2_layer_call_and_return_conditional_losses_9483082

inputs
inputs_1
identity?D
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
strided_slicep
random_normal/shape/1Const*
_output_shapes
: *
dtype0*
value	B :22
random_normal/shape/1?
random_normal/shapePackstrided_slice:output:0random_normal/shape/1:output:0*
N*
T0*
_output_shapes
:2
random_normal/shapem
random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    2
random_normal/meanq
random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
random_normal/stddev?
"random_normal/RandomStandardNormalRandomStandardNormalrandom_normal/shape:output:0*
T0*'
_output_shapes
:?????????2*
dtype0*

seed *
seed2???2$
"random_normal/RandomStandardNormal?
random_normal/mulMul+random_normal/RandomStandardNormal:output:0random_normal/stddev:output:0*
T0*'
_output_shapes
:?????????22
random_normal/mul?
random_normalAddrandom_normal/mul:z:0random_normal/mean:output:0*
T0*'
_output_shapes
:?????????22
random_normal[
	truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
	truediv/ym
truedivRealDivinputs_1truediv/y:output:0*
T0*'
_output_shapes
:?????????22	
truedivP
ExpExptruediv:z:0*
T0*'
_output_shapes
:?????????22
Exp_
mulMulExp:y:0random_normal:z:0*
T0*'
_output_shapes
:?????????22
mulV
addAddV2inputsmul:z:0*
T0*'
_output_shapes
:?????????22
add[
IdentityIdentityadd:z:0*
T0*'
_output_shapes
:?????????22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:?????????2:?????????2:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?	
?
)__inference_Encoder_layer_call_fn_9483408

inputs"
unknown:?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
	unknown_3:	?
	unknown_4:	?(2
	unknown_5:	?(2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*'
_read_only_resource_inputs	
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_Encoder_layer_call_and_return_conditional_losses_94832632
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):?????????
: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????

 
_user_specified_nameinputs
?$
?
D__inference_Encoder_layer_call_and_return_conditional_losses_9483324
input_9+
conv2d_5_9483302:?-
batch_normalization_15_9483305:	?-
batch_normalization_15_9483307:	?-
batch_normalization_15_9483309:	?-
batch_normalization_15_9483311:	?#
dense_12_9483316:	?(2#
dense_13_9483319:	?(2
identity??.batch_normalization_15/StatefulPartitionedCall? conv2d_5/StatefulPartitionedCall? dense_12/StatefulPartitionedCall? dense_13/StatefulPartitionedCall? lambda_2/StatefulPartitionedCall?
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCallinput_9conv2d_5_9483302*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????
?*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_5_layer_call_and_return_conditional_losses_94829902"
 conv2d_5/StatefulPartitionedCall?
.batch_normalization_15/StatefulPartitionedCallStatefulPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0batch_normalization_15_9483305batch_normalization_15_9483307batch_normalization_15_9483309batch_normalization_15_9483311*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????
?*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_15_layer_call_and_return_conditional_losses_948301120
.batch_normalization_15/StatefulPartitionedCall?
leaky_re_lu_15/PartitionedCallPartitionedCall7batch_normalization_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????
?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_leaky_re_lu_15_layer_call_and_return_conditional_losses_94830262 
leaky_re_lu_15/PartitionedCall?
flatten_4/PartitionedCallPartitionedCall'leaky_re_lu_15/PartitionedCall:output:0*
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
GPU2*0J 8? *O
fJRH
F__inference_flatten_4_layer_call_and_return_conditional_losses_94830342
flatten_4/PartitionedCall?
 dense_12/StatefulPartitionedCallStatefulPartitionedCall"flatten_4/PartitionedCall:output:0dense_12_9483316*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_12_layer_call_and_return_conditional_losses_94830442"
 dense_12/StatefulPartitionedCall?
 dense_13/StatefulPartitionedCallStatefulPartitionedCall"flatten_4/PartitionedCall:output:0dense_13_9483319*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_13_layer_call_and_return_conditional_losses_94830562"
 dense_13/StatefulPartitionedCall?
 lambda_2/StatefulPartitionedCallStatefulPartitionedCall)dense_12/StatefulPartitionedCall:output:0)dense_13/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_lambda_2_layer_call_and_return_conditional_losses_94830822"
 lambda_2/StatefulPartitionedCall?
IdentityIdentity)lambda_2/StatefulPartitionedCall:output:0/^batch_normalization_15/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall!^dense_12/StatefulPartitionedCall!^dense_13/StatefulPartitionedCall!^lambda_2/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):?????????
: : : : : : : 2`
.batch_normalization_15/StatefulPartitionedCall.batch_normalization_15/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2D
 dense_13/StatefulPartitionedCall dense_13/StatefulPartitionedCall2D
 lambda_2/StatefulPartitionedCall lambda_2/StatefulPartitionedCall:X T
/
_output_shapes
:?????????

!
_user_specified_name	input_9
?

*__inference_dense_12_layer_call_fn_9483680

inputs
unknown:	?(2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_12_layer_call_and_return_conditional_losses_94830442
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
:??????????(: 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????(
 
_user_specified_nameinputs
?
t
E__inference_lambda_2_layer_call_and_return_conditional_losses_9483739
inputs_0
inputs_1
identity?F
ShapeShapeinputs_0*
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
strided_slicep
random_normal/shape/1Const*
_output_shapes
: *
dtype0*
value	B :22
random_normal/shape/1?
random_normal/shapePackstrided_slice:output:0random_normal/shape/1:output:0*
N*
T0*
_output_shapes
:2
random_normal/shapem
random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    2
random_normal/meanq
random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
random_normal/stddev?
"random_normal/RandomStandardNormalRandomStandardNormalrandom_normal/shape:output:0*
T0*'
_output_shapes
:?????????2*
dtype0*

seed *
seed2???2$
"random_normal/RandomStandardNormal?
random_normal/mulMul+random_normal/RandomStandardNormal:output:0random_normal/stddev:output:0*
T0*'
_output_shapes
:?????????22
random_normal/mul?
random_normalAddrandom_normal/mul:z:0random_normal/mean:output:0*
T0*'
_output_shapes
:?????????22
random_normal[
	truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
	truediv/ym
truedivRealDivinputs_1truediv/y:output:0*
T0*'
_output_shapes
:?????????22	
truedivP
ExpExptruediv:z:0*
T0*'
_output_shapes
:?????????22
Exp_
mulMulExp:y:0random_normal:z:0*
T0*'
_output_shapes
:?????????22
mulX
addAddV2inputs_0mul:z:0*
T0*'
_output_shapes
:?????????22
add[
IdentityIdentityadd:z:0*
T0*'
_output_shapes
:?????????22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:?????????2:?????????2:Q M
'
_output_shapes
:?????????2
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????2
"
_user_specified_name
inputs/1
?
g
K__inference_leaky_re_lu_15_layer_call_and_return_conditional_losses_9483026

inputs
identitym
	LeakyRelu	LeakyReluinputs*0
_output_shapes
:?????????
?*
alpha%???>2
	LeakyRelut
IdentityIdentityLeakyRelu:activations:0*
T0*0
_output_shapes
:?????????
?2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????
?:X T
0
_output_shapes
:?????????
?
 
_user_specified_nameinputs
?=
?
D__inference_Encoder_layer_call_and_return_conditional_losses_9483457

inputsB
'conv2d_5_conv2d_readvariableop_resource:?=
.batch_normalization_15_readvariableop_resource:	??
0batch_normalization_15_readvariableop_1_resource:	?N
?batch_normalization_15_fusedbatchnormv3_readvariableop_resource:	?P
Abatch_normalization_15_fusedbatchnormv3_readvariableop_1_resource:	?:
'dense_12_matmul_readvariableop_resource:	?(2:
'dense_13_matmul_readvariableop_resource:	?(2
identity??6batch_normalization_15/FusedBatchNormV3/ReadVariableOp?8batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_15/ReadVariableOp?'batch_normalization_15/ReadVariableOp_1?conv2d_5/Conv2D/ReadVariableOp?dense_12/MatMul/ReadVariableOp?dense_13/MatMul/ReadVariableOp?
conv2d_5/Conv2D/ReadVariableOpReadVariableOp'conv2d_5_conv2d_readvariableop_resource*'
_output_shapes
:?*
dtype02 
conv2d_5/Conv2D/ReadVariableOp?
conv2d_5/Conv2DConv2Dinputs&conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????
?*
paddingSAME*
strides
2
conv2d_5/Conv2D?
%batch_normalization_15/ReadVariableOpReadVariableOp.batch_normalization_15_readvariableop_resource*
_output_shapes	
:?*
dtype02'
%batch_normalization_15/ReadVariableOp?
'batch_normalization_15/ReadVariableOp_1ReadVariableOp0batch_normalization_15_readvariableop_1_resource*
_output_shapes	
:?*
dtype02)
'batch_normalization_15/ReadVariableOp_1?
6batch_normalization_15/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_15_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype028
6batch_normalization_15/FusedBatchNormV3/ReadVariableOp?
8batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_15_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02:
8batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1?
'batch_normalization_15/FusedBatchNormV3FusedBatchNormV3conv2d_5/Conv2D:output:0-batch_normalization_15/ReadVariableOp:value:0/batch_normalization_15/ReadVariableOp_1:value:0>batch_normalization_15/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????
?:?:?:?:?:*
epsilon%o?:*
is_training( 2)
'batch_normalization_15/FusedBatchNormV3?
leaky_re_lu_15/LeakyRelu	LeakyRelu+batch_normalization_15/FusedBatchNormV3:y:0*0
_output_shapes
:?????????
?*
alpha%???>2
leaky_re_lu_15/LeakyRelus
flatten_4/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
flatten_4/Const?
flatten_4/ReshapeReshape&leaky_re_lu_15/LeakyRelu:activations:0flatten_4/Const:output:0*
T0*(
_output_shapes
:??????????(2
flatten_4/Reshape?
dense_12/MatMul/ReadVariableOpReadVariableOp'dense_12_matmul_readvariableop_resource*
_output_shapes
:	?(2*
dtype02 
dense_12/MatMul/ReadVariableOp?
dense_12/MatMulMatMulflatten_4/Reshape:output:0&dense_12/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
dense_12/MatMuls
dense_12/TanhTanhdense_12/MatMul:product:0*
T0*'
_output_shapes
:?????????22
dense_12/Tanh?
dense_13/MatMul/ReadVariableOpReadVariableOp'dense_13_matmul_readvariableop_resource*
_output_shapes
:	?(2*
dtype02 
dense_13/MatMul/ReadVariableOp?
dense_13/MatMulMatMulflatten_4/Reshape:output:0&dense_13/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
dense_13/MatMuls
dense_13/TanhTanhdense_13/MatMul:product:0*
T0*'
_output_shapes
:?????????22
dense_13/Tanha
lambda_2/ShapeShapedense_12/Tanh:y:0*
T0*
_output_shapes
:2
lambda_2/Shape?
lambda_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lambda_2/strided_slice/stack?
lambda_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lambda_2/strided_slice/stack_1?
lambda_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lambda_2/strided_slice/stack_2?
lambda_2/strided_sliceStridedSlicelambda_2/Shape:output:0%lambda_2/strided_slice/stack:output:0'lambda_2/strided_slice/stack_1:output:0'lambda_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lambda_2/strided_slice?
lambda_2/random_normal/shape/1Const*
_output_shapes
: *
dtype0*
value	B :22 
lambda_2/random_normal/shape/1?
lambda_2/random_normal/shapePacklambda_2/strided_slice:output:0'lambda_2/random_normal/shape/1:output:0*
N*
T0*
_output_shapes
:2
lambda_2/random_normal/shape
lambda_2/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lambda_2/random_normal/mean?
lambda_2/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lambda_2/random_normal/stddev?
+lambda_2/random_normal/RandomStandardNormalRandomStandardNormal%lambda_2/random_normal/shape:output:0*
T0*'
_output_shapes
:?????????2*
dtype0*

seed *
seed2ٴ?2-
+lambda_2/random_normal/RandomStandardNormal?
lambda_2/random_normal/mulMul4lambda_2/random_normal/RandomStandardNormal:output:0&lambda_2/random_normal/stddev:output:0*
T0*'
_output_shapes
:?????????22
lambda_2/random_normal/mul?
lambda_2/random_normalAddlambda_2/random_normal/mul:z:0$lambda_2/random_normal/mean:output:0*
T0*'
_output_shapes
:?????????22
lambda_2/random_normalm
lambda_2/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
lambda_2/truediv/y?
lambda_2/truedivRealDivdense_13/Tanh:y:0lambda_2/truediv/y:output:0*
T0*'
_output_shapes
:?????????22
lambda_2/truedivk
lambda_2/ExpExplambda_2/truediv:z:0*
T0*'
_output_shapes
:?????????22
lambda_2/Exp?
lambda_2/mulMullambda_2/Exp:y:0lambda_2/random_normal:z:0*
T0*'
_output_shapes
:?????????22
lambda_2/mul|
lambda_2/addAddV2dense_12/Tanh:y:0lambda_2/mul:z:0*
T0*'
_output_shapes
:?????????22
lambda_2/add?
IdentityIdentitylambda_2/add:z:07^batch_normalization_15/FusedBatchNormV3/ReadVariableOp9^batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_15/ReadVariableOp(^batch_normalization_15/ReadVariableOp_1^conv2d_5/Conv2D/ReadVariableOp^dense_12/MatMul/ReadVariableOp^dense_13/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):?????????
: : : : : : : 2p
6batch_normalization_15/FusedBatchNormV3/ReadVariableOp6batch_normalization_15/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_15/FusedBatchNormV3/ReadVariableOp_18batch_normalization_15/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_15/ReadVariableOp%batch_normalization_15/ReadVariableOp2R
'batch_normalization_15/ReadVariableOp_1'batch_normalization_15/ReadVariableOp_12@
conv2d_5/Conv2D/ReadVariableOpconv2d_5/Conv2D/ReadVariableOp2@
dense_12/MatMul/ReadVariableOpdense_12/MatMul/ReadVariableOp2@
dense_13/MatMul/ReadVariableOpdense_13/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????

 
_user_specified_nameinputs
?F
?
"__inference__wrapped_model_9482850
input_9J
/encoder_conv2d_5_conv2d_readvariableop_resource:?E
6encoder_batch_normalization_15_readvariableop_resource:	?G
8encoder_batch_normalization_15_readvariableop_1_resource:	?V
Gencoder_batch_normalization_15_fusedbatchnormv3_readvariableop_resource:	?X
Iencoder_batch_normalization_15_fusedbatchnormv3_readvariableop_1_resource:	?B
/encoder_dense_12_matmul_readvariableop_resource:	?(2B
/encoder_dense_13_matmul_readvariableop_resource:	?(2
identity??>Encoder/batch_normalization_15/FusedBatchNormV3/ReadVariableOp?@Encoder/batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1?-Encoder/batch_normalization_15/ReadVariableOp?/Encoder/batch_normalization_15/ReadVariableOp_1?&Encoder/conv2d_5/Conv2D/ReadVariableOp?&Encoder/dense_12/MatMul/ReadVariableOp?&Encoder/dense_13/MatMul/ReadVariableOp?
&Encoder/conv2d_5/Conv2D/ReadVariableOpReadVariableOp/encoder_conv2d_5_conv2d_readvariableop_resource*'
_output_shapes
:?*
dtype02(
&Encoder/conv2d_5/Conv2D/ReadVariableOp?
Encoder/conv2d_5/Conv2DConv2Dinput_9.Encoder/conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????
?*
paddingSAME*
strides
2
Encoder/conv2d_5/Conv2D?
-Encoder/batch_normalization_15/ReadVariableOpReadVariableOp6encoder_batch_normalization_15_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-Encoder/batch_normalization_15/ReadVariableOp?
/Encoder/batch_normalization_15/ReadVariableOp_1ReadVariableOp8encoder_batch_normalization_15_readvariableop_1_resource*
_output_shapes	
:?*
dtype021
/Encoder/batch_normalization_15/ReadVariableOp_1?
>Encoder/batch_normalization_15/FusedBatchNormV3/ReadVariableOpReadVariableOpGencoder_batch_normalization_15_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02@
>Encoder/batch_normalization_15/FusedBatchNormV3/ReadVariableOp?
@Encoder/batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpIencoder_batch_normalization_15_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02B
@Encoder/batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1?
/Encoder/batch_normalization_15/FusedBatchNormV3FusedBatchNormV3 Encoder/conv2d_5/Conv2D:output:05Encoder/batch_normalization_15/ReadVariableOp:value:07Encoder/batch_normalization_15/ReadVariableOp_1:value:0FEncoder/batch_normalization_15/FusedBatchNormV3/ReadVariableOp:value:0HEncoder/batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????
?:?:?:?:?:*
epsilon%o?:*
is_training( 21
/Encoder/batch_normalization_15/FusedBatchNormV3?
 Encoder/leaky_re_lu_15/LeakyRelu	LeakyRelu3Encoder/batch_normalization_15/FusedBatchNormV3:y:0*0
_output_shapes
:?????????
?*
alpha%???>2"
 Encoder/leaky_re_lu_15/LeakyRelu?
Encoder/flatten_4/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
Encoder/flatten_4/Const?
Encoder/flatten_4/ReshapeReshape.Encoder/leaky_re_lu_15/LeakyRelu:activations:0 Encoder/flatten_4/Const:output:0*
T0*(
_output_shapes
:??????????(2
Encoder/flatten_4/Reshape?
&Encoder/dense_12/MatMul/ReadVariableOpReadVariableOp/encoder_dense_12_matmul_readvariableop_resource*
_output_shapes
:	?(2*
dtype02(
&Encoder/dense_12/MatMul/ReadVariableOp?
Encoder/dense_12/MatMulMatMul"Encoder/flatten_4/Reshape:output:0.Encoder/dense_12/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
Encoder/dense_12/MatMul?
Encoder/dense_12/TanhTanh!Encoder/dense_12/MatMul:product:0*
T0*'
_output_shapes
:?????????22
Encoder/dense_12/Tanh?
&Encoder/dense_13/MatMul/ReadVariableOpReadVariableOp/encoder_dense_13_matmul_readvariableop_resource*
_output_shapes
:	?(2*
dtype02(
&Encoder/dense_13/MatMul/ReadVariableOp?
Encoder/dense_13/MatMulMatMul"Encoder/flatten_4/Reshape:output:0.Encoder/dense_13/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
Encoder/dense_13/MatMul?
Encoder/dense_13/TanhTanh!Encoder/dense_13/MatMul:product:0*
T0*'
_output_shapes
:?????????22
Encoder/dense_13/Tanhy
Encoder/lambda_2/ShapeShapeEncoder/dense_12/Tanh:y:0*
T0*
_output_shapes
:2
Encoder/lambda_2/Shape?
$Encoder/lambda_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2&
$Encoder/lambda_2/strided_slice/stack?
&Encoder/lambda_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2(
&Encoder/lambda_2/strided_slice/stack_1?
&Encoder/lambda_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&Encoder/lambda_2/strided_slice/stack_2?
Encoder/lambda_2/strided_sliceStridedSliceEncoder/lambda_2/Shape:output:0-Encoder/lambda_2/strided_slice/stack:output:0/Encoder/lambda_2/strided_slice/stack_1:output:0/Encoder/lambda_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2 
Encoder/lambda_2/strided_slice?
&Encoder/lambda_2/random_normal/shape/1Const*
_output_shapes
: *
dtype0*
value	B :22(
&Encoder/lambda_2/random_normal/shape/1?
$Encoder/lambda_2/random_normal/shapePack'Encoder/lambda_2/strided_slice:output:0/Encoder/lambda_2/random_normal/shape/1:output:0*
N*
T0*
_output_shapes
:2&
$Encoder/lambda_2/random_normal/shape?
#Encoder/lambda_2/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#Encoder/lambda_2/random_normal/mean?
%Encoder/lambda_2/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2'
%Encoder/lambda_2/random_normal/stddev?
3Encoder/lambda_2/random_normal/RandomStandardNormalRandomStandardNormal-Encoder/lambda_2/random_normal/shape:output:0*
T0*'
_output_shapes
:?????????2*
dtype0*

seed *
seed2??25
3Encoder/lambda_2/random_normal/RandomStandardNormal?
"Encoder/lambda_2/random_normal/mulMul<Encoder/lambda_2/random_normal/RandomStandardNormal:output:0.Encoder/lambda_2/random_normal/stddev:output:0*
T0*'
_output_shapes
:?????????22$
"Encoder/lambda_2/random_normal/mul?
Encoder/lambda_2/random_normalAdd&Encoder/lambda_2/random_normal/mul:z:0,Encoder/lambda_2/random_normal/mean:output:0*
T0*'
_output_shapes
:?????????22 
Encoder/lambda_2/random_normal}
Encoder/lambda_2/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
Encoder/lambda_2/truediv/y?
Encoder/lambda_2/truedivRealDivEncoder/dense_13/Tanh:y:0#Encoder/lambda_2/truediv/y:output:0*
T0*'
_output_shapes
:?????????22
Encoder/lambda_2/truediv?
Encoder/lambda_2/ExpExpEncoder/lambda_2/truediv:z:0*
T0*'
_output_shapes
:?????????22
Encoder/lambda_2/Exp?
Encoder/lambda_2/mulMulEncoder/lambda_2/Exp:y:0"Encoder/lambda_2/random_normal:z:0*
T0*'
_output_shapes
:?????????22
Encoder/lambda_2/mul?
Encoder/lambda_2/addAddV2Encoder/dense_12/Tanh:y:0Encoder/lambda_2/mul:z:0*
T0*'
_output_shapes
:?????????22
Encoder/lambda_2/add?
IdentityIdentityEncoder/lambda_2/add:z:0?^Encoder/batch_normalization_15/FusedBatchNormV3/ReadVariableOpA^Encoder/batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1.^Encoder/batch_normalization_15/ReadVariableOp0^Encoder/batch_normalization_15/ReadVariableOp_1'^Encoder/conv2d_5/Conv2D/ReadVariableOp'^Encoder/dense_12/MatMul/ReadVariableOp'^Encoder/dense_13/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):?????????
: : : : : : : 2?
>Encoder/batch_normalization_15/FusedBatchNormV3/ReadVariableOp>Encoder/batch_normalization_15/FusedBatchNormV3/ReadVariableOp2?
@Encoder/batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1@Encoder/batch_normalization_15/FusedBatchNormV3/ReadVariableOp_12^
-Encoder/batch_normalization_15/ReadVariableOp-Encoder/batch_normalization_15/ReadVariableOp2b
/Encoder/batch_normalization_15/ReadVariableOp_1/Encoder/batch_normalization_15/ReadVariableOp_12P
&Encoder/conv2d_5/Conv2D/ReadVariableOp&Encoder/conv2d_5/Conv2D/ReadVariableOp2P
&Encoder/dense_12/MatMul/ReadVariableOp&Encoder/dense_12/MatMul/ReadVariableOp2P
&Encoder/dense_13/MatMul/ReadVariableOp&Encoder/dense_13/MatMul/ReadVariableOp:X T
/
_output_shapes
:?????????

!
_user_specified_name	input_9
?$
?
D__inference_Encoder_layer_call_and_return_conditional_losses_9483263

inputs+
conv2d_5_9483241:?-
batch_normalization_15_9483244:	?-
batch_normalization_15_9483246:	?-
batch_normalization_15_9483248:	?-
batch_normalization_15_9483250:	?#
dense_12_9483255:	?(2#
dense_13_9483258:	?(2
identity??.batch_normalization_15/StatefulPartitionedCall? conv2d_5/StatefulPartitionedCall? dense_12/StatefulPartitionedCall? dense_13/StatefulPartitionedCall? lambda_2/StatefulPartitionedCall?
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_5_9483241*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????
?*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_5_layer_call_and_return_conditional_losses_94829902"
 conv2d_5/StatefulPartitionedCall?
.batch_normalization_15/StatefulPartitionedCallStatefulPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0batch_normalization_15_9483244batch_normalization_15_9483246batch_normalization_15_9483248batch_normalization_15_9483250*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????
?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_15_layer_call_and_return_conditional_losses_948319820
.batch_normalization_15/StatefulPartitionedCall?
leaky_re_lu_15/PartitionedCallPartitionedCall7batch_normalization_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????
?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_leaky_re_lu_15_layer_call_and_return_conditional_losses_94830262 
leaky_re_lu_15/PartitionedCall?
flatten_4/PartitionedCallPartitionedCall'leaky_re_lu_15/PartitionedCall:output:0*
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
GPU2*0J 8? *O
fJRH
F__inference_flatten_4_layer_call_and_return_conditional_losses_94830342
flatten_4/PartitionedCall?
 dense_12/StatefulPartitionedCallStatefulPartitionedCall"flatten_4/PartitionedCall:output:0dense_12_9483255*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_12_layer_call_and_return_conditional_losses_94830442"
 dense_12/StatefulPartitionedCall?
 dense_13/StatefulPartitionedCallStatefulPartitionedCall"flatten_4/PartitionedCall:output:0dense_13_9483258*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_13_layer_call_and_return_conditional_losses_94830562"
 dense_13/StatefulPartitionedCall?
 lambda_2/StatefulPartitionedCallStatefulPartitionedCall)dense_12/StatefulPartitionedCall:output:0)dense_13/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_lambda_2_layer_call_and_return_conditional_losses_94831342"
 lambda_2/StatefulPartitionedCall?
IdentityIdentity)lambda_2/StatefulPartitionedCall:output:0/^batch_normalization_15/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall!^dense_12/StatefulPartitionedCall!^dense_13/StatefulPartitionedCall!^lambda_2/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):?????????
: : : : : : : 2`
.batch_normalization_15/StatefulPartitionedCall.batch_normalization_15/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2D
 dense_13/StatefulPartitionedCall dense_13/StatefulPartitionedCall2D
 lambda_2/StatefulPartitionedCall lambda_2/StatefulPartitionedCall:W S
/
_output_shapes
:?????????

 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_15_layer_call_and_return_conditional_losses_9483011

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
U0*P
_output_shapes>
<:?????????
?:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:?????????
?2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:?????????
?: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:?????????
?
 
_user_specified_nameinputs
?
L
0__inference_leaky_re_lu_15_layer_call_fn_9483654

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
:?????????
?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_leaky_re_lu_15_layer_call_and_return_conditional_losses_94830262
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:?????????
?2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????
?:X T
0
_output_shapes
:?????????
?
 
_user_specified_nameinputs
?
?
E__inference_dense_12_layer_call_and_return_conditional_losses_9483044

inputs1
matmul_readvariableop_resource:	?(2
identity??MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?(2*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
MatMulX
TanhTanhMatMul:product:0*
T0*'
_output_shapes
:?????????22
Tanht
IdentityIdentityTanh:y:0^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
:??????????(: 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????(
 
_user_specified_nameinputs
?
s
*__inference_lambda_2_layer_call_fn_9483745
inputs_0
inputs_1
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_lambda_2_layer_call_and_return_conditional_losses_94830822
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:?????????2:?????????222
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:?????????2
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????2
"
_user_specified_name
inputs/1
?$
?
D__inference_Encoder_layer_call_and_return_conditional_losses_9483085

inputs+
conv2d_5_9482991:?-
batch_normalization_15_9483012:	?-
batch_normalization_15_9483014:	?-
batch_normalization_15_9483016:	?-
batch_normalization_15_9483018:	?#
dense_12_9483045:	?(2#
dense_13_9483057:	?(2
identity??.batch_normalization_15/StatefulPartitionedCall? conv2d_5/StatefulPartitionedCall? dense_12/StatefulPartitionedCall? dense_13/StatefulPartitionedCall? lambda_2/StatefulPartitionedCall?
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_5_9482991*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????
?*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_5_layer_call_and_return_conditional_losses_94829902"
 conv2d_5/StatefulPartitionedCall?
.batch_normalization_15/StatefulPartitionedCallStatefulPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0batch_normalization_15_9483012batch_normalization_15_9483014batch_normalization_15_9483016batch_normalization_15_9483018*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????
?*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_15_layer_call_and_return_conditional_losses_948301120
.batch_normalization_15/StatefulPartitionedCall?
leaky_re_lu_15/PartitionedCallPartitionedCall7batch_normalization_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????
?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_leaky_re_lu_15_layer_call_and_return_conditional_losses_94830262 
leaky_re_lu_15/PartitionedCall?
flatten_4/PartitionedCallPartitionedCall'leaky_re_lu_15/PartitionedCall:output:0*
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
GPU2*0J 8? *O
fJRH
F__inference_flatten_4_layer_call_and_return_conditional_losses_94830342
flatten_4/PartitionedCall?
 dense_12/StatefulPartitionedCallStatefulPartitionedCall"flatten_4/PartitionedCall:output:0dense_12_9483045*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_12_layer_call_and_return_conditional_losses_94830442"
 dense_12/StatefulPartitionedCall?
 dense_13/StatefulPartitionedCallStatefulPartitionedCall"flatten_4/PartitionedCall:output:0dense_13_9483057*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_13_layer_call_and_return_conditional_losses_94830562"
 dense_13/StatefulPartitionedCall?
 lambda_2/StatefulPartitionedCallStatefulPartitionedCall)dense_12/StatefulPartitionedCall:output:0)dense_13/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_lambda_2_layer_call_and_return_conditional_losses_94830822"
 lambda_2/StatefulPartitionedCall?
IdentityIdentity)lambda_2/StatefulPartitionedCall:output:0/^batch_normalization_15/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall!^dense_12/StatefulPartitionedCall!^dense_13/StatefulPartitionedCall!^lambda_2/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):?????????
: : : : : : : 2`
.batch_normalization_15/StatefulPartitionedCall.batch_normalization_15/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2D
 dense_13/StatefulPartitionedCall dense_13/StatefulPartitionedCall2D
 lambda_2/StatefulPartitionedCall lambda_2/StatefulPartitionedCall:W S
/
_output_shapes
:?????????

 
_user_specified_nameinputs
?
?
8__inference_batch_normalization_15_layer_call_fn_9483618

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
S__inference_batch_normalization_15_layer_call_and_return_conditional_losses_94829162
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
?
r
E__inference_lambda_2_layer_call_and_return_conditional_losses_9483134

inputs
inputs_1
identity?D
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
strided_slicep
random_normal/shape/1Const*
_output_shapes
: *
dtype0*
value	B :22
random_normal/shape/1?
random_normal/shapePackstrided_slice:output:0random_normal/shape/1:output:0*
N*
T0*
_output_shapes
:2
random_normal/shapem
random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    2
random_normal/meanq
random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
random_normal/stddev?
"random_normal/RandomStandardNormalRandomStandardNormalrandom_normal/shape:output:0*
T0*'
_output_shapes
:?????????2*
dtype0*

seed *
seed2ǘ?2$
"random_normal/RandomStandardNormal?
random_normal/mulMul+random_normal/RandomStandardNormal:output:0random_normal/stddev:output:0*
T0*'
_output_shapes
:?????????22
random_normal/mul?
random_normalAddrandom_normal/mul:z:0random_normal/mean:output:0*
T0*'
_output_shapes
:?????????22
random_normal[
	truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
	truediv/ym
truedivRealDivinputs_1truediv/y:output:0*
T0*'
_output_shapes
:?????????22	
truedivP
ExpExptruediv:z:0*
T0*'
_output_shapes
:?????????22
Exp_
mulMulExp:y:0random_normal:z:0*
T0*'
_output_shapes
:?????????22
mulV
addAddV2inputsmul:z:0*
T0*'
_output_shapes
:?????????22
add[
IdentityIdentityadd:z:0*
T0*'
_output_shapes
:?????????22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:?????????2:?????????2:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
t
E__inference_lambda_2_layer_call_and_return_conditional_losses_9483717
inputs_0
inputs_1
identity?F
ShapeShapeinputs_0*
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
strided_slicep
random_normal/shape/1Const*
_output_shapes
: *
dtype0*
value	B :22
random_normal/shape/1?
random_normal/shapePackstrided_slice:output:0random_normal/shape/1:output:0*
N*
T0*
_output_shapes
:2
random_normal/shapem
random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    2
random_normal/meanq
random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
random_normal/stddev?
"random_normal/RandomStandardNormalRandomStandardNormalrandom_normal/shape:output:0*
T0*'
_output_shapes
:?????????2*
dtype0*

seed *
seed2??]2$
"random_normal/RandomStandardNormal?
random_normal/mulMul+random_normal/RandomStandardNormal:output:0random_normal/stddev:output:0*
T0*'
_output_shapes
:?????????22
random_normal/mul?
random_normalAddrandom_normal/mul:z:0random_normal/mean:output:0*
T0*'
_output_shapes
:?????????22
random_normal[
	truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
	truediv/ym
truedivRealDivinputs_1truediv/y:output:0*
T0*'
_output_shapes
:?????????22	
truedivP
ExpExptruediv:z:0*
T0*'
_output_shapes
:?????????22
Exp_
mulMulExp:y:0random_normal:z:0*
T0*'
_output_shapes
:?????????22
mulX
addAddV2inputs_0mul:z:0*
T0*'
_output_shapes
:?????????22
add[
IdentityIdentityadd:z:0*
T0*'
_output_shapes
:?????????22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:?????????2:?????????2:Q M
'
_output_shapes
:?????????2
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????2
"
_user_specified_name
inputs/1
?
?
 __inference__traced_save_9483795
file_prefix.
*savev2_conv2d_5_kernel_read_readvariableop;
7savev2_batch_normalization_15_gamma_read_readvariableop:
6savev2_batch_normalization_15_beta_read_readvariableopA
=savev2_batch_normalization_15_moving_mean_read_readvariableopE
Asavev2_batch_normalization_15_moving_variance_read_readvariableop.
*savev2_dense_12_kernel_read_readvariableop.
*savev2_dense_13_kernel_read_readvariableop
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
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*#
valueBB B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_conv2d_5_kernel_read_readvariableop7savev2_batch_normalization_15_gamma_read_readvariableop6savev2_batch_normalization_15_beta_read_readvariableop=savev2_batch_normalization_15_moving_mean_read_readvariableopAsavev2_batch_normalization_15_moving_variance_read_readvariableop*savev2_dense_12_kernel_read_readvariableop*savev2_dense_13_kernel_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes

22
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

identity_1Identity_1:output:0*\
_input_shapesK
I: :?:?:?:?:?:	?(2:	?(2: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:-)
'
_output_shapes
:?:!
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
:	?(2:%!

_output_shapes
:	?(2:

_output_shapes
: 
?
?
E__inference_conv2d_5_layer_call_and_return_conditional_losses_9482990

inputs9
conv2d_readvariableop_resource:?
identity??Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:?*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????
?*
paddingSAME*
strides
2
Conv2D?
IdentityIdentityConv2D:output:0^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:?????????
?2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????
: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????

 
_user_specified_nameinputs
?
?
E__inference_conv2d_5_layer_call_and_return_conditional_losses_9483513

inputs9
conv2d_readvariableop_resource:?
identity??Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:?*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????
?*
paddingSAME*
strides
2
Conv2D?
IdentityIdentityConv2D:output:0^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:?????????
?2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????
: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????

 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_15_layer_call_and_return_conditional_losses_9483198

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
U0*P
_output_shapes>
<:?????????
?:?:?:?:?:*
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
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:?????????
?2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:?????????
?: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:?????????
?
 
_user_specified_nameinputs
?
?
8__inference_batch_normalization_15_layer_call_fn_9483644

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
 *0
_output_shapes
:?????????
?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_15_layer_call_and_return_conditional_losses_94831982
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:?????????
?2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:?????????
?: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????
?
 
_user_specified_nameinputs
?	
?
)__inference_Encoder_layer_call_fn_9483102
input_9"
unknown:?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
	unknown_3:	?
	unknown_4:	?(2
	unknown_5:	?(2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_9unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*)
_read_only_resource_inputs
	*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_Encoder_layer_call_and_return_conditional_losses_94830852
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):?????????
: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:?????????

!
_user_specified_name	input_9
?
s
*__inference_lambda_2_layer_call_fn_9483751
inputs_0
inputs_1
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_lambda_2_layer_call_and_return_conditional_losses_94831342
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:?????????2:?????????222
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:?????????2
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????2
"
_user_specified_name
inputs/1
?#
?
#__inference__traced_restore_9483826
file_prefix;
 assignvariableop_conv2d_5_kernel:?>
/assignvariableop_1_batch_normalization_15_gamma:	?=
.assignvariableop_2_batch_normalization_15_beta:	?D
5assignvariableop_3_batch_normalization_15_moving_mean:	?H
9assignvariableop_4_batch_normalization_15_moving_variance:	?5
"assignvariableop_5_dense_12_kernel:	?(25
"assignvariableop_6_dense_13_kernel:	?(2

identity_8??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_2?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*#
valueBB B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*4
_output_shapes"
 ::::::::*
dtypes

22
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp assignvariableop_conv2d_5_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp/assignvariableop_1_batch_normalization_15_gammaIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp.assignvariableop_2_batch_normalization_15_betaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp5assignvariableop_3_batch_normalization_15_moving_meanIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp9assignvariableop_4_batch_normalization_15_moving_varianceIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp"assignvariableop_5_dense_12_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp"assignvariableop_6_dense_13_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_69
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?

Identity_7Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_7?

Identity_8IdentityIdentity_7:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6*
T0*
_output_shapes
: 2

Identity_8"!

identity_8Identity_8:output:0*#
_input_shapes
: : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_6:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
?
8__inference_batch_normalization_15_layer_call_fn_9483631

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
 *0
_output_shapes
:?????????
?*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_15_layer_call_and_return_conditional_losses_94830112
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:?????????
?2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:?????????
?: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????
?
 
_user_specified_nameinputs
?

*__inference_dense_13_layer_call_fn_9483695

inputs
unknown:	?(2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_13_layer_call_and_return_conditional_losses_94830562
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
:??????????(: 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????(
 
_user_specified_nameinputs
?	
?
)__inference_Encoder_layer_call_fn_9483299
input_9"
unknown:?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
	unknown_3:	?
	unknown_4:	?(2
	unknown_5:	?(2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_9unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*'
_read_only_resource_inputs	
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_Encoder_layer_call_and_return_conditional_losses_94832632
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):?????????
: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:?????????

!
_user_specified_name	input_9
?$
?
D__inference_Encoder_layer_call_and_return_conditional_losses_9483349
input_9+
conv2d_5_9483327:?-
batch_normalization_15_9483330:	?-
batch_normalization_15_9483332:	?-
batch_normalization_15_9483334:	?-
batch_normalization_15_9483336:	?#
dense_12_9483341:	?(2#
dense_13_9483344:	?(2
identity??.batch_normalization_15/StatefulPartitionedCall? conv2d_5/StatefulPartitionedCall? dense_12/StatefulPartitionedCall? dense_13/StatefulPartitionedCall? lambda_2/StatefulPartitionedCall?
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCallinput_9conv2d_5_9483327*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????
?*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_5_layer_call_and_return_conditional_losses_94829902"
 conv2d_5/StatefulPartitionedCall?
.batch_normalization_15/StatefulPartitionedCallStatefulPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0batch_normalization_15_9483330batch_normalization_15_9483332batch_normalization_15_9483334batch_normalization_15_9483336*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????
?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_15_layer_call_and_return_conditional_losses_948319820
.batch_normalization_15/StatefulPartitionedCall?
leaky_re_lu_15/PartitionedCallPartitionedCall7batch_normalization_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????
?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_leaky_re_lu_15_layer_call_and_return_conditional_losses_94830262 
leaky_re_lu_15/PartitionedCall?
flatten_4/PartitionedCallPartitionedCall'leaky_re_lu_15/PartitionedCall:output:0*
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
GPU2*0J 8? *O
fJRH
F__inference_flatten_4_layer_call_and_return_conditional_losses_94830342
flatten_4/PartitionedCall?
 dense_12/StatefulPartitionedCallStatefulPartitionedCall"flatten_4/PartitionedCall:output:0dense_12_9483341*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_12_layer_call_and_return_conditional_losses_94830442"
 dense_12/StatefulPartitionedCall?
 dense_13/StatefulPartitionedCallStatefulPartitionedCall"flatten_4/PartitionedCall:output:0dense_13_9483344*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_13_layer_call_and_return_conditional_losses_94830562"
 dense_13/StatefulPartitionedCall?
 lambda_2/StatefulPartitionedCallStatefulPartitionedCall)dense_12/StatefulPartitionedCall:output:0)dense_13/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_lambda_2_layer_call_and_return_conditional_losses_94831342"
 lambda_2/StatefulPartitionedCall?
IdentityIdentity)lambda_2/StatefulPartitionedCall:output:0/^batch_normalization_15/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall!^dense_12/StatefulPartitionedCall!^dense_13/StatefulPartitionedCall!^lambda_2/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):?????????
: : : : : : : 2`
.batch_normalization_15/StatefulPartitionedCall.batch_normalization_15/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2D
 dense_13/StatefulPartitionedCall dense_13/StatefulPartitionedCall2D
 lambda_2/StatefulPartitionedCall lambda_2/StatefulPartitionedCall:X T
/
_output_shapes
:?????????

!
_user_specified_name	input_9
?
b
F__inference_flatten_4_layer_call_and_return_conditional_losses_9483660

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????(2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????(2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????
?:X T
0
_output_shapes
:?????????
?
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_15_layer_call_and_return_conditional_losses_9482872

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
?
?
S__inference_batch_normalization_15_layer_call_and_return_conditional_losses_9483538

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
S__inference_batch_normalization_15_layer_call_and_return_conditional_losses_9483592

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
U0*P
_output_shapes>
<:?????????
?:?:?:?:?:*
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
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:?????????
?2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:?????????
?: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:?????????
?
 
_user_specified_nameinputs
?
G
+__inference_flatten_4_layer_call_fn_9483665

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
GPU2*0J 8? *O
fJRH
F__inference_flatten_4_layer_call_and_return_conditional_losses_94830342
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????(2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????
?:X T
0
_output_shapes
:?????????
?
 
_user_specified_nameinputs
?	
?
)__inference_Encoder_layer_call_fn_9483389

inputs"
unknown:?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
	unknown_3:	?
	unknown_4:	?(2
	unknown_5:	?(2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*)
_read_only_resource_inputs
	*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_Encoder_layer_call_and_return_conditional_losses_94830852
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):?????????
: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????

 
_user_specified_nameinputs
?
?
%__inference_signature_wrapper_9483370
input_9"
unknown:?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
	unknown_3:	?
	unknown_4:	?(2
	unknown_5:	?(2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_9unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*)
_read_only_resource_inputs
	*0
config_proto 

CPU

GPU2*0J 8? *+
f&R$
"__inference__wrapped_model_94828502
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):?????????
: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:?????????

!
_user_specified_name	input_9
?
?
S__inference_batch_normalization_15_layer_call_and_return_conditional_losses_9483556

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
?E
?
D__inference_Encoder_layer_call_and_return_conditional_losses_9483506

inputsB
'conv2d_5_conv2d_readvariableop_resource:?=
.batch_normalization_15_readvariableop_resource:	??
0batch_normalization_15_readvariableop_1_resource:	?N
?batch_normalization_15_fusedbatchnormv3_readvariableop_resource:	?P
Abatch_normalization_15_fusedbatchnormv3_readvariableop_1_resource:	?:
'dense_12_matmul_readvariableop_resource:	?(2:
'dense_13_matmul_readvariableop_resource:	?(2
identity??%batch_normalization_15/AssignNewValue?'batch_normalization_15/AssignNewValue_1?6batch_normalization_15/FusedBatchNormV3/ReadVariableOp?8batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_15/ReadVariableOp?'batch_normalization_15/ReadVariableOp_1?conv2d_5/Conv2D/ReadVariableOp?dense_12/MatMul/ReadVariableOp?dense_13/MatMul/ReadVariableOp?
conv2d_5/Conv2D/ReadVariableOpReadVariableOp'conv2d_5_conv2d_readvariableop_resource*'
_output_shapes
:?*
dtype02 
conv2d_5/Conv2D/ReadVariableOp?
conv2d_5/Conv2DConv2Dinputs&conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????
?*
paddingSAME*
strides
2
conv2d_5/Conv2D?
%batch_normalization_15/ReadVariableOpReadVariableOp.batch_normalization_15_readvariableop_resource*
_output_shapes	
:?*
dtype02'
%batch_normalization_15/ReadVariableOp?
'batch_normalization_15/ReadVariableOp_1ReadVariableOp0batch_normalization_15_readvariableop_1_resource*
_output_shapes	
:?*
dtype02)
'batch_normalization_15/ReadVariableOp_1?
6batch_normalization_15/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_15_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype028
6batch_normalization_15/FusedBatchNormV3/ReadVariableOp?
8batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_15_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02:
8batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1?
'batch_normalization_15/FusedBatchNormV3FusedBatchNormV3conv2d_5/Conv2D:output:0-batch_normalization_15/ReadVariableOp:value:0/batch_normalization_15/ReadVariableOp_1:value:0>batch_normalization_15/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????
?:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2)
'batch_normalization_15/FusedBatchNormV3?
%batch_normalization_15/AssignNewValueAssignVariableOp?batch_normalization_15_fusedbatchnormv3_readvariableop_resource4batch_normalization_15/FusedBatchNormV3:batch_mean:07^batch_normalization_15/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02'
%batch_normalization_15/AssignNewValue?
'batch_normalization_15/AssignNewValue_1AssignVariableOpAbatch_normalization_15_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_15/FusedBatchNormV3:batch_variance:09^batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02)
'batch_normalization_15/AssignNewValue_1?
leaky_re_lu_15/LeakyRelu	LeakyRelu+batch_normalization_15/FusedBatchNormV3:y:0*0
_output_shapes
:?????????
?*
alpha%???>2
leaky_re_lu_15/LeakyRelus
flatten_4/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
flatten_4/Const?
flatten_4/ReshapeReshape&leaky_re_lu_15/LeakyRelu:activations:0flatten_4/Const:output:0*
T0*(
_output_shapes
:??????????(2
flatten_4/Reshape?
dense_12/MatMul/ReadVariableOpReadVariableOp'dense_12_matmul_readvariableop_resource*
_output_shapes
:	?(2*
dtype02 
dense_12/MatMul/ReadVariableOp?
dense_12/MatMulMatMulflatten_4/Reshape:output:0&dense_12/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
dense_12/MatMuls
dense_12/TanhTanhdense_12/MatMul:product:0*
T0*'
_output_shapes
:?????????22
dense_12/Tanh?
dense_13/MatMul/ReadVariableOpReadVariableOp'dense_13_matmul_readvariableop_resource*
_output_shapes
:	?(2*
dtype02 
dense_13/MatMul/ReadVariableOp?
dense_13/MatMulMatMulflatten_4/Reshape:output:0&dense_13/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
dense_13/MatMuls
dense_13/TanhTanhdense_13/MatMul:product:0*
T0*'
_output_shapes
:?????????22
dense_13/Tanha
lambda_2/ShapeShapedense_12/Tanh:y:0*
T0*
_output_shapes
:2
lambda_2/Shape?
lambda_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lambda_2/strided_slice/stack?
lambda_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lambda_2/strided_slice/stack_1?
lambda_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lambda_2/strided_slice/stack_2?
lambda_2/strided_sliceStridedSlicelambda_2/Shape:output:0%lambda_2/strided_slice/stack:output:0'lambda_2/strided_slice/stack_1:output:0'lambda_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lambda_2/strided_slice?
lambda_2/random_normal/shape/1Const*
_output_shapes
: *
dtype0*
value	B :22 
lambda_2/random_normal/shape/1?
lambda_2/random_normal/shapePacklambda_2/strided_slice:output:0'lambda_2/random_normal/shape/1:output:0*
N*
T0*
_output_shapes
:2
lambda_2/random_normal/shape
lambda_2/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lambda_2/random_normal/mean?
lambda_2/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lambda_2/random_normal/stddev?
+lambda_2/random_normal/RandomStandardNormalRandomStandardNormal%lambda_2/random_normal/shape:output:0*
T0*'
_output_shapes
:?????????2*
dtype0*

seed *
seed2??2-
+lambda_2/random_normal/RandomStandardNormal?
lambda_2/random_normal/mulMul4lambda_2/random_normal/RandomStandardNormal:output:0&lambda_2/random_normal/stddev:output:0*
T0*'
_output_shapes
:?????????22
lambda_2/random_normal/mul?
lambda_2/random_normalAddlambda_2/random_normal/mul:z:0$lambda_2/random_normal/mean:output:0*
T0*'
_output_shapes
:?????????22
lambda_2/random_normalm
lambda_2/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
lambda_2/truediv/y?
lambda_2/truedivRealDivdense_13/Tanh:y:0lambda_2/truediv/y:output:0*
T0*'
_output_shapes
:?????????22
lambda_2/truedivk
lambda_2/ExpExplambda_2/truediv:z:0*
T0*'
_output_shapes
:?????????22
lambda_2/Exp?
lambda_2/mulMullambda_2/Exp:y:0lambda_2/random_normal:z:0*
T0*'
_output_shapes
:?????????22
lambda_2/mul|
lambda_2/addAddV2dense_12/Tanh:y:0lambda_2/mul:z:0*
T0*'
_output_shapes
:?????????22
lambda_2/add?
IdentityIdentitylambda_2/add:z:0&^batch_normalization_15/AssignNewValue(^batch_normalization_15/AssignNewValue_17^batch_normalization_15/FusedBatchNormV3/ReadVariableOp9^batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_15/ReadVariableOp(^batch_normalization_15/ReadVariableOp_1^conv2d_5/Conv2D/ReadVariableOp^dense_12/MatMul/ReadVariableOp^dense_13/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):?????????
: : : : : : : 2N
%batch_normalization_15/AssignNewValue%batch_normalization_15/AssignNewValue2R
'batch_normalization_15/AssignNewValue_1'batch_normalization_15/AssignNewValue_12p
6batch_normalization_15/FusedBatchNormV3/ReadVariableOp6batch_normalization_15/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_15/FusedBatchNormV3/ReadVariableOp_18batch_normalization_15/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_15/ReadVariableOp%batch_normalization_15/ReadVariableOp2R
'batch_normalization_15/ReadVariableOp_1'batch_normalization_15/ReadVariableOp_12@
conv2d_5/Conv2D/ReadVariableOpconv2d_5/Conv2D/ReadVariableOp2@
dense_12/MatMul/ReadVariableOpdense_12/MatMul/ReadVariableOp2@
dense_13/MatMul/ReadVariableOpdense_13/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????

 
_user_specified_nameinputs
?
b
F__inference_flatten_4_layer_call_and_return_conditional_losses_9483034

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????(2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????(2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????
?:X T
0
_output_shapes
:?????????
?
 
_user_specified_nameinputs
?
?
E__inference_dense_13_layer_call_and_return_conditional_losses_9483688

inputs1
matmul_readvariableop_resource:	?(2
identity??MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?(2*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
MatMulX
TanhTanhMatMul:product:0*
T0*'
_output_shapes
:?????????22
Tanht
IdentityIdentityTanh:y:0^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
:??????????(: 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????(
 
_user_specified_nameinputs
?
?
*__inference_conv2d_5_layer_call_fn_9483520

inputs"
unknown:?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????
?*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_5_layer_call_and_return_conditional_losses_94829902
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:?????????
?2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????
: 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????

 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_15_layer_call_and_return_conditional_losses_9482916

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
?
g
K__inference_leaky_re_lu_15_layer_call_and_return_conditional_losses_9483649

inputs
identitym
	LeakyRelu	LeakyReluinputs*0
_output_shapes
:?????????
?*
alpha%???>2
	LeakyRelut
IdentityIdentityLeakyRelu:activations:0*
T0*0
_output_shapes
:?????????
?2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????
?:X T
0
_output_shapes
:?????????
?
 
_user_specified_nameinputs
?
?
E__inference_dense_12_layer_call_and_return_conditional_losses_9483673

inputs1
matmul_readvariableop_resource:	?(2
identity??MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?(2*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
MatMulX
TanhTanhMatMul:product:0*
T0*'
_output_shapes
:?????????22
Tanht
IdentityIdentityTanh:y:0^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
:??????????(: 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????(
 
_user_specified_nameinputs
?
?
E__inference_dense_13_layer_call_and_return_conditional_losses_9483056

inputs1
matmul_readvariableop_resource:	?(2
identity??MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?(2*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
MatMulX
TanhTanhMatMul:product:0*
T0*'
_output_shapes
:?????????22
Tanht
IdentityIdentityTanh:y:0^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
:??????????(: 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????(
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
C
input_98
serving_default_input_9:0?????????
<
lambda_20
StatefulPartitionedCall:0?????????2tensorflow/serving/predict:??
?J
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
	trainable_variables

	variables
regularization_losses
	keras_api

signatures
Z_default_save_signature
[__call__
*\&call_and_return_all_conditional_losses"?F
_tf_keras_network?F{"name": "Encoder", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Functional", "config": {"name": "Encoder", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 10, 7, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_9"}, "name": "input_9", "inbound_nodes": []}, {"class_name": "Conv2D", "config": {"name": "conv2d_5", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_5", "inbound_nodes": [[["input_9", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_15", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_15", "inbound_nodes": [[["conv2d_5", 0, 0, {}]]]}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_15", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}, "name": "leaky_re_lu_15", "inbound_nodes": [[["batch_normalization_15", 0, 0, {}]]]}, {"class_name": "Flatten", "config": {"name": "flatten_4", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_4", "inbound_nodes": [[["leaky_re_lu_15", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_12", "trainable": true, "dtype": "float32", "units": 50, "activation": "tanh", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_12", "inbound_nodes": [[["flatten_4", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_13", "trainable": true, "dtype": "float32", "units": 50, "activation": "tanh", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_13", "inbound_nodes": [[["flatten_4", 0, 0, {}]]]}, {"class_name": "Lambda", "config": {"name": "lambda_2", "trainable": true, "dtype": "float32", "function": {"class_name": "__tuple__", "items": ["4wEAAAAAAAAABQAAAAUAAABDAAAAc0AAAAB8AFwCfQF9AnQAoAF8AaEBZAEZAH0DdABqAnwDdANm\nAmQCZANkBI0DfQR8AXQAoAR8AmQFGwChAXwEFAAXAFMAKQZO6QAAAABnAAAAAAAAAABnAAAAAAAA\n8D8pA9oFc2hhcGXaBG1lYW7aBnN0ZGRldukCAAAAKQXaAUtyAgAAANoNcmFuZG9tX25vcm1hbNoM\nbGF0ZW50X3NwYWNl2gNleHApBdoEYXJnc9oCbXXaB2xvZ192YXLaBWJhdGNo2gNlcHOpAHIPAAAA\n+h88aXB5dGhvbi1pbnB1dC00OS1jYzg0ZjVmNzc5MTE+2ghzYW1wbGVfegEAAABzCAAAAAABCAEO\nARQB\n", null, null]}, "function_type": "lambda", "module": "__main__", "output_shape": null, "output_shape_type": "raw", "output_shape_module": null, "arguments": {}}, "name": "lambda_2", "inbound_nodes": [[["dense_12", 0, 0, {}], ["dense_13", 0, 0, {}]]]}], "input_layers": [["input_9", 0, 0]], "output_layers": [["lambda_2", 0, 0]]}, "shared_object_id": 18, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 10, 7, 1]}, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 10, 7, 1]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 10, 7, 1]}, "float32", "input_9"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "Encoder", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 10, 7, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_9"}, "name": "input_9", "inbound_nodes": [], "shared_object_id": 0}, {"class_name": "Conv2D", "config": {"name": "conv2d_5", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_5", "inbound_nodes": [[["input_9", 0, 0, {}]]], "shared_object_id": 3}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_15", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 4}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 5}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 6}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 7}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_15", "inbound_nodes": [[["conv2d_5", 0, 0, {}]]], "shared_object_id": 8}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_15", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}, "name": "leaky_re_lu_15", "inbound_nodes": [[["batch_normalization_15", 0, 0, {}]]], "shared_object_id": 9}, {"class_name": "Flatten", "config": {"name": "flatten_4", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_4", "inbound_nodes": [[["leaky_re_lu_15", 0, 0, {}]]], "shared_object_id": 10}, {"class_name": "Dense", "config": {"name": "dense_12", "trainable": true, "dtype": "float32", "units": 50, "activation": "tanh", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 11}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 12}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_12", "inbound_nodes": [[["flatten_4", 0, 0, {}]]], "shared_object_id": 13}, {"class_name": "Dense", "config": {"name": "dense_13", "trainable": true, "dtype": "float32", "units": 50, "activation": "tanh", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 14}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 15}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_13", "inbound_nodes": [[["flatten_4", 0, 0, {}]]], "shared_object_id": 16}, {"class_name": "Lambda", "config": {"name": "lambda_2", "trainable": true, "dtype": "float32", "function": {"class_name": "__tuple__", "items": ["4wEAAAAAAAAABQAAAAUAAABDAAAAc0AAAAB8AFwCfQF9AnQAoAF8AaEBZAEZAH0DdABqAnwDdANm\nAmQCZANkBI0DfQR8AXQAoAR8AmQFGwChAXwEFAAXAFMAKQZO6QAAAABnAAAAAAAAAABnAAAAAAAA\n8D8pA9oFc2hhcGXaBG1lYW7aBnN0ZGRldukCAAAAKQXaAUtyAgAAANoNcmFuZG9tX25vcm1hbNoM\nbGF0ZW50X3NwYWNl2gNleHApBdoEYXJnc9oCbXXaB2xvZ192YXLaBWJhdGNo2gNlcHOpAHIPAAAA\n+h88aXB5dGhvbi1pbnB1dC00OS1jYzg0ZjVmNzc5MTE+2ghzYW1wbGVfegEAAABzCAAAAAABCAEO\nARQB\n", null, null]}, "function_type": "lambda", "module": "__main__", "output_shape": null, "output_shape_type": "raw", "output_shape_module": null, "arguments": {}}, "name": "lambda_2", "inbound_nodes": [[["dense_12", 0, 0, {}], ["dense_13", 0, 0, {}]]], "shared_object_id": 17}], "input_layers": [["input_9", 0, 0]], "output_layers": [["lambda_2", 0, 0]]}}}
?"?
_tf_keras_input_layer?{"class_name": "InputLayer", "name": "input_9", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 10, 7, 1]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 10, 7, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_9"}}
?


kernel
trainable_variables
	variables
regularization_losses
	keras_api
*]&call_and_return_all_conditional_losses
^__call__"?	
_tf_keras_layer?	{"name": "conv2d_5", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_5", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["input_9", 0, 0, {}]]], "shared_object_id": 3, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 1}}, "shared_object_id": 20}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 10, 7, 1]}}
?

axis
	gamma
beta
moving_mean
moving_variance
trainable_variables
	variables
regularization_losses
	keras_api
*_&call_and_return_all_conditional_losses
`__call__"?	
_tf_keras_layer?	{"name": "batch_normalization_15", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_15", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 4}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 5}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 6}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 7}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "inbound_nodes": [[["conv2d_5", 0, 0, {}]]], "shared_object_id": 8, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 128}}, "shared_object_id": 21}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 10, 4, 128]}}
?
trainable_variables
	variables
regularization_losses
	keras_api
*a&call_and_return_all_conditional_losses
b__call__"?
_tf_keras_layer?{"name": "leaky_re_lu_15", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_15", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}, "inbound_nodes": [[["batch_normalization_15", 0, 0, {}]]], "shared_object_id": 9}
?
 trainable_variables
!	variables
"regularization_losses
#	keras_api
*c&call_and_return_all_conditional_losses
d__call__"?
_tf_keras_layer?{"name": "flatten_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Flatten", "config": {"name": "flatten_4", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "inbound_nodes": [[["leaky_re_lu_15", 0, 0, {}]]], "shared_object_id": 10, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}, "shared_object_id": 22}}
?

$kernel
%trainable_variables
&	variables
'regularization_losses
(	keras_api
*e&call_and_return_all_conditional_losses
f__call__"?
_tf_keras_layer?{"name": "dense_12", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_12", "trainable": true, "dtype": "float32", "units": 50, "activation": "tanh", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 11}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 12}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["flatten_4", 0, 0, {}]]], "shared_object_id": 13, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 5120}}, "shared_object_id": 23}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 5120]}}
?

)kernel
*trainable_variables
+	variables
,regularization_losses
-	keras_api
*g&call_and_return_all_conditional_losses
h__call__"?
_tf_keras_layer?{"name": "dense_13", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_13", "trainable": true, "dtype": "float32", "units": 50, "activation": "tanh", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 14}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 15}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["flatten_4", 0, 0, {}]]], "shared_object_id": 16, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 5120}}, "shared_object_id": 24}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 5120]}}
?
.trainable_variables
/	variables
0regularization_losses
1	keras_api
*i&call_and_return_all_conditional_losses
j__call__"?
_tf_keras_layer?{"name": "lambda_2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Lambda", "config": {"name": "lambda_2", "trainable": true, "dtype": "float32", "function": {"class_name": "__tuple__", "items": ["4wEAAAAAAAAABQAAAAUAAABDAAAAc0AAAAB8AFwCfQF9AnQAoAF8AaEBZAEZAH0DdABqAnwDdANm\nAmQCZANkBI0DfQR8AXQAoAR8AmQFGwChAXwEFAAXAFMAKQZO6QAAAABnAAAAAAAAAABnAAAAAAAA\n8D8pA9oFc2hhcGXaBG1lYW7aBnN0ZGRldukCAAAAKQXaAUtyAgAAANoNcmFuZG9tX25vcm1hbNoM\nbGF0ZW50X3NwYWNl2gNleHApBdoEYXJnc9oCbXXaB2xvZ192YXLaBWJhdGNo2gNlcHOpAHIPAAAA\n+h88aXB5dGhvbi1pbnB1dC00OS1jYzg0ZjVmNzc5MTE+2ghzYW1wbGVfegEAAABzCAAAAAABCAEO\nARQB\n", null, null]}, "function_type": "lambda", "module": "__main__", "output_shape": null, "output_shape_type": "raw", "output_shape_module": null, "arguments": {}}, "inbound_nodes": [[["dense_12", 0, 0, {}], ["dense_13", 0, 0, {}]]], "shared_object_id": 17}
C
0
1
2
$3
)4"
trackable_list_wrapper
Q
0
1
2
3
4
$5
)6"
trackable_list_wrapper
 "
trackable_list_wrapper
?
2layer_regularization_losses
3metrics
	trainable_variables

4layers

	variables
5layer_metrics
6non_trainable_variables
regularization_losses
[__call__
Z_default_save_signature
*\&call_and_return_all_conditional_losses
&\"call_and_return_conditional_losses"
_generic_user_object
,
kserving_default"
signature_map
*:(?2conv2d_5/kernel
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
7layer_regularization_losses
8metrics
trainable_variables

9layers
	variables
:layer_metrics
regularization_losses
;non_trainable_variables
^__call__
*]&call_and_return_all_conditional_losses
&]"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
+:)?2batch_normalization_15/gamma
*:(?2batch_normalization_15/beta
3:1? (2"batch_normalization_15/moving_mean
7:5? (2&batch_normalization_15/moving_variance
.
0
1"
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
 "
trackable_list_wrapper
?
<layer_regularization_losses
=metrics
trainable_variables

>layers
	variables
?layer_metrics
regularization_losses
@non_trainable_variables
`__call__
*_&call_and_return_all_conditional_losses
&_"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Alayer_regularization_losses
Bmetrics
trainable_variables

Clayers
	variables
Dlayer_metrics
regularization_losses
Enon_trainable_variables
b__call__
*a&call_and_return_all_conditional_losses
&a"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Flayer_regularization_losses
Gmetrics
 trainable_variables

Hlayers
!	variables
Ilayer_metrics
"regularization_losses
Jnon_trainable_variables
d__call__
*c&call_and_return_all_conditional_losses
&c"call_and_return_conditional_losses"
_generic_user_object
": 	?(22dense_12/kernel
'
$0"
trackable_list_wrapper
'
$0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Klayer_regularization_losses
Lmetrics
%trainable_variables

Mlayers
&	variables
Nlayer_metrics
'regularization_losses
Onon_trainable_variables
f__call__
*e&call_and_return_all_conditional_losses
&e"call_and_return_conditional_losses"
_generic_user_object
": 	?(22dense_13/kernel
'
)0"
trackable_list_wrapper
'
)0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Player_regularization_losses
Qmetrics
*trainable_variables

Rlayers
+	variables
Slayer_metrics
,regularization_losses
Tnon_trainable_variables
h__call__
*g&call_and_return_all_conditional_losses
&g"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Ulayer_regularization_losses
Vmetrics
.trainable_variables

Wlayers
/	variables
Xlayer_metrics
0regularization_losses
Ynon_trainable_variables
j__call__
*i&call_and_return_all_conditional_losses
&i"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
X
0
1
2
3
4
5
6
7"
trackable_list_wrapper
 "
trackable_dict_wrapper
.
0
1"
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
.
0
1"
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
?2?
"__inference__wrapped_model_9482850?
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
annotations? *.?+
)?&
input_9?????????

?2?
)__inference_Encoder_layer_call_fn_9483102
)__inference_Encoder_layer_call_fn_9483389
)__inference_Encoder_layer_call_fn_9483408
)__inference_Encoder_layer_call_fn_9483299?
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
?2?
D__inference_Encoder_layer_call_and_return_conditional_losses_9483457
D__inference_Encoder_layer_call_and_return_conditional_losses_9483506
D__inference_Encoder_layer_call_and_return_conditional_losses_9483324
D__inference_Encoder_layer_call_and_return_conditional_losses_9483349?
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
E__inference_conv2d_5_layer_call_and_return_conditional_losses_9483513?
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
*__inference_conv2d_5_layer_call_fn_9483520?
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
?2?
S__inference_batch_normalization_15_layer_call_and_return_conditional_losses_9483538
S__inference_batch_normalization_15_layer_call_and_return_conditional_losses_9483556
S__inference_batch_normalization_15_layer_call_and_return_conditional_losses_9483574
S__inference_batch_normalization_15_layer_call_and_return_conditional_losses_9483592?
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
?2?
8__inference_batch_normalization_15_layer_call_fn_9483605
8__inference_batch_normalization_15_layer_call_fn_9483618
8__inference_batch_normalization_15_layer_call_fn_9483631
8__inference_batch_normalization_15_layer_call_fn_9483644?
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
K__inference_leaky_re_lu_15_layer_call_and_return_conditional_losses_9483649?
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
0__inference_leaky_re_lu_15_layer_call_fn_9483654?
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
F__inference_flatten_4_layer_call_and_return_conditional_losses_9483660?
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
+__inference_flatten_4_layer_call_fn_9483665?
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
E__inference_dense_12_layer_call_and_return_conditional_losses_9483673?
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
*__inference_dense_12_layer_call_fn_9483680?
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
E__inference_dense_13_layer_call_and_return_conditional_losses_9483688?
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
*__inference_dense_13_layer_call_fn_9483695?
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
E__inference_lambda_2_layer_call_and_return_conditional_losses_9483717
E__inference_lambda_2_layer_call_and_return_conditional_losses_9483739?
???
FullArgSpec1
args)?&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults?

 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
*__inference_lambda_2_layer_call_fn_9483745
*__inference_lambda_2_layer_call_fn_9483751?
???
FullArgSpec1
args)?&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults?

 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
%__inference_signature_wrapper_9483370input_9"?
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
D__inference_Encoder_layer_call_and_return_conditional_losses_9483324r$)@?=
6?3
)?&
input_9?????????

p 

 
? "%?"
?
0?????????2
? ?
D__inference_Encoder_layer_call_and_return_conditional_losses_9483349r$)@?=
6?3
)?&
input_9?????????

p

 
? "%?"
?
0?????????2
? ?
D__inference_Encoder_layer_call_and_return_conditional_losses_9483457q$)??<
5?2
(?%
inputs?????????

p 

 
? "%?"
?
0?????????2
? ?
D__inference_Encoder_layer_call_and_return_conditional_losses_9483506q$)??<
5?2
(?%
inputs?????????

p

 
? "%?"
?
0?????????2
? ?
)__inference_Encoder_layer_call_fn_9483102e$)@?=
6?3
)?&
input_9?????????

p 

 
? "??????????2?
)__inference_Encoder_layer_call_fn_9483299e$)@?=
6?3
)?&
input_9?????????

p

 
? "??????????2?
)__inference_Encoder_layer_call_fn_9483389d$)??<
5?2
(?%
inputs?????????

p 

 
? "??????????2?
)__inference_Encoder_layer_call_fn_9483408d$)??<
5?2
(?%
inputs?????????

p

 
? "??????????2?
"__inference__wrapped_model_9482850x$)8?5
.?+
)?&
input_9?????????

? "3?0
.
lambda_2"?
lambda_2?????????2?
S__inference_batch_normalization_15_layer_call_and_return_conditional_losses_9483538?N?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
S__inference_batch_normalization_15_layer_call_and_return_conditional_losses_9483556?N?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
S__inference_batch_normalization_15_layer_call_and_return_conditional_losses_9483574t<?9
2?/
)?&
inputs?????????
?
p 
? ".?+
$?!
0?????????
?
? ?
S__inference_batch_normalization_15_layer_call_and_return_conditional_losses_9483592t<?9
2?/
)?&
inputs?????????
?
p
? ".?+
$?!
0?????????
?
? ?
8__inference_batch_normalization_15_layer_call_fn_9483605?N?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
8__inference_batch_normalization_15_layer_call_fn_9483618?N?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
8__inference_batch_normalization_15_layer_call_fn_9483631g<?9
2?/
)?&
inputs?????????
?
p 
? "!??????????
??
8__inference_batch_normalization_15_layer_call_fn_9483644g<?9
2?/
)?&
inputs?????????
?
p
? "!??????????
??
E__inference_conv2d_5_layer_call_and_return_conditional_losses_9483513l7?4
-?*
(?%
inputs?????????

? ".?+
$?!
0?????????
?
? ?
*__inference_conv2d_5_layer_call_fn_9483520_7?4
-?*
(?%
inputs?????????

? "!??????????
??
E__inference_dense_12_layer_call_and_return_conditional_losses_9483673\$0?-
&?#
!?
inputs??????????(
? "%?"
?
0?????????2
? }
*__inference_dense_12_layer_call_fn_9483680O$0?-
&?#
!?
inputs??????????(
? "??????????2?
E__inference_dense_13_layer_call_and_return_conditional_losses_9483688\)0?-
&?#
!?
inputs??????????(
? "%?"
?
0?????????2
? }
*__inference_dense_13_layer_call_fn_9483695O)0?-
&?#
!?
inputs??????????(
? "??????????2?
F__inference_flatten_4_layer_call_and_return_conditional_losses_9483660b8?5
.?+
)?&
inputs?????????
?
? "&?#
?
0??????????(
? ?
+__inference_flatten_4_layer_call_fn_9483665U8?5
.?+
)?&
inputs?????????
?
? "???????????(?
E__inference_lambda_2_layer_call_and_return_conditional_losses_9483717?b?_
X?U
K?H
"?
inputs/0?????????2
"?
inputs/1?????????2

 
p 
? "%?"
?
0?????????2
? ?
E__inference_lambda_2_layer_call_and_return_conditional_losses_9483739?b?_
X?U
K?H
"?
inputs/0?????????2
"?
inputs/1?????????2

 
p
? "%?"
?
0?????????2
? ?
*__inference_lambda_2_layer_call_fn_9483745~b?_
X?U
K?H
"?
inputs/0?????????2
"?
inputs/1?????????2

 
p 
? "??????????2?
*__inference_lambda_2_layer_call_fn_9483751~b?_
X?U
K?H
"?
inputs/0?????????2
"?
inputs/1?????????2

 
p
? "??????????2?
K__inference_leaky_re_lu_15_layer_call_and_return_conditional_losses_9483649j8?5
.?+
)?&
inputs?????????
?
? ".?+
$?!
0?????????
?
? ?
0__inference_leaky_re_lu_15_layer_call_fn_9483654]8?5
.?+
)?&
inputs?????????
?
? "!??????????
??
%__inference_signature_wrapper_9483370?$)C?@
? 
9?6
4
input_9)?&
input_9?????????
"3?0
.
lambda_2"?
lambda_2?????????2