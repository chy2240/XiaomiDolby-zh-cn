.class public final Landroidx/compose/ui/graphics/vector/VectorPath;
.super Landroidx/compose/ui/graphics/vector/VectorNode;
.source "ImageVector.kt"


# instance fields
.field private final fill:Landroidx/compose/ui/graphics/Brush;

.field private final fillAlpha:F

.field private final name:Ljava/lang/String;

.field private final pathData:Ljava/util/List;

.field private final pathFillType:I

.field private final stroke:Landroidx/compose/ui/graphics/Brush;

.field private final strokeAlpha:F

.field private final strokeLineCap:I

.field private final strokeLineJoin:I

.field private final strokeLineMiter:F

.field private final strokeLineWidth:F

.field private final trimPathEnd:F

.field private final trimPathOffset:F

.field private final trimPathStart:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/util/List;ILandroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFF)V
    .locals 1

    const/4 v0, 0x0

    .line 575
    invoke-direct {p0, v0}, Landroidx/compose/ui/graphics/vector/VectorNode;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 522
    iput-object p1, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->name:Ljava/lang/String;

    .line 525
    iput-object p2, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->pathData:Ljava/util/List;

    .line 528
    iput p3, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->pathFillType:I

    .line 531
    iput-object p4, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->fill:Landroidx/compose/ui/graphics/Brush;

    .line 534
    iput p5, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->fillAlpha:F

    .line 537
    iput-object p6, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->stroke:Landroidx/compose/ui/graphics/Brush;

    .line 540
    iput p7, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->strokeAlpha:F

    .line 543
    iput p8, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->strokeLineWidth:F

    .line 548
    iput p9, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->strokeLineCap:I

    .line 553
    iput p10, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->strokeLineJoin:I

    .line 556
    iput p11, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->strokeLineMiter:F

    .line 562
    iput p12, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->trimPathStart:F

    .line 568
    iput p13, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->trimPathEnd:F

    .line 574
    iput p14, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->trimPathOffset:F

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/List;ILandroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p14}, Landroidx/compose/ui/graphics/vector/VectorPath;-><init>(Ljava/lang/String;Ljava/util/List;ILandroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFF)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_9

    .line 579
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroidx/compose/ui/graphics/vector/VectorPath;

    if-eq v3, v2, :cond_1

    goto/16 :goto_0

    .line 581
    :cond_1
    check-cast p1, Landroidx/compose/ui/graphics/vector/VectorPath;

    .line 583
    iget-object v2, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->name:Ljava/lang/String;

    iget-object v3, p1, Landroidx/compose/ui/graphics/vector/VectorPath;->name:Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 584
    :cond_2
    iget-object v2, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->fill:Landroidx/compose/ui/graphics/Brush;

    iget-object v3, p1, Landroidx/compose/ui/graphics/vector/VectorPath;->fill:Landroidx/compose/ui/graphics/Brush;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 585
    :cond_3
    iget v2, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->fillAlpha:F

    iget v3, p1, Landroidx/compose/ui/graphics/vector/VectorPath;->fillAlpha:F

    cmpg-float v2, v2, v3

    if-nez v2, :cond_9

    .line 586
    iget-object v2, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->stroke:Landroidx/compose/ui/graphics/Brush;

    iget-object v3, p1, Landroidx/compose/ui/graphics/vector/VectorPath;->stroke:Landroidx/compose/ui/graphics/Brush;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 587
    :cond_4
    iget v2, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->strokeAlpha:F

    iget v3, p1, Landroidx/compose/ui/graphics/vector/VectorPath;->strokeAlpha:F

    cmpg-float v2, v2, v3

    if-nez v2, :cond_9

    .line 588
    iget v2, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->strokeLineWidth:F

    iget v3, p1, Landroidx/compose/ui/graphics/vector/VectorPath;->strokeLineWidth:F

    cmpg-float v2, v2, v3

    if-nez v2, :cond_9

    .line 589
    iget v2, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->strokeLineCap:I

    iget v3, p1, Landroidx/compose/ui/graphics/vector/VectorPath;->strokeLineCap:I

    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/StrokeCap;->equals-impl0(II)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 590
    :cond_5
    iget v2, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->strokeLineJoin:I

    iget v3, p1, Landroidx/compose/ui/graphics/vector/VectorPath;->strokeLineJoin:I

    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/StrokeJoin;->equals-impl0(II)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 591
    :cond_6
    iget v2, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->strokeLineMiter:F

    iget v3, p1, Landroidx/compose/ui/graphics/vector/VectorPath;->strokeLineMiter:F

    cmpg-float v2, v2, v3

    if-nez v2, :cond_9

    .line 592
    iget v2, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->trimPathStart:F

    iget v3, p1, Landroidx/compose/ui/graphics/vector/VectorPath;->trimPathStart:F

    cmpg-float v2, v2, v3

    if-nez v2, :cond_9

    .line 593
    iget v2, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->trimPathEnd:F

    iget v3, p1, Landroidx/compose/ui/graphics/vector/VectorPath;->trimPathEnd:F

    cmpg-float v2, v2, v3

    if-nez v2, :cond_9

    .line 594
    iget v2, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->trimPathOffset:F

    iget v3, p1, Landroidx/compose/ui/graphics/vector/VectorPath;->trimPathOffset:F

    cmpg-float v2, v2, v3

    if-nez v2, :cond_9

    .line 595
    iget v2, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->pathFillType:I

    iget v3, p1, Landroidx/compose/ui/graphics/vector/VectorPath;->pathFillType:I

    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/PathFillType;->equals-impl0(II)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 596
    :cond_7
    iget-object p0, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->pathData:Ljava/util/List;

    iget-object p1, p1, Landroidx/compose/ui/graphics/vector/VectorPath;->pathData:Ljava/util/List;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    return v1

    :cond_8
    return v0

    :cond_9
    :goto_0
    return v1
