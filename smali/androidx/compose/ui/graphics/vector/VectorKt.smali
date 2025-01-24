.class public abstract Landroidx/compose/ui/graphics/vector/VectorKt;
.super Ljava/lang/Object;
.source "Vector.kt"


# static fields
.field private static final DefaultFillType:I

.field private static final DefaultStrokeLineCap:I

.field private static final DefaultStrokeLineJoin:I

.field private static final DefaultTintBlendMode:I

.field private static final DefaultTintColor:J

.field private static final EmptyPath:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 57
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/graphics/vector/VectorKt;->EmptyPath:Ljava/util/List;

    .line 66
    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v0

    sput v0, Landroidx/compose/ui/graphics/vector/VectorKt;->DefaultStrokeLineCap:I

    .line 67
    sget-object v0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getMiter-LxFBmk8()I

    move-result v0

    sput v0, Landroidx/compose/ui/graphics/vector/VectorKt;->DefaultStrokeLineJoin:I

    .line 68
    sget-object v0, Landroidx/compose/ui/graphics/BlendMode;->Companion:Landroidx/compose/ui/graphics/BlendMode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/BlendMode$Companion;->getSrcIn-0nO6VwU()I

    move-result v0

    sput v0, Landroidx/compose/ui/graphics/vector/VectorKt;->DefaultTintBlendMode:I

    .line 69
    sget-object v0, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color$Companion;->getTransparent-0d7_KjU()J

    move-result-wide v0

    sput-wide v0, Landroidx/compose/ui/graphics/vector/VectorKt;->DefaultTintColor:J

    .line 70
    sget-object v0, Landroidx/compose/ui/graphics/PathFillType;->Companion:Landroidx/compose/ui/graphics/PathFillType$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/PathFillType$Companion;->getNonZero-Rg-k1Os()I

    move-result v0

    sput v0, Landroidx/compose/ui/graphics/vector/VectorKt;->DefaultFillType:I

    return-void
.end method

.method public static final getDefaultFillType()I
    .locals 1

    .line 70
    sget v0, Landroidx/compose/ui/graphics/vector/VectorKt;->DefaultFillType:I

    return v0
.end method

.method public static final getDefaultStrokeLineCap()I
    .locals 1

    .line 66
    sget v0, Landroidx/compose/ui/graphics/vector/VectorKt;->DefaultStrokeLineCap:I

    return v0
.end method

.method public static final getDefaultStrokeLineJoin()I
    .locals 1

    .line 67
    sget v0, Landroidx/compose/ui/graphics/vector/VectorKt;->DefaultStrokeLineJoin:I

    return v0
.end method

.method public static final getEmptyPath()Ljava/util/List;
    .locals 1

    .line 57
    sget-object v0, Landroidx/compose/ui/graphics/vector/VectorKt;->EmptyPath:Ljava/util/List;

    return-object v0
.end method

.method public static final rgbEqual--OWjLjI(JJ)Z
    .locals 2

    .line 630
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->getRed-impl(J)F

    move-result v0

    invoke-static {p2, p3}, Landroidx/compose/ui/graphics/Color;->getRed-impl(J)F

    move-result v1

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->getGreen-impl(J)F

    move-result v0

    invoke-static {p2, p3}, Landroidx/compose/ui/graphics/Color;->getGreen-impl(J)F

    move-result v1

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->getBlue-impl(J)F

    move-result p0

    invoke-static {p2, p3}, Landroidx/compose/ui/graphics/Color;->getBlue-impl(J)F

    move-result p1

    cmpg-float p0, p0, p1

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final tintableWithAlphaMask(Landroidx/compose/ui/graphics/ColorFilter;)Z
    .locals 5

    .line 637
    instance-of v0, p0, Landroidx/compose/ui/graphics/BlendModeColorFilter;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 638
    check-cast p0, Landroidx/compose/ui/graphics/BlendModeColorFilter;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/BlendModeColorFilter;->getBlendMode-0nO6VwU()I

    move-result v0

    sget-object v3, Landroidx/compose/ui/graphics/BlendMode;->Companion:Landroidx/compose/ui/graphics/BlendMode$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/BlendMode$Companion;->getSrcIn-0nO6VwU()I

    move-result v4

    invoke-static {v0, v4}, Landroidx/compose/ui/graphics/BlendMode;->equals-impl0(II)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/BlendModeColorFilter;->getBlendMode-0nO6VwU()I

    move-result p0

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/BlendMode$Companion;->getSrcOver-0nO6VwU()I

    move-result v0

    invoke-static {p0, v0}, Landroidx/compose/ui/graphics/BlendMode;->equals-impl0(II)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    if-nez p0, :cond_0

    :cond_2
    :goto_0
    return v1
.end method
