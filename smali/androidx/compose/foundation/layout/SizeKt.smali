.class public abstract Landroidx/compose/foundation/layout/SizeKt;
.super Ljava/lang/Object;
.source "Size.kt"


# static fields
.field private static final FillWholeMaxHeight:Landroidx/compose/foundation/layout/FillElement;

.field private static final FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

.field private static final FillWholeMaxWidth:Landroidx/compose/foundation/layout/FillElement;

.field private static final WrapContentHeightCenter:Landroidx/compose/foundation/layout/WrapContentElement;

.field private static final WrapContentHeightTop:Landroidx/compose/foundation/layout/WrapContentElement;

.field private static final WrapContentSizeCenter:Landroidx/compose/foundation/layout/WrapContentElement;

.field private static final WrapContentSizeTopStart:Landroidx/compose/foundation/layout/WrapContentElement;

.field private static final WrapContentWidthCenter:Landroidx/compose/foundation/layout/WrapContentElement;

.field private static final WrapContentWidthStart:Landroidx/compose/foundation/layout/WrapContentElement;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 476
    sget-object v0, Landroidx/compose/foundation/layout/FillElement;->Companion:Landroidx/compose/foundation/layout/FillElement$Companion;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroidx/compose/foundation/layout/FillElement$Companion;->width(F)Landroidx/compose/foundation/layout/FillElement;

    move-result-object v2

    sput-object v2, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxWidth:Landroidx/compose/foundation/layout/FillElement;

    .line 497
    invoke-virtual {v0, v1}, Landroidx/compose/foundation/layout/FillElement$Companion;->height(F)Landroidx/compose/foundation/layout/FillElement;

    move-result-object v2

    sput-object v2, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxHeight:Landroidx/compose/foundation/layout/FillElement;

    .line 521
    invoke-virtual {v0, v1}, Landroidx/compose/foundation/layout/FillElement$Companion;->size(F)Landroidx/compose/foundation/layout/FillElement;

    move-result-object v0

    sput-object v0, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    .line 550
    sget-object v0, Landroidx/compose/foundation/layout/WrapContentElement;->Companion:Landroidx/compose/foundation/layout/WrapContentElement$Companion;

    sget-object v1, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/Alignment$Companion;->getCenterHorizontally()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroidx/compose/foundation/layout/WrapContentElement$Companion;->width(Landroidx/compose/ui/Alignment$Horizontal;Z)Landroidx/compose/foundation/layout/WrapContentElement;

    move-result-object v2

    sput-object v2, Landroidx/compose/foundation/layout/SizeKt;->WrapContentWidthCenter:Landroidx/compose/foundation/layout/WrapContentElement;

    .line 551
    invoke-virtual {v1}, Landroidx/compose/ui/Alignment$Companion;->getStart()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Landroidx/compose/foundation/layout/WrapContentElement$Companion;->width(Landroidx/compose/ui/Alignment$Horizontal;Z)Landroidx/compose/foundation/layout/WrapContentElement;

    move-result-object v2

    sput-object v2, Landroidx/compose/foundation/layout/SizeKt;->WrapContentWidthStart:Landroidx/compose/foundation/layout/WrapContentElement;

    .line 580
    invoke-virtual {v1}, Landroidx/compose/ui/Alignment$Companion;->getCenterVertically()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Landroidx/compose/foundation/layout/WrapContentElement$Companion;->height(Landroidx/compose/ui/Alignment$Vertical;Z)Landroidx/compose/foundation/layout/WrapContentElement;

    move-result-object v2

    sput-object v2, Landroidx/compose/foundation/layout/SizeKt;->WrapContentHeightCenter:Landroidx/compose/foundation/layout/WrapContentElement;

    .line 581
    invoke-virtual {v1}, Landroidx/compose/ui/Alignment$Companion;->getTop()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Landroidx/compose/foundation/layout/WrapContentElement$Companion;->height(Landroidx/compose/ui/Alignment$Vertical;Z)Landroidx/compose/foundation/layout/WrapContentElement;

    move-result-object v2

    sput-object v2, Landroidx/compose/foundation/layout/SizeKt;->WrapContentHeightTop:Landroidx/compose/foundation/layout/WrapContentElement;

    .line 607
    invoke-virtual {v1}, Landroidx/compose/ui/Alignment$Companion;->getCenter()Landroidx/compose/ui/Alignment;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Landroidx/compose/foundation/layout/WrapContentElement$Companion;->size(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/foundation/layout/WrapContentElement;

    move-result-object v2

    sput-object v2, Landroidx/compose/foundation/layout/SizeKt;->WrapContentSizeCenter:Landroidx/compose/foundation/layout/WrapContentElement;

    .line 608
    invoke-virtual {v1}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroidx/compose/foundation/layout/WrapContentElement$Companion;->size(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/foundation/layout/WrapContentElement;

    move-result-object v0

    sput-object v0, Landroidx/compose/foundation/layout/SizeKt;->WrapContentSizeTopStart:Landroidx/compose/foundation/layout/WrapContentElement;

    return-void
.end method

.method public static final defaultMinSize-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;
    .locals 2

    .line 622
    new-instance v0, Landroidx/compose/foundation/layout/UnspecifiedConstraintsElement;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Landroidx/compose/foundation/layout/UnspecifiedConstraintsElement;-><init>(FFLkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic defaultMinSize-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFILjava/lang/Object;)Landroidx/compose/ui/Modifier;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 621
    sget-object p1, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/unit/Dp$Companion;->getUnspecified-D9Ej5fM()F

    move-result p1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    sget-object p2, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-virtual {p2}, Landroidx/compose/ui/unit/Dp$Companion;->getUnspecified-D9Ej5fM()F

    move-result p2

    :cond_1
    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/layout/SizeKt;->defaultMinSize-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final fillMaxHeight(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-nez v0, :cond_0

    .line 495
    sget-object p1, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxHeight:Landroidx/compose/foundation/layout/FillElement;

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/compose/foundation/layout/FillElement;->Companion:Landroidx/compose/foundation/layout/FillElement$Companion;

    invoke-virtual {v0, p1}, Landroidx/compose/foundation/layout/FillElement$Companion;->height(F)Landroidx/compose/foundation/layout/FillElement;

    move-result-object p1

    :goto_0
    invoke-interface {p0, p1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic fillMaxHeight$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 494
    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxHeight(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final fillMaxSize(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-nez v0, :cond_0

    .line 519
    sget-object p1, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/compose/foundation/layout/FillElement;->Companion:Landroidx/compose/foundation/layout/FillElement$Companion;

    invoke-virtual {v0, p1}, Landroidx/compose/foundation/layout/FillElement$Companion;->size(F)Landroidx/compose/foundation/layout/FillElement;

    move-result-object p1

    :goto_0
    invoke-interface {p0, p1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic fillMaxSize$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 518
    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxSize(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-nez v0, :cond_0

    .line 474
    sget-object p1, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxWidth:Landroidx/compose/foundation/layout/FillElement;

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/compose/foundation/layout/FillElement;->Companion:Landroidx/compose/foundation/layout/FillElement$Companion;

    invoke-virtual {v0, p1}, Landroidx/compose/foundation/layout/FillElement$Companion;->width(F)Landroidx/compose/foundation/layout/FillElement;

    move-result-object p1

    :goto_0
    invoke-interface {p0, p1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 473
    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;
    .locals 10

    .line 86
    new-instance v9, Landroidx/compose/foundation/layout/SizeElement;

    .line 110
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->isDebugInspectorInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/compose/foundation/layout/SizeKt$height-3ABfNKs$$inlined$debugInspectorInfo$1;

    invoke-direct {v0, p1}, Landroidx/compose/foundation/layout/SizeKt$height-3ABfNKs$$inlined$debugInspectorInfo$1;-><init>(F)V

    :goto_0
    move-object v6, v0

    goto :goto_1

    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->getNoInspectorInfo()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    goto :goto_0

    :goto_1
    const/4 v7, 0x5

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, v9

    move v2, p1

    move v4, p1

    .line 86
    invoke-direct/range {v0 .. v8}, Landroidx/compose/foundation/layout/SizeElement;-><init>(FFFFZLkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 85
    invoke-interface {p0, v9}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final heightIn-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;
    .locals 10

    .line 202
    new-instance v9, Landroidx/compose/foundation/layout/SizeElement;

    .line 110
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->isDebugInspectorInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/compose/foundation/layout/SizeKt$heightIn-VpY3zN4$$inlined$debugInspectorInfo$1;

    invoke-direct {v0, p1, p2}, Landroidx/compose/foundation/layout/SizeKt$heightIn-VpY3zN4$$inlined$debugInspectorInfo$1;-><init>(FF)V

    :goto_0
    move-object v6, v0

    goto :goto_1

    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->getNoInspectorInfo()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    goto :goto_0

    :goto_1
    const/4 v7, 0x5

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, v9

    move v2, p1

    move v4, p2

    .line 202
    invoke-direct/range {v0 .. v8}, Landroidx/compose/foundation/layout/SizeElement;-><init>(FFFFZLkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 201
    invoke-interface {p0, v9}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic heightIn-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFILjava/lang/Object;)Landroidx/compose/ui/Modifier;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 200
    sget-object p1, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/unit/Dp$Companion;->getUnspecified-D9Ej5fM()F

    move-result p1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    sget-object p2, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-virtual {p2}, Landroidx/compose/ui/unit/Dp$Companion;->getUnspecified-D9Ej5fM()F

    move-result p2

    :cond_1
    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/layout/SizeKt;->heightIn-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final requiredSizeIn-qDBjuR0(Landroidx/compose/ui/Modifier;FFFF)Landroidx/compose/ui/Modifier;
    .locals 9

    .line 440
    new-instance v8, Landroidx/compose/foundation/layout/SizeElement;

    .line 110
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->isDebugInspectorInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/compose/foundation/layout/SizeKt$requiredSizeIn-qDBjuR0$$inlined$debugInspectorInfo$1;

    invoke-direct {v0, p1, p2, p3, p4}, Landroidx/compose/foundation/layout/SizeKt$requiredSizeIn-qDBjuR0$$inlined$debugInspectorInfo$1;-><init>(FFFF)V

    :goto_0
    move-object v6, v0

    goto :goto_1

    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->getNoInspectorInfo()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    goto :goto_0

    :goto_1
    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v0, v8

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 440
    invoke-direct/range {v0 .. v7}, Landroidx/compose/foundation/layout/SizeElement;-><init>(FFFFZLkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 439
    invoke-interface {p0, v8}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic requiredSizeIn-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFILjava/lang/Object;)Landroidx/compose/ui/Modifier;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    .line 434
    sget-object p1, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/unit/Dp$Companion;->getUnspecified-D9Ej5fM()F

    move-result p1

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    .line 435
    sget-object p2, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-virtual {p2}, Landroidx/compose/ui/unit/Dp$Companion;->getUnspecified-D9Ej5fM()F

    move-result p2

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    .line 436
    sget-object p3, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-virtual {p3}, Landroidx/compose/ui/unit/Dp$Companion;->getUnspecified-D9Ej5fM()F

    move-result p3

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    .line 437
    sget-object p4, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-virtual {p4}, Landroidx/compose/ui/unit/Dp$Companion;->getUnspecified-D9Ej5fM()F

    move-result p4

    .line 433
    :cond_3
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/layout/SizeKt;->requiredSizeIn-qDBjuR0(Landroidx/compose/ui/Modifier;FFFF)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;
    .locals 9

    .line 110
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->isDebugInspectorInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/compose/foundation/layout/SizeKt$size-3ABfNKs$$inlined$debugInspectorInfo$1;

    invoke-direct {v0, p1}, Landroidx/compose/foundation/layout/SizeKt$size-3ABfNKs$$inlined$debugInspectorInfo$1;-><init>(F)V

    :goto_0
    move-object v7, v0

    goto :goto_1

    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->getNoInspectorInfo()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    goto :goto_0

    .line 113
    :goto_1
    new-instance v0, Landroidx/compose/foundation/layout/SizeElement;

    const/4 v6, 0x1

    const/4 v8, 0x0

    move-object v1, v0

    move v2, p1

    move v3, p1

    move v4, p1

    move v5, p1

    invoke-direct/range {v1 .. v8}, Landroidx/compose/foundation/layout/SizeElement;-><init>(FFFFZLkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 112
    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final size-6HolHcs(Landroidx/compose/ui/Modifier;J)Landroidx/compose/ui/Modifier;
    .locals 1

    .line 170
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/DpSize;->getWidth-D9Ej5fM(J)F

    move-result v0

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/DpSize;->getHeight-D9Ej5fM(J)F

    move-result p1

    invoke-static {p0, v0, p1}, Landroidx/compose/foundation/layout/SizeKt;->size-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final size-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;
    .locals 9

    .line 110
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->isDebugInspectorInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/compose/foundation/layout/SizeKt$size-VpY3zN4$$inlined$debugInspectorInfo$1;

    invoke-direct {v0, p1, p2}, Landroidx/compose/foundation/layout/SizeKt$size-VpY3zN4$$inlined$debugInspectorInfo$1;-><init>(FF)V

    :goto_0
    move-object v7, v0

    goto :goto_1

    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->getNoInspectorInfo()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    goto :goto_0

    .line 143
    :goto_1
    new-instance v0, Landroidx/compose/foundation/layout/SizeElement;

    const/4 v6, 0x1

    const/4 v8, 0x0

    move-object v1, v0

    move v2, p1

    move v3, p2

    move v4, p1

    move v5, p2

    invoke-direct/range {v1 .. v8}, Landroidx/compose/foundation/layout/SizeElement;-><init>(FFFFZLkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 142
    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final sizeIn-qDBjuR0(Landroidx/compose/ui/Modifier;FFFF)Landroidx/compose/ui/Modifier;
    .locals 9

    .line 229
    new-instance v8, Landroidx/compose/foundation/layout/SizeElement;

    .line 110
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->isDebugInspectorInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/compose/foundation/layout/SizeKt$sizeIn-qDBjuR0$$inlined$debugInspectorInfo$1;

    invoke-direct {v0, p1, p2, p3, p4}, Landroidx/compose/foundation/layout/SizeKt$sizeIn-qDBjuR0$$inlined$debugInspectorInfo$1;-><init>(FFFF)V

    :goto_0
    move-object v6, v0

    goto :goto_1

    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->getNoInspectorInfo()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    goto :goto_0

    :goto_1
    const/4 v7, 0x0

    const/4 v5, 0x1

    move-object v0, v8

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 229
    invoke-direct/range {v0 .. v7}, Landroidx/compose/foundation/layout/SizeElement;-><init>(FFFFZLkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 228
    invoke-interface {p0, v8}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic sizeIn-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFILjava/lang/Object;)Landroidx/compose/ui/Modifier;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    .line 223
    sget-object p1, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/unit/Dp$Companion;->getUnspecified-D9Ej5fM()F

    move-result p1

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    .line 224
    sget-object p2, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-virtual {p2}, Landroidx/compose/ui/unit/Dp$Companion;->getUnspecified-D9Ej5fM()F

    move-result p2

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    .line 225
    sget-object p3, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-virtual {p3}, Landroidx/compose/ui/unit/Dp$Companion;->getUnspecified-D9Ej5fM()F

    move-result p3

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    .line 226
    sget-object p4, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-virtual {p4}, Landroidx/compose/ui/unit/Dp$Companion;->getUnspecified-D9Ej5fM()F

    move-result p4

    .line 222
    :cond_3
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/layout/SizeKt;->sizeIn-qDBjuR0(Landroidx/compose/ui/Modifier;FFFF)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final width-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;
    .locals 10

    .line 59
    new-instance v9, Landroidx/compose/foundation/layout/SizeElement;

    .line 110
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->isDebugInspectorInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/compose/foundation/layout/SizeKt$width-3ABfNKs$$inlined$debugInspectorInfo$1;

    invoke-direct {v0, p1}, Landroidx/compose/foundation/layout/SizeKt$width-3ABfNKs$$inlined$debugInspectorInfo$1;-><init>(F)V

    :goto_0
    move-object v6, v0

    goto :goto_1

    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->getNoInspectorInfo()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    goto :goto_0

    :goto_1
    const/16 v7, 0xa

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, v9

    move v1, p1

    move v3, p1

    .line 59
    invoke-direct/range {v0 .. v8}, Landroidx/compose/foundation/layout/SizeElement;-><init>(FFFFZLkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 58
    invoke-interface {p0, v9}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final wrapContentHeight(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment$Vertical;Z)Landroidx/compose/ui/Modifier;
    .locals 2

    .line 571
    sget-object v0, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/Alignment$Companion;->getCenterVertically()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p2, :cond_0

    .line 572
    sget-object p1, Landroidx/compose/foundation/layout/SizeKt;->WrapContentHeightCenter:Landroidx/compose/foundation/layout/WrapContentElement;

    goto :goto_0

    .line 573
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/Alignment$Companion;->getTop()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_1

    .line 574
    sget-object p1, Landroidx/compose/foundation/layout/SizeKt;->WrapContentHeightTop:Landroidx/compose/foundation/layout/WrapContentElement;

    goto :goto_0

    .line 576
    :cond_1
    sget-object v0, Landroidx/compose/foundation/layout/WrapContentElement;->Companion:Landroidx/compose/foundation/layout/WrapContentElement$Companion;

    invoke-virtual {v0, p1, p2}, Landroidx/compose/foundation/layout/WrapContentElement$Companion;->height(Landroidx/compose/ui/Alignment$Vertical;Z)Landroidx/compose/foundation/layout/WrapContentElement;

    move-result-object p1

    .line 570
    :goto_0
    invoke-interface {p0, p1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic wrapContentHeight$default(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment$Vertical;ZILjava/lang/Object;)Landroidx/compose/ui/Modifier;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 567
    sget-object p1, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/Alignment$Companion;->getCenterVertically()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object p1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    .line 566
    :cond_1
    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/layout/SizeKt;->wrapContentHeight(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment$Vertical;Z)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final wrapContentWidth(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment$Horizontal;Z)Landroidx/compose/ui/Modifier;
    .locals 2

    .line 541
    sget-object v0, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/Alignment$Companion;->getCenterHorizontally()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p2, :cond_0

    .line 542
    sget-object p1, Landroidx/compose/foundation/layout/SizeKt;->WrapContentWidthCenter:Landroidx/compose/foundation/layout/WrapContentElement;

    goto :goto_0

    .line 543
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/Alignment$Companion;->getStart()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_1

    .line 544
    sget-object p1, Landroidx/compose/foundation/layout/SizeKt;->WrapContentWidthStart:Landroidx/compose/foundation/layout/WrapContentElement;

    goto :goto_0

    .line 546
    :cond_1
    sget-object v0, Landroidx/compose/foundation/layout/WrapContentElement;->Companion:Landroidx/compose/foundation/layout/WrapContentElement$Companion;

    invoke-virtual {v0, p1, p2}, Landroidx/compose/foundation/layout/WrapContentElement$Companion;->width(Landroidx/compose/ui/Alignment$Horizontal;Z)Landroidx/compose/foundation/layout/WrapContentElement;

    move-result-object p1

    .line 540
    :goto_0
    invoke-interface {p0, p1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic wrapContentWidth$default(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment$Horizontal;ZILjava/lang/Object;)Landroidx/compose/ui/Modifier;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 537
    sget-object p1, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/Alignment$Companion;->getCenterHorizontally()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object p1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    .line 536
    :cond_1
    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/layout/SizeKt;->wrapContentWidth(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment$Horizontal;Z)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method