.end method

.method public final getFill()Landroidx/compose/ui/graphics/Brush;
    .locals 0

    .line 531
    iget-object p0, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->fill:Landroidx/compose/ui/graphics/Brush;

    return-object p0
.end method

.method public final getFillAlpha()F
    .locals 0

    .line 534
    iget p0, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->fillAlpha:F

    return p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    .line 522
    iget-object p0, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final getPathData()Ljava/util/List;
    .locals 0

    .line 525
    iget-object p0, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->pathData:Ljava/util/List;

    return-object p0
.end method

.method public final getPathFillType-Rg-k1Os()I
    .locals 0

    .line 528
    iget p0, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->pathFillType:I

    return p0
.end method

.method public final getStroke()Landroidx/compose/ui/graphics/Brush;
    .locals 0

    .line 537
    iget-object p0, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->stroke:Landroidx/compose/ui/graphics/Brush;

    return-object p0
.end method

.method public final getStrokeAlpha()F
    .locals 0

    .line 540
    iget p0, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->strokeAlpha:F

    return p0
.end method

.method public final getStrokeLineCap-KaPHkGw()I
    .locals 0

    .line 548
    iget p0, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->strokeLineCap:I

    return p0
.end method

.method public final getStrokeLineJoin-LxFBmk8()I
    .locals 0

    .line 553
    iget p0, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->strokeLineJoin:I

    return p0
.end method

.method public final getStrokeLineMiter()F
    .locals 0

    .line 556
    iget p0, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->strokeLineMiter:F

    return p0
.end method

.method public final getStrokeLineWidth()F
    .locals 0

    .line 543
    iget p0, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->strokeLineWidth:F

    return p0
.end method

.method public final getTrimPathEnd()F
    .locals 0

    .line 568
    iget p0, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->trimPathEnd:F

    return p0
.end method

.method public final getTrimPathOffset()F
    .locals 0

    .line 574
    iget p0, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->trimPathOffset:F

    return p0
.end method

.method public final getTrimPathStart()F
    .locals 0

    .line 562
    iget p0, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->trimPathStart:F

    return p0
.end method

.method public hashCode()I
    .locals 3

    .line 602
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 603
    iget-object v1, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->pathData:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 604
    iget-object v1, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->fill:Landroidx/compose/ui/graphics/Brush;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 605
    iget v1, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->fillAlpha:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 606
    iget-object v1, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->stroke:Landroidx/compose/ui/graphics/Brush;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 607
    iget v1, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->strokeAlpha:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 608
    iget v1, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->strokeLineWidth:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 609
    iget v1, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->strokeLineCap:I

    invoke-static {v1}, Landroidx/compose/ui/graphics/StrokeCap;->hashCode-impl(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 610
    iget v1, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->strokeLineJoin:I

    invoke-static {v1}, Landroidx/compose/ui/graphics/StrokeJoin;->hashCode-impl(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 611
    iget v1, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->strokeLineMiter:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 612
    iget v1, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->trimPathStart:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 613
    iget v1, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->trimPathEnd:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 614
    iget v1, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->trimPathOffset:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 615
    iget p0, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->pathFillType:I

    invoke-static {p0}, Landroidx/compose/ui/graphics/PathFillType;->hashCode-impl(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method
