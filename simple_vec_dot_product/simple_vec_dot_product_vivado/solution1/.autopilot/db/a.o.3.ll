; ModuleID = '/home/vipinsoni/MTP/my_vivado_folder/simple_vec_dot_product/simple_vec_dot_product_vivado/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@simple_vec_dot_product_str = internal unnamed_addr constant [23 x i8] c"simple_vec_dot_product\00" ; [#uses=1 type=[23 x i8]*]

; [#uses=0]
define void @simple_vec_dot_product([4 x i32]* %a, [4 x i32]* %b, [4 x i32]* %out) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([4 x i32]* %a) nounwind, !map !13
  call void (...)* @_ssdm_op_SpecBitsMap([4 x i32]* %b) nounwind, !map !19
  call void (...)* @_ssdm_op_SpecBitsMap([4 x i32]* %out) nounwind, !map !23
  call void (...)* @_ssdm_op_SpecTopModule([23 x i8]* @simple_vec_dot_product_str) nounwind
  call void @llvm.dbg.value(metadata !{[4 x i32]* %a}, i64 0, metadata !27), !dbg !39 ; [debug line = 19:33] [debug variable = a]
  call void @llvm.dbg.value(metadata !{[4 x i32]* %b}, i64 0, metadata !40), !dbg !41 ; [debug line = 19:43] [debug variable = b]
  call void @llvm.dbg.value(metadata !{[4 x i32]* %out}, i64 0, metadata !42), !dbg !43 ; [debug line = 19:53] [debug variable = out]
  br label %1, !dbg !44                           ; [debug line = 23:8]

; <label>:1                                       ; preds = %_ifconv, %0
  %i0 = phi i3 [ 0, %0 ], [ %i0_1, %_ifconv ]     ; [#uses=3 type=i3]
  %exitcond = icmp eq i3 %i0, -4, !dbg !44        ; [#uses=1 type=i1] [debug line = 23:8]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4) nounwind ; [#uses=0 type=i32]
  %i0_1 = add i3 %i0, 1, !dbg !47                 ; [#uses=1 type=i3] [debug line = 23:24]
  br i1 %exitcond, label %2, label %_ifconv, !dbg !44 ; [debug line = 23:8]

_ifconv:                                          ; preds = %1
  %tmp = zext i3 %i0 to i64, !dbg !48             ; [#uses=3 type=i64] [debug line = 24:5]
  %a_addr = getelementptr [4 x i32]* %a, i64 0, i64 %tmp, !dbg !48 ; [#uses=1 type=i32*] [debug line = 24:5]
  %a_load = load i32* %a_addr, align 4, !dbg !48  ; [#uses=1 type=i32] [debug line = 24:5]
  %tmp_1 = sext i32 %a_load to i64, !dbg !48      ; [#uses=1 type=i64] [debug line = 24:5]
  %b_addr = getelementptr [4 x i32]* %b, i64 0, i64 %tmp, !dbg !48 ; [#uses=1 type=i32*] [debug line = 24:5]
  %b_load = load i32* %b_addr, align 4, !dbg !48  ; [#uses=1 type=i32] [debug line = 24:5]
  %tmp_2 = sext i32 %b_load to i64, !dbg !48      ; [#uses=1 type=i64] [debug line = 24:5]
  %i1 = mul nsw i64 %tmp_2, %tmp_1, !dbg !48      ; [#uses=3 type=i64] [debug line = 24:5]
  call void @llvm.dbg.value(metadata !{i64 %i1}, i64 0, metadata !50), !dbg !48 ; [debug line = 24:5] [debug variable = i1]
  %tmp_4 = call i33 @_ssdm_op_PartSelect.i33.i64.i32.i32(i64 %i1, i32 31, i32 63), !dbg !52 ; [#uses=1 type=i33] [debug line = 25:5]
  %icmp = icmp sgt i33 %tmp_4, 0, !dbg !52        ; [#uses=2 type=i1] [debug line = 25:5]
  %tmp_5 = icmp slt i64 %i1, -2147483648, !dbg !53 ; [#uses=1 type=i1] [debug line = 28:7]
  %tmp_6 = trunc i64 %i1 to i32                   ; [#uses=1 type=i32]
  %phitmp = select i1 %icmp, i32 2147483647, i32 -2147483648, !dbg !55 ; [#uses=1 type=i32] [debug line = 33:5]
  %tmp_3 = or i1 %icmp, %tmp_5, !dbg !55          ; [#uses=1 type=i1] [debug line = 33:5]
  %i1_1 = select i1 %tmp_3, i32 %phitmp, i32 %tmp_6, !dbg !55 ; [#uses=1 type=i32] [debug line = 33:5]
  %out_addr = getelementptr [4 x i32]* %out, i64 0, i64 %tmp, !dbg !55 ; [#uses=1 type=i32*] [debug line = 33:5]
  store i32 %i1_1, i32* %out_addr, align 4, !dbg !55 ; [debug line = 33:5]
  call void @llvm.dbg.value(metadata !{i3 %i0_1}, i64 0, metadata !56), !dbg !47 ; [debug line = 23:24] [debug variable = i0]
  br label %1, !dbg !47                           ; [debug line = 23:24]

; <label>:2                                       ; preds = %1
  ret void, !dbg !57                              ; [debug line = 35:1]
}

; [#uses=1]
declare i64 @llvm.part.select.i64(i64, i32, i32) nounwind readnone

; [#uses=5]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=1]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=3]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=1]
define weak i33 @_ssdm_op_PartSelect.i33.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2) ; [#uses=1 type=i64]
  %empty_4 = trunc i64 %empty to i33              ; [#uses=1 type=i33]
  ret i33 %empty_4
}

; [#uses=0]
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
!27 = metadata !{i32 786689, metadata !28, metadata !"a", null, i32 19, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!28 = metadata !{i32 786478, i32 0, metadata !29, metadata !"simple_vec_dot_product", metadata !"simple_vec_dot_product", metadata !"", metadata !29, i32 19, metadata !30, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !34, i32 20} ; [ DW_TAG_subprogram ]
!29 = metadata !{i32 786473, metadata !"simple_vec_dot_product.c", metadata !"/home/vipinsoni/MTP/my_vivado_folder/simple_vec_dot_product", null} ; [ DW_TAG_file_type ]
!30 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !31, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!31 = metadata !{null, metadata !32, metadata !32, metadata !32}
!32 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !33} ; [ DW_TAG_pointer_type ]
!33 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!34 = metadata !{metadata !35}
!35 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!36 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 32, i32 0, i32 0, metadata !33, metadata !37, i32 0, i32 0} ; [ DW_TAG_array_type ]
!37 = metadata !{metadata !38}
!38 = metadata !{i32 786465, i64 0, i64 3}        ; [ DW_TAG_subrange_type ]
!39 = metadata !{i32 19, i32 33, metadata !28, null}
!40 = metadata !{i32 786689, metadata !28, metadata !"b", null, i32 19, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!41 = metadata !{i32 19, i32 43, metadata !28, null}
!42 = metadata !{i32 786689, metadata !28, metadata !"out", null, i32 19, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!43 = metadata !{i32 19, i32 53, metadata !28, null}
!44 = metadata !{i32 23, i32 8, metadata !45, null}
!45 = metadata !{i32 786443, metadata !46, i32 23, i32 3, metadata !29, i32 1} ; [ DW_TAG_lexical_block ]
!46 = metadata !{i32 786443, metadata !28, i32 20, i32 1, metadata !29, i32 0} ; [ DW_TAG_lexical_block ]
!47 = metadata !{i32 23, i32 24, metadata !45, null}
!48 = metadata !{i32 24, i32 5, metadata !49, null}
!49 = metadata !{i32 786443, metadata !45, i32 23, i32 30, metadata !29, i32 2} ; [ DW_TAG_lexical_block ]
!50 = metadata !{i32 786688, metadata !46, metadata !"i1", metadata !29, i32 22, metadata !51, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!51 = metadata !{i32 786468, null, metadata !"long int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!52 = metadata !{i32 25, i32 5, metadata !49, null}
!53 = metadata !{i32 28, i32 7, metadata !54, null}
!54 = metadata !{i32 786443, metadata !49, i32 27, i32 12, metadata !29, i32 4} ; [ DW_TAG_lexical_block ]
!55 = metadata !{i32 33, i32 5, metadata !49, null}
!56 = metadata !{i32 786688, metadata !46, metadata !"i0", metadata !29, i32 21, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!57 = metadata !{i32 35, i32 1, metadata !46, null}
