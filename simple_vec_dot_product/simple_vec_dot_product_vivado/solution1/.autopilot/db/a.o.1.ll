; ModuleID = '/home/vipinsoni/MTP/my_vivado_folder/simple_vec_dot_product/simple_vec_dot_product_vivado/solution1/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@simple_vec_dot_product.str = internal unnamed_addr constant [23 x i8] c"simple_vec_dot_product\00" ; [#uses=1 type=[23 x i8]*]

; [#uses=0]
define void @simple_vec_dot_product(i32* %a, i32* %b, i32* %out) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecTopModule([23 x i8]* @simple_vec_dot_product.str) nounwind
  call void @llvm.dbg.value(metadata !{i32* %a}, i64 0, metadata !38), !dbg !39 ; [debug line = 19:33] [debug variable = a]
  call void @llvm.dbg.value(metadata !{i32* %b}, i64 0, metadata !40), !dbg !41 ; [debug line = 19:43] [debug variable = b]
  call void @llvm.dbg.value(metadata !{i32* %out}, i64 0, metadata !42), !dbg !43 ; [debug line = 19:53] [debug variable = out]
  call void (...)* @_ssdm_SpecArrayDimSize(i32* %a, i32 4) nounwind, !dbg !44 ; [debug line = 20:2]
  call void (...)* @_ssdm_SpecArrayDimSize(i32* %b, i32 4) nounwind, !dbg !46 ; [debug line = 20:30]
  call void (...)* @_ssdm_SpecArrayDimSize(i32* %out, i32 4) nounwind, !dbg !47 ; [debug line = 20:58]
  br label %1, !dbg !48                           ; [debug line = 23:8]

; <label>:1                                       ; preds = %._crit_edge, %0
  %i0 = phi i32 [ 0, %0 ], [ %i0.1, %._crit_edge ] ; [#uses=3 type=i32]
  %exitcond = icmp eq i32 %i0, 4, !dbg !48        ; [#uses=1 type=i1] [debug line = 23:8]
  br i1 %exitcond, label %4, label %2, !dbg !48   ; [debug line = 23:8]

; <label>:2                                       ; preds = %1
  %tmp = sext i32 %i0 to i64, !dbg !50            ; [#uses=3 type=i64] [debug line = 24:5]
  %a.addr = getelementptr inbounds i32* %a, i64 %tmp, !dbg !50 ; [#uses=1 type=i32*] [debug line = 24:5]
  %a.load = load i32* %a.addr, align 4, !dbg !50  ; [#uses=2 type=i32] [debug line = 24:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %a.load) nounwind
  %tmp.1 = sext i32 %a.load to i64, !dbg !50      ; [#uses=1 type=i64] [debug line = 24:5]
  %b.addr = getelementptr inbounds i32* %b, i64 %tmp, !dbg !50 ; [#uses=1 type=i32*] [debug line = 24:5]
  %b.load = load i32* %b.addr, align 4, !dbg !50  ; [#uses=2 type=i32] [debug line = 24:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %b.load) nounwind
  %tmp.2 = sext i32 %b.load to i64, !dbg !50      ; [#uses=1 type=i64] [debug line = 24:5]
  %i1 = mul nsw i64 %tmp.2, %tmp.1, !dbg !50      ; [#uses=3 type=i64] [debug line = 24:5]
  call void @llvm.dbg.value(metadata !{i64 %i1}, i64 0, metadata !52), !dbg !50 ; [debug line = 24:5] [debug variable = i1]
  %tmp.4 = icmp sgt i64 %i1, 2147483647, !dbg !54 ; [#uses=1 type=i1] [debug line = 25:5]
  br i1 %tmp.4, label %._crit_edge, label %3, !dbg !54 ; [debug line = 25:5]

; <label>:3                                       ; preds = %2
  %tmp.5 = icmp slt i64 %i1, -2147483648, !dbg !55 ; [#uses=1 type=i1] [debug line = 28:7]
  %tmp.6 = trunc i64 %i1 to i32                   ; [#uses=1 type=i32]
  %phitmp = select i1 %tmp.5, i32 -2147483648, i32 %tmp.6 ; [#uses=1 type=i32]
  br label %._crit_edge

._crit_edge:                                      ; preds = %3, %2
  %i1.1 = phi i32 [ %phitmp, %3 ], [ 2147483647, %2 ], !dbg !57 ; [#uses=1 type=i32] [debug line = 33:5]
  %out.addr = getelementptr inbounds i32* %out, i64 %tmp, !dbg !57 ; [#uses=1 type=i32*] [debug line = 33:5]
  store i32 %i1.1, i32* %out.addr, align 4, !dbg !57 ; [debug line = 33:5]
  %i0.1 = add nsw i32 %i0, 1, !dbg !58            ; [#uses=1 type=i32] [debug line = 23:24]
  call void @llvm.dbg.value(metadata !{i32 %i0.1}, i64 0, metadata !59), !dbg !58 ; [debug line = 23:24] [debug variable = i0]
  br label %1, !dbg !58                           ; [debug line = 23:24]

; <label>:4                                       ; preds = %1
  ret void, !dbg !60                              ; [debug line = 35:1]
}

; [#uses=5]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=2]
declare void @_ssdm_SpecKeepArrayLoad(...)

; [#uses=3]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

!llvm.dbg.cu = !{!0, !13, !20}
!opencl.kernels = !{!25, !32, !32}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/vipinsoni/MTP/my_vivado_folder/simple_vec_dot_product/simple_vec_dot_product_vivado/solution1/.autopilot/db/simple_vec_dot_product.pragma.2.c", metadata !"/home/vipinsoni/MTP/my_vivado_folder/simple_vec_dot_product", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"simple_vec_dot_product", metadata !"simple_vec_dot_product", metadata !"", metadata !6, i32 19, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32*, i32*, i32*)* @simple_vec_dot_product, null, null, metadata !11, i32 20} ; [ DW_TAG_subprogram ]
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
!25 = metadata !{void (i32*, i32*, i32*)* @simple_vec_dot_product, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30, metadata !31}
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
!38 = metadata !{i32 786689, metadata !5, metadata !"a", metadata !6, i32 16777235, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!39 = metadata !{i32 19, i32 33, metadata !5, null}
!40 = metadata !{i32 786689, metadata !5, metadata !"b", metadata !6, i32 33554451, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!41 = metadata !{i32 19, i32 43, metadata !5, null}
!42 = metadata !{i32 786689, metadata !5, metadata !"out", metadata !6, i32 50331667, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!43 = metadata !{i32 19, i32 53, metadata !5, null}
!44 = metadata !{i32 20, i32 2, metadata !45, null}
!45 = metadata !{i32 786443, metadata !5, i32 20, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!46 = metadata !{i32 20, i32 30, metadata !45, null}
!47 = metadata !{i32 20, i32 58, metadata !45, null}
!48 = metadata !{i32 23, i32 8, metadata !49, null}
!49 = metadata !{i32 786443, metadata !45, i32 23, i32 3, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!50 = metadata !{i32 24, i32 5, metadata !51, null}
!51 = metadata !{i32 786443, metadata !49, i32 23, i32 30, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!52 = metadata !{i32 786688, metadata !45, metadata !"i1", metadata !6, i32 22, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!53 = metadata !{i32 786468, null, metadata !"long int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!54 = metadata !{i32 25, i32 5, metadata !51, null}
!55 = metadata !{i32 28, i32 7, metadata !56, null}
!56 = metadata !{i32 786443, metadata !51, i32 27, i32 12, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!57 = metadata !{i32 33, i32 5, metadata !51, null}
!58 = metadata !{i32 23, i32 24, metadata !49, null}
!59 = metadata !{i32 786688, metadata !45, metadata !"i0", metadata !6, i32 21, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!60 = metadata !{i32 35, i32 1, metadata !45, null}
