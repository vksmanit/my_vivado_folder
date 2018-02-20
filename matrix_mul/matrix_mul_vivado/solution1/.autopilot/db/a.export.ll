; ModuleID = '/home/vipinsoni/MTP/my_vivado_folder/matrix_mul/matrix_mul_vivado/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@matrix_mul_str = internal unnamed_addr constant [11 x i8] c"matrix_mul\00"

define void @matrix_mul([4 x double]* %a, [4 x double]* %b, [4 x double]* %out) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([4 x double]* %a) nounwind, !map !13
  call void (...)* @_ssdm_op_SpecBitsMap([4 x double]* %b) nounwind, !map !19
  call void (...)* @_ssdm_op_SpecBitsMap([4 x double]* %out) nounwind, !map !23
  call void (...)* @_ssdm_op_SpecTopModule([11 x i8]* @matrix_mul_str) nounwind
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %0
  %i0 = phi i2 [ 0, %0 ], [ %i0_1, %.preheader ]
  %exitcond2 = icmp eq i2 %i0, -2
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2) nounwind
  %i0_1 = add i2 %i0, 1
  br i1 %exitcond2, label %4, label %.preheader

.preheader:                                       ; preds = %2, %.loopexit
  %i1 = phi i2 [ 0, %.loopexit ], [ %i1_1, %2 ]
  %exitcond1 = icmp eq i2 %i1, -2
  %empty_2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2) nounwind
  %i1_1 = add i2 %i1, 1
  br i1 %exitcond1, label %.loopexit, label %1

; <label>:1                                       ; preds = %.preheader
  %tmp = shl i2 %i1, 1
  %tmp_1 = add i2 %i0, %tmp
  %tmp_2 = zext i2 %tmp_1 to i64
  %out_addr = getelementptr [4 x double]* %out, i64 0, i64 %tmp_2
  br label %2

; <label>:2                                       ; preds = %3, %1
  %storemerge = phi double [ 0.000000e+00, %1 ], [ %tmp_4, %3 ]
  %i2 = phi i2 [ 0, %1 ], [ %i2_1, %3 ]
  store double %storemerge, double* %out_addr, align 8
  %exitcond = icmp eq i2 %i2, -2
  %empty_3 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2) nounwind
  %i2_1 = add i2 %i2, 1
  br i1 %exitcond, label %.preheader, label %3

; <label>:3                                       ; preds = %2
  %tmp_3 = shl i2 %i2, 1
  %tmp_6 = add i2 %i0, %tmp_3
  %tmp_7 = zext i2 %tmp_6 to i64
  %a_addr = getelementptr [4 x double]* %a, i64 0, i64 %tmp_7
  %a_load = load double* %a_addr, align 8
  %tmp_8 = add i2 %tmp, %i2
  %tmp_9 = zext i2 %tmp_8 to i64
  %b_addr = getelementptr [4 x double]* %b, i64 0, i64 %tmp_9
  %b_load = load double* %b_addr, align 8
  %tmp_s = fmul double %a_load, %b_load
  %tmp_4 = fadd double %storemerge, %tmp_s
  br label %2

; <label>:4                                       ; preds = %.loopexit
  ret void
}

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

declare i1 @_ssdm_op_PartSelect.i1.i2.i32.i32(i2, i32, i32) nounwind readnone

declare i2 @_ssdm_op_BitConcatenate.i2.i1.i1(i1, i1) nounwind readnone

!opencl.kernels = !{!0, !0, !7}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space"}
!2 = metadata !{metadata !"kernel_arg_access_qual"}
!3 = metadata !{metadata !"kernel_arg_type"}
!4 = metadata !{metadata !"kernel_arg_type_qual"}
!5 = metadata !{metadata !"kernel_arg_name"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"double*", metadata !"double*", metadata !"double*"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"a", metadata !"b", metadata !"out"}
!13 = metadata !{metadata !14}
!14 = metadata !{i32 0, i32 63, metadata !15}
!15 = metadata !{metadata !16}
!16 = metadata !{metadata !"a", metadata !17, metadata !"double", i32 0, i32 63}
!17 = metadata !{metadata !18}
!18 = metadata !{i32 0, i32 3, i32 1}
!19 = metadata !{metadata !20}
!20 = metadata !{i32 0, i32 63, metadata !21}
!21 = metadata !{metadata !22}
!22 = metadata !{metadata !"b", metadata !17, metadata !"double", i32 0, i32 63}
!23 = metadata !{metadata !24}
!24 = metadata !{i32 0, i32 63, metadata !25}
!25 = metadata !{metadata !26}
!26 = metadata !{metadata !"out", metadata !17, metadata !"double", i32 0, i32 63}
