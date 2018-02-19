; ModuleID = '/home/vipinsoni/MTP/my_vivado_folder/simple_vec_dot_product/simple_vec_dot_product_vivado/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@simple_vec_dot_product.str = internal unnamed_addr constant [23 x i8] c"simple_vec_dot_product\00" ; [#uses=1 type=[23 x i8]*]

; [#uses=0]
define void @simple_vec_dot_product([4 x i32]* %a, [4 x i32]* %b, [4 x i32]* %out) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([4 x i32]* %a) nounwind, !map !38
  call void (...)* @_ssdm_op_SpecBitsMap([4 x i32]* %b) nounwind, !map !44
  call void (...)* @_ssdm_op_SpecBitsMap([4 x i32]* %out) nounwind, !map !48
  call void (...)* @_ssdm_op_SpecTopModule([23 x i8]* @simple_vec_dot_product.str) nounwind
  call void @llvm.dbg.value(metadata !{[4 x i32]* %a}, i64 0, metadata !52), !dbg !56 ; [debug line = 19:33] [debug variable = a]
  call void @llvm.dbg.value(metadata !{[4 x i32]* %b}, i64 0, metadata !57), !dbg !58 ; [debug line = 19:43] [debug variable = b]
  call void @llvm.dbg.value(metadata !{[4 x i32]* %out}, i64 0, metadata !59), !dbg !60 ; [debug line = 19:53] [debug variable = out]
  br label %1, !dbg !61                           ; [debug line = 23:8]

; <label>:1                                       ; preds = %_ifconv, %0
  %i0 = phi i3 [ 0, %0 ], [ %i0.1, %_ifconv ]     ; [#uses=3 type=i3]
  %exitcond = icmp eq i3 %i0, -4, !dbg !61        ; [#uses=1 type=i1] [debug line = 23:8]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond, label %3, label %_ifconv, !dbg !61 ; [debug line = 23:8]

_ifconv:                                          ; preds = %1
  %tmp = zext i3 %i0 to i64, !dbg !64             ; [#uses=3 type=i64] [debug line = 24:5]
  %a.addr = getelementptr [4 x i32]* %a, i64 0, i64 %tmp, !dbg !64 ; [#uses=1 type=i32*] [debug line = 24:5]
  %a.load = load i32* %a.addr, align 4, !dbg !64  ; [#uses=1 type=i32] [debug line = 24:5]
  %tmp.1 = sext i32 %a.load to i64, !dbg !64      ; [#uses=1 type=i64] [debug line = 24:5]
  %b.addr = getelementptr [4 x i32]* %b, i64 0, i64 %tmp, !dbg !64 ; [#uses=1 type=i32*] [debug line = 24:5]
  %b.load = load i32* %b.addr, align 4, !dbg !64  ; [#uses=1 type=i32] [debug line = 24:5]
  %tmp.2 = sext i32 %b.load to i64, !dbg !64      ; [#uses=1 type=i64] [debug line = 24:5]
  %i1 = mul nsw i64 %tmp.1, %tmp.2, !dbg !64      ; [#uses=3 type=i64] [debug line = 24:5]
  call void @llvm.dbg.value(metadata !{i64 %i1}, i64 0, metadata !66), !dbg !64 ; [debug line = 24:5] [debug variable = i1]
  %tmp.4 = icmp sgt i64 %i1, 2147483647, !dbg !68 ; [#uses=2 type=i1] [debug line = 25:5]
  %tmp.5 = icmp slt i64 %i1, -2147483648, !dbg !69 ; [#uses=1 type=i1] [debug line = 28:7]
  %tmp.6 = trunc i64 %i1 to i32                   ; [#uses=1 type=i32]
  %phitmp = select i1 %tmp.4, i32 2147483647, i32 -2147483648, !dbg !71 ; [#uses=1 type=i32] [debug line = 33:5]
  %tmp.3 = or i1 %tmp.4, %tmp.5, !dbg !71         ; [#uses=1 type=i1] [debug line = 33:5]
  %i1.1 = select i1 %tmp.3, i32 %phitmp, i32 %tmp.6, !dbg !71 ; [#uses=1 type=i32] [debug line = 33:5]
  %out.addr = getelementptr [4 x i32]* %out, i64 0, i64 %tmp, !dbg !71 ; [#uses=1 type=i32*] [debug line = 33:5]
  store i32 %i1.1, i32* %out.addr, align 4, !dbg !71 ; [debug line = 33:5]
  %i0.1 = add i3 %i0, 1, !dbg !72                 ; [#uses=1 type=i3] [debug line = 23:24]
  call void @llvm.dbg.value(metadata !{i3 %i0.1}, i64 0, metadata !73), !dbg !72 ; [debug line = 23:24] [debug variable = i0]
  br label %1, !dbg !72                           ; [debug line = 23:24]

; <label>:3                                       ; preds = %1
  ret void, !dbg !74                              ; [debug line = 35:1]
}

; [#uses=5]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=1]
declare i32 @_ssdm_op_SpecLoopTripCount(...)

; [#uses=3]
declare void @_ssdm_op_SpecBitsMap(...)

!llvm.dbg.cu = !{!0, !13, !20}
!opencl.kernels = !{!25, !32, !32}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/vipinsoni/MTP/my_vivado_folder/simple_vec_dot_product/simple_vec_dot_product_vivado/solution1/.autopilot/db/simple_vec_dot_product.pragma.2.c", metadata !"/home/vipinsoni/MTP/my_vivado_folder/simple_vec_dot_product", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"simple_vec_dot_product", metadata !"simple_vec_dot_product", metadata !"", metadata !6, i32 19, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 20} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"simple_vec_dot_product.c", metadata !"/home/vipinsoni/MTP/my_vivado_folder/simple_vec_dot_product", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9, metadata !9, metadata !9}
!9 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!10 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!11 = metadata !{metadata !12}
!12 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!13 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/vipinsoni/MTP/my_vivado_folder/simple_vec_dot_product/simple_vec_dot_product_vivado/solution1/.autopilot/db/simple_vec_dot_product_initialize.pragma.2.c", metadata !"/home/vipinsoni/MTP/my_vivado_folder/simple_vec_dot_product", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !14, metadata !1} ; [ DW_TAG_compile_unit ]
!14 = metadata !{metadata !15}
!15 = metadata !{metadata !16}
!16 = metadata !{i32 786478, i32 0, metadata !17, metadata !"simple_vec_dot_product_initialize", metadata !"simple_vec_dot_product_initialize", metadata !"", metadata !17, i32 18, metadata !18, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 19} ; [ DW_TAG_subprogram ]
!17 = metadata !{i32 786473, metadata !"simple_vec_dot_product_initialize.c", metadata !"/home/vipinsoni/MTP/my_vivado_folder/simple_vec_dot_product", null} ; [ DW_TAG_file_type ]
!18 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !19, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!19 = metadata !{null}
!20 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/vipinsoni/MTP/my_vivado_folder/simple_vec_dot_product/simple_vec_dot_product_vivado/solution1/.autopilot/db/simple_vec_dot_product_terminate.pragma.2.c", metadata !"/home/vipinsoni/MTP/my_vivado_folder/simple_vec_dot_product", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !21, metadata !1} ; [ DW_TAG_compile_unit ]
!21 = metadata !{metadata !22}
!22 = metadata !{metadata !23}
!23 = metadata !{i32 786478, i32 0, metadata !24, metadata !"simple_vec_dot_product_terminate", metadata !"simple_vec_dot_product_terminate", metadata !"", metadata !24, i32 18, metadata !18, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 19} ; [ DW_TAG_subprogram ]
!24 = metadata !{i32 786473, metadata !"simple_vec_dot_product_terminate.c", metadata !"/home/vipinsoni/MTP/my_vivado_folder/simple_vec_dot_product", null} ; [ DW_TAG_file_type ]
!25 = metadata !{null, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30, metadata !31}
!26 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1}
!27 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!28 = metadata !{metadata !"kernel_arg_type", metadata !"int*", metadata !"int*", metadata !"int*"}
!29 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!30 = metadata !{metadata !"kernel_arg_name", metadata !"a", metadata !"b", metadata !"out"}
!31 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!32 = metadata !{null, metadata !33, metadata !34, metadata !35, metadata !36, metadata !37, metadata !31}
!33 = metadata !{metadata !"kernel_arg_addr_space"}
!34 = metadata !{metadata !"kernel_arg_access_qual"}
!35 = metadata !{metadata !"kernel_arg_type"}
!36 = metadata !{metadata !"kernel_arg_type_qual"}
!37 = metadata !{metadata !"kernel_arg_name"}
!38 = metadata !{metadata !39}
!39 = metadata !{i32 0, i32 31, metadata !40}
!40 = metadata !{metadata !41}
!41 = metadata !{metadata !"a", metadata !42, metadata !"int", i32 0, i32 31}
!42 = metadata !{metadata !43}
!43 = metadata !{i32 0, i32 3, i32 1}
!44 = metadata !{metadata !45}
!45 = metadata !{i32 0, i32 31, metadata !46}
!46 = metadata !{metadata !47}
!47 = metadata !{metadata !"b", metadata !42, metadata !"int", i32 0, i32 31}
!48 = metadata !{metadata !49}
!49 = metadata !{i32 0, i32 31, metadata !50}
!50 = metadata !{metadata !51}
!51 = metadata !{metadata !"out", metadata !42, metadata !"int", i32 0, i32 31}
!52 = metadata !{i32 786689, metadata !5, metadata !"a", null, i32 19, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!53 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 32, i32 0, i32 0, metadata !10, metadata !54, i32 0, i32 0} ; [ DW_TAG_array_type ]
!54 = metadata !{metadata !55}
!55 = metadata !{i32 786465, i64 0, i64 3}        ; [ DW_TAG_subrange_type ]
!56 = metadata !{i32 19, i32 33, metadata !5, null}
!57 = metadata !{i32 786689, metadata !5, metadata !"b", null, i32 19, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!58 = metadata !{i32 19, i32 43, metadata !5, null}
!59 = metadata !{i32 786689, metadata !5, metadata !"out", null, i32 19, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!60 = metadata !{i32 19, i32 53, metadata !5, null}
!61 = metadata !{i32 23, i32 8, metadata !62, null}
!62 = metadata !{i32 786443, metadata !63, i32 23, i32 3, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!63 = metadata !{i32 786443, metadata !5, i32 20, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!64 = metadata !{i32 24, i32 5, metadata !65, null}
!65 = metadata !{i32 786443, metadata !62, i32 23, i32 30, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!66 = metadata !{i32 786688, metadata !63, metadata !"i1", metadata !6, i32 22, metadata !67, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!67 = metadata !{i32 786468, null, metadata !"long int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!68 = metadata !{i32 25, i32 5, metadata !65, null}
!69 = metadata !{i32 28, i32 7, metadata !70, null}
!70 = metadata !{i32 786443, metadata !65, i32 27, i32 12, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!71 = metadata !{i32 33, i32 5, metadata !65, null}
!72 = metadata !{i32 23, i32 24, metadata !62, null}
!73 = metadata !{i32 786688, metadata !63, metadata !"i0", metadata !6, i32 21, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!74 = metadata !{i32 35, i32 1, metadata !63, null}
