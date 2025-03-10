#loc = loc(unknown)
module @nas attributes {module.FLOPs = 73269258 : i64, module.chip = "ALL", module.platform = "ONNX", module.state = "TOP_F32", module.top_run_mode = "STATIC", module.weight_file = "nas_top_f32_all_weight.npz"} {
  func.func @main(%arg0: tensor<1x3x32x32xf32> loc(unknown)) -> tensor<1x10xf32> {
    %0 = "top.Input"(%arg0) {channel_format = "nchw", do_preprocess = true, keep_aspect_ratio = false, keep_ratio_mode = "letterbox", mean = [0.000000e+00, 0.000000e+00, 0.000000e+00], pad_type = "center", pad_value = 0 : i64, pixel_format = "bgr", scale = [1.000000e+00, 1.000000e+00, 1.000000e+00]} : (tensor<1x3x32x32xf32>) -> tensor<1x3x32x32xf32> loc(#loc1)
    %1 = "top.Weight"() : () -> tensor<64x3x3x3xf32> loc(#loc2)
    %2 = "top.Weight"() : () -> tensor<64xf32> loc(#loc3)
    %3 = "top.Conv"(%0, %1, %2) {dilations = [1, 1], do_relu = true, dynweight_reorderd = false, group = 1 : i64, kernel_shape = [3, 3], pads = [1, 1, 1, 1], relu_limit = -1.000000e+00 : f64, strides = [1, 1], weight_is_coeff = 1 : i64} : (tensor<1x3x32x32xf32>, tensor<64x3x3x3xf32>, tensor<64xf32>) -> tensor<1x64x32x32xf32> loc(#loc4)
    %4 = "top.Weight"() : () -> tensor<32x64x1x1xf32> loc(#loc5)
    %5 = "top.Weight"() : () -> tensor<32xf32> loc(#loc6)
    %6 = "top.Conv"(%3, %4, %5) {dilations = [1, 1], do_relu = true, dynweight_reorderd = false, group = 1 : i64, kernel_shape = [1, 1], pads = [0, 0, 0, 0], relu_limit = -1.000000e+00 : f64, strides = [1, 1], weight_is_coeff = 1 : i64} : (tensor<1x64x32x32xf32>, tensor<32x64x1x1xf32>, tensor<32xf32>) -> tensor<1x32x32x32xf32> loc(#loc7)
    %7 = "top.Weight"() : () -> tensor<64x32x3x3xf32> loc(#loc8)
    %8 = "top.Weight"() : () -> tensor<64xf32> loc(#loc9)
    %9 = "top.Conv"(%6, %7, %8) {dilations = [1, 1], do_relu = true, dynweight_reorderd = false, group = 1 : i64, kernel_shape = [3, 3], pads = [1, 1, 1, 1], relu_limit = -1.000000e+00 : f64, strides = [1, 1], weight_is_coeff = 1 : i64} : (tensor<1x32x32x32xf32>, tensor<64x32x3x3xf32>, tensor<64xf32>) -> tensor<1x64x32x32xf32> loc(#loc10)
    %10 = "top.MaxPool"(%9) {count_include_pad = false, do_relu = false, first_round_mode = "HalfAwayFromZero", is_adaptive = false, keepdims = true, kernel_shape = [2, 2], pad_value = 0 : i64, pads = [0, 0, 0, 0], relu_limit = -1.000000e+00 : f64, round_mode = "HalfAwayFromZero", strides = [2, 2]} : (tensor<1x64x32x32xf32>) -> tensor<1x64x16x16xf32> loc(#loc11)
    %11 = "top.Weight"() : () -> tensor<32x64x3x3xf32> loc(#loc12)
    %12 = "top.Weight"() : () -> tensor<32xf32> loc(#loc13)
    %13 = "top.Conv"(%10, %11, %12) {dilations = [1, 1], do_relu = true, dynweight_reorderd = false, group = 1 : i64, kernel_shape = [3, 3], pads = [1, 1, 1, 1], relu_limit = -1.000000e+00 : f64, strides = [1, 1], weight_is_coeff = 1 : i64} : (tensor<1x64x16x16xf32>, tensor<32x64x3x3xf32>, tensor<32xf32>) -> tensor<1x32x16x16xf32> loc(#loc14)
    %14 = "top.Weight"() : () -> tensor<64x32x1x1xf32> loc(#loc15)
    %15 = "top.Weight"() : () -> tensor<64xf32> loc(#loc16)
    %16 = "top.Conv"(%13, %14, %15) {dilations = [1, 1], do_relu = true, dynweight_reorderd = false, group = 1 : i64, kernel_shape = [1, 1], pads = [0, 0, 0, 0], relu_limit = -1.000000e+00 : f64, strides = [1, 1], weight_is_coeff = 1 : i64} : (tensor<1x32x16x16xf32>, tensor<64x32x1x1xf32>, tensor<64xf32>) -> tensor<1x64x16x16xf32> loc(#loc17)
    %17 = "top.MaxPool"(%16) {count_include_pad = false, do_relu = false, first_round_mode = "HalfAwayFromZero", is_adaptive = false, keepdims = true, kernel_shape = [2, 2], pad_value = 0 : i64, pads = [0, 0, 0, 0], relu_limit = -1.000000e+00 : f64, round_mode = "HalfAwayFromZero", strides = [2, 2]} : (tensor<1x64x16x16xf32>) -> tensor<1x64x8x8xf32> loc(#loc18)
    %18 = "top.Weight"() : () -> tensor<128x64x3x3xf32> loc(#loc19)
    %19 = "top.Weight"() : () -> tensor<128xf32> loc(#loc20)
    %20 = "top.Conv"(%17, %18, %19) {dilations = [1, 1], do_relu = true, dynweight_reorderd = false, group = 1 : i64, kernel_shape = [3, 3], pads = [1, 1, 1, 1], relu_limit = -1.000000e+00 : f64, strides = [1, 1], weight_is_coeff = 1 : i64} : (tensor<1x64x8x8xf32>, tensor<128x64x3x3xf32>, tensor<128xf32>) -> tensor<1x128x8x8xf32> loc(#loc21)
    %21 = "top.Weight"() : () -> tensor<128x128x1x1xf32> loc(#loc22)
    %22 = "top.Weight"() : () -> tensor<128xf32> loc(#loc23)
    %23 = "top.Conv"(%20, %21, %22) {dilations = [1, 1], do_relu = true, dynweight_reorderd = false, group = 1 : i64, kernel_shape = [1, 1], pads = [0, 0, 0, 0], relu_limit = -1.000000e+00 : f64, strides = [1, 1], weight_is_coeff = 1 : i64} : (tensor<1x128x8x8xf32>, tensor<128x128x1x1xf32>, tensor<128xf32>) -> tensor<1x128x8x8xf32> loc(#loc24)
    %24 = "top.MaxPool"(%23) {count_include_pad = false, do_relu = false, first_round_mode = "HalfAwayFromZero", is_adaptive = false, keepdims = true, kernel_shape = [2, 2], pad_value = 0 : i64, pads = [0, 0, 0, 0], relu_limit = -1.000000e+00 : f64, round_mode = "HalfAwayFromZero", strides = [2, 2]} : (tensor<1x128x8x8xf32>) -> tensor<1x128x4x4xf32> loc(#loc25)
    %25 = "top.Weight"() : () -> tensor<64x128x3x3xf32> loc(#loc26)
    %26 = "top.Weight"() : () -> tensor<64xf32> loc(#loc27)
    %27 = "top.Conv"(%24, %25, %26) {dilations = [1, 1], do_relu = true, dynweight_reorderd = false, group = 1 : i64, kernel_shape = [3, 3], pads = [1, 1, 1, 1], relu_limit = -1.000000e+00 : f64, strides = [1, 1], weight_is_coeff = 1 : i64} : (tensor<1x128x4x4xf32>, tensor<64x128x3x3xf32>, tensor<64xf32>) -> tensor<1x64x4x4xf32> loc(#loc28)
    %28 = "top.Weight"() : () -> tensor<128x64x3x3xf32> loc(#loc29)
    %29 = "top.Weight"() : () -> tensor<128xf32> loc(#loc30)
    %30 = "top.Conv"(%27, %28, %29) {dilations = [1, 1], do_relu = true, dynweight_reorderd = false, group = 1 : i64, kernel_shape = [3, 3], pads = [1, 1, 1, 1], relu_limit = -1.000000e+00 : f64, strides = [1, 1], weight_is_coeff = 1 : i64} : (tensor<1x64x4x4xf32>, tensor<128x64x3x3xf32>, tensor<128xf32>) -> tensor<1x128x4x4xf32> loc(#loc31)
    %31 = "top.MaxPool"(%30) {count_include_pad = false, do_relu = false, first_round_mode = "HalfAwayFromZero", is_adaptive = false, keepdims = true, kernel_shape = [2, 2], pad_value = 0 : i64, pads = [0, 0, 0, 0], relu_limit = -1.000000e+00 : f64, round_mode = "HalfAwayFromZero", strides = [2, 2]} : (tensor<1x128x4x4xf32>) -> tensor<1x128x2x2xf32> loc(#loc32)
    %32 = "top.Weight"() : () -> tensor<512x128x1x1xf32> loc(#loc33)
    %33 = "top.Weight"() : () -> tensor<512xf32> loc(#loc34)
    %34 = "top.Conv"(%31, %32, %33) {dilations = [1, 1], do_relu = true, dynweight_reorderd = false, group = 1 : i64, kernel_shape = [1, 1], pads = [0, 0, 0, 0], relu_limit = -1.000000e+00 : f64, strides = [1, 1], weight_is_coeff = 1 : i64} : (tensor<1x128x2x2xf32>, tensor<512x128x1x1xf32>, tensor<512xf32>) -> tensor<1x512x2x2xf32> loc(#loc35)
    %35 = "top.AvgPool"(%34) {count_include_pad = true, do_relu = false, first_round_mode = "HalfAwayFromZero", is_adaptive = false, keepdims = true, kernel_shape = [2, 2], pad_value = 0 : i64, pads = [0, 0, 0, 0], relu_limit = -1.000000e+00 : f64, round_mode = "HalfAwayFromZero", strides = [1, 1]} : (tensor<1x512x2x2xf32>) -> tensor<1x512x1x1xf32> loc(#loc36)
    %36 = "top.Reshape"(%35) {flatten_start_dim = 1 : i64, shape = [1, 512]} : (tensor<1x512x1x1xf32>) -> tensor<1x512xf32> loc(#loc37)
    %37 = "top.Weight"() : () -> tensor<512x10xf32> loc(#loc38)
    %38 = "top.Weight"() : () -> tensor<10xf32> loc(#loc39)
    %39 = "top.MatMul"(%36, %37, %38) {do_relu = false, hdim_is_batch = false, keep_dims = true, left_transpose = false, output_transpose = false, relu_limit = -1.000000e+00 : f64, right_transpose = false} : (tensor<1x512xf32>, tensor<512x10xf32>, tensor<10xf32>) -> tensor<1x10xf32> loc(#loc40)
    return %39 : tensor<1x10xf32> loc(#loc)
  } loc(#loc)
} loc(#loc)
#loc1 = loc("input")
#loc2 = loc("228")
#loc3 = loc("230")
#loc4 = loc("/conv1_1/activate/Relu_output_0_Relu")
#loc5 = loc("232")
#loc6 = loc("234")
#loc7 = loc("/conv1_2/activate/Relu_output_0_Relu")
#loc8 = loc("236")
#loc9 = loc("238")
#loc10 = loc("/conv1_3/activate/Relu_output_0_Relu")
#loc11 = loc("/conv2_1/pool/MaxPool_output_0_MaxPool")
#loc12 = loc("240")
#loc13 = loc("242")
#loc14 = loc("/conv2_1/activate/Relu_output_0_Relu")
#loc15 = loc("244")
#loc16 = loc("246")
#loc17 = loc("/conv2_2/activate/Relu_output_0_Relu")
#loc18 = loc("/conv3_1/pool/MaxPool_output_0_MaxPool")
#loc19 = loc("248")
#loc20 = loc("250")
#loc21 = loc("/conv3_1/activate/Relu_output_0_Relu")
#loc22 = loc("252")
#loc23 = loc("254")
#loc24 = loc("/conv3_2/activate/Relu_output_0_Relu")
#loc25 = loc("/conv4_1/pool/MaxPool_output_0_MaxPool")
#loc26 = loc("256")
#loc27 = loc("258")
#loc28 = loc("/conv4_1/activate/Relu_output_0_Relu")
#loc29 = loc("260")
#loc30 = loc("262")
#loc31 = loc("/conv4_2/activate/Relu_output_0_Relu")
#loc32 = loc("/conv5_1/pool/MaxPool_output_0_MaxPool")
#loc33 = loc("264")
#loc34 = loc("266")
#loc35 = loc("/conv5_1/activate/Relu_output_0_Relu")
#loc36 = loc("/global_avg_pool/GlobalAveragePool_output_0_GlobalAveragePool")
#loc37 = loc("/Flatten_output_0_Flatten")
#loc38 = loc("onnx::Gemm_418_fix")
#loc39 = loc("onnx::Gemm_419")
#loc40 = loc("/fc/Gemm_output_0_Gemm")

