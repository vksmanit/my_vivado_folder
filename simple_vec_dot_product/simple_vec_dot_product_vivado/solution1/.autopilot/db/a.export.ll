; ModuleID = '/home/vipinsoni/MTP/my_vivado_folder/simple_vec_dot_product/simple_vec_dot_product_vivado/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@simple_vec_dot_product_str = internal unnamed_addr constant [23 x i8] c"simple_vec_dot_product\00"

define void @simple_vec_dot_product([4 x i32]* %a, [4 x i32]* %b, [4 x i32]* %out) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([4 x i32]* %a) nounwind, !map !13
  call void (...)* @_ssdm_op_SpecBitsMap([4 x i32]* %b) nounwind, !map !19
  call void (...)* @_ssdm_op_SpecBitsMap([4 x i32]* %out) nounwind, !map !23
  call void (...)* @_ssdm_op_SpecTopModule([23 x i8]* @simple_vec_dot_product_str) nounwind
  br label %1

; <label>:1                                       ; preds = %_ifconv, %0
  %i0 = phi i3 [ 0, %0 ], [ %i0_1, %_ifconv ]
  %exitcond = icmp eq i3 %i0, -4
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4) nounwind
  %i0_1 = add i3 %i0, 1
  br i1 %exitcond, label %2, label %_ifconv

_ifconv:                                          ; preds = %1
  %tmp = zext i3 %i0 to i64
  %a_addr = getelementptr [4 x i32]* %a, i64 0, i64 %tmp
  %a_load = load i32* %a_addr, align 4
  %tmp_1 = sext i32 %a_load to i64
  %b_addr = getelementptr [4 x i32]* %b, i64 0, i64 %tmp
  %b_load = load i32* %b_addr, align 4
  %tmp_2 = sext i32 %b_load to i64
  %i1 = mul nsw i64 %tmp_2, %tmp_1
  %tmp_4 = call i33 @_ssdm_op_PartSelect.i33.i64.i32.i32(i64 %i1, i32 31, i32 63)
  %icmp = icmp sgt i33 %tmp_4, 0
  %tmp_5 = icmp slt i64 %i1, -2147483648
  %tmp_6 = trunc i64 %i1 to i32
  %phitmp = select i1 %icmp, i32 2147483647, i32 -2147483648
  %tmp_3 = or i1 %icmp, %tmp_5
  %i1_1 = select i1 %tmp_3, i32 %phitmp, i32 %tmp_6
  %out_addr = getelementptr [4 x i32]* %out, i64 0, i64 %tmp
  store i32 %i1_1, i32* %out_addr, align 4
  br label %1

; <label>:2                                       ; preds = %1
  ret void
}

declare i64 @llvm.part.select.i64(i64, i32, i32) nounwind readnone

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

define weak i33 @_ssdm_op_PartSelect.i33.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_4 = trunc i64 %empty to i33
  ret i33 %empty_4
}

declare i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64, i32, i32) nounwind readnone

!opencl.kernels = !{!0, !7, !7}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"int*", metadata !"int*", metadata !"int*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"a", metadata !"b", metadata !"out"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space"}
!9 = metadata !{metadata !"kernel_arg_access_qual"}
!10 = metadata !{metadata !"kernel_arg_type"}
!11 = metadata !{metadata !"kernel_arg_type_qual"}
!12 = metadata !{metadata !"kernel_arg_name"}
!13 = metadata !{metadata !14}
!14 = metadata !{i32 0, i32 31, metadata !15}
!15 = metadata !{metadata !16}
!16 = metadata !{metadata !"a", metadata !17, metadata !"int", i32 0, i32 31}
!17 = metadata !{metadata !18}
!18 = metadata !{i32 0, i32 3, i32 1}
!19 = metadata !{metadata !20}
!20 = metadata !{i32 0, i32 31, metadata !21}
!21 = metadata !{metadata !22}
!22 = metadata !{metadata !"b", metadata !17, metadata !"int", i32 0, i32 31}
!23 = metadata !{metadata !24}
!24 = metadata !{i32 0, i32 31, metadata !25}
!25 = metadata !{metadata !26}
!26 = metadata !{metadata !"out", metadata !17, metadata !"int", i32 0, i32 31}
