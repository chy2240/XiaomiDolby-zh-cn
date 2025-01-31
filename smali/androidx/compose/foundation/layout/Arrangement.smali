.class public final Landroidx/compose/foundation/layout/Arrangement;
.super Ljava/lang/Object;
.source "Arrangement.kt"


# static fields
.field private static final Bottom:Landroidx/compose/foundation/layout/Arrangement$Vertical;

.field private static final Center:Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

.field private static final End:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

.field public static final INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

.field private static final SpaceAround:Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

.field private static final SpaceBetween:Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

.field private static final SpaceEvenly:Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

.field private static final Start:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

.field private static final Top:Landroidx/compose/foundation/layout/Arrangement$Vertical;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/foundation/layout/Arrangement;

    invoke-direct {v0}, Landroidx/compose/foundation/layout/Arrangement;-><init>()V

    sput-object v0, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    .line 111
    new-instance v0, Landroidx/compose/foundation/layout/Arrangement$Start$1;

    invoke-direct {v0}, Landroidx/compose/foundation/layout/Arrangement$Start$1;-><init>()V

    sput-object v0, Landroidx/compose/foundation/layout/Arrangement;->Start:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    .line 133
    new-instance v0, Landroidx/compose/foundation/layout/Arrangement$End$1;

    invoke-direct {v0}, Landroidx/compose/foundation/layout/Arrangement$End$1;-><init>()V

    sput-object v0, Landroidx/compose/foundation/layout/Arrangement;->End:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    .line 155
    new-instance v0, Landroidx/compose/foundation/layout/Arrangement$Top$1;

    invoke-direct {v0}, Landroidx/compose/foundation/layout/Arrangement$Top$1;-><init>()V

    sput-object v0, Landroidx/compose/foundation/layout/Arrangement;->Top:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    .line 168
    new-instance v0, Landroidx/compose/foundation/layout/Arrangement$Bottom$1;

    invoke-direct {v0}, Landroidx/compose/foundation/layout/Arrangement$Bottom$1;-><init>()V

    sput-object v0, Landroidx/compose/foundation/layout/Arrangement;->Bottom:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    .line 181
    new-instance v0, Landroidx/compose/foundation/layout/Arrangement$Center$1;

    invoke-direct {v0}, Landroidx/compose/foundation/layout/Arrangement$Center$1;-><init>()V

    sput-object v0, Landroidx/compose/foundation/layout/Arrangement;->Center:Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    .line 209
    new-instance v0, Landroidx/compose/foundation/layout/Arrangement$SpaceEvenly$1;

    invoke-direct {v0}, Landroidx/compose/foundation/layout/Arrangement$SpaceEvenly$1;-><init>()V

    sput-object v0, Landroidx/compose/foundation/layout/Arrangement;->SpaceEvenly:Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    .line 236
    new-instance v0, Landroidx/compose/foundation/layout/Arrangement$SpaceBetween$1;

    invoke-direct {v0}, Landroidx/compose/foundation/layout/Arrangement$SpaceBetween$1;-><init>()V

    sput-object v0, Landroidx/compose/foundation/layout/Arrangement;->SpaceBetween:Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    .line 264
    new-instance v0, Landroidx/compose/foundation/layout/Arrangement$SpaceAround$1;

    invoke-direct {v0}, Landroidx/compose/foundation/layout/Arrangement$SpaceAround$1;-><init>()V

    sput-object v0, Landroidx/compose/foundation/layout/Arrangement;->SpaceAround:Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBottom()Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .locals 0

    .line 167
    sget-object p0, Landroidx/compose/foundation/layout/Arrangement;->Bottom:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    return-object p0
.end method

.method public final getCenter()Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;
    .locals 0

    .line 180
    sget-object p0, Landroidx/compose/foundation/layout/Arrangement;->Center:Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    return-object p0
.end method

.method public final getEnd()Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .locals 0

    .line 132
    sget-object p0, Landroidx/compose/foundation/layout/Arrangement;->End:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    return-object p0
.end method

.method public final getStart()Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .locals 0

    .line 110
    sget-object p0, Landroidx/compose/foundation/layout/Arrangement;->Start:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    return-object p0
.end method

.method public final getTop()Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .locals 0

    .line 154
    sget-object p0, Landroidx/compose/foundation/layout/Arrangement;->Top:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    return-object p0
.end method

.method public final placeCenter$foundation_layout_release(I[I[IZ)V
    .locals 4

    .line 738
    array-length p0, p2

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    if-ge v1, p0, :cond_0

    aget v3, p2, v1

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sub-int/2addr p1, v2

    int-to-float p0, p1

    const/4 p1, 0x2

    int-to-float p1, p1

    div-float/2addr p0, p1

    if-nez p4, :cond_1

    .line 743
    array-length p1, p2

    move p4, v0

    :goto_1
    if-ge v0, p1, :cond_2

    aget v1, p2, v0

    add-int/lit8 v2, p4, 0x1

    .line 26
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result v3

    aput v3, p3, p4

    int-to-float p4, v1

    add-float/2addr p0, p4

    add-int/lit8 v0, v0, 0x1

    move p4, v2

    goto :goto_1

    .line 705
    :cond_1
    array-length p1, p2

    add-int/lit8 p1, p1, -0x1

    :goto_2
    const/4 p4, -0x1

    if-ge p4, p1, :cond_2

    .line 706
    aget p4, p2, p1

    .line 26
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result v0

    aput v0, p3, p1

    int-to-float p4, p4

    add-float/2addr p0, p4

    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final placeLeftOrTop$foundation_layout_release([I[IZ)V
    .locals 4

    const/4 p0, 0x0

    if-nez p3, :cond_0

    .line 730
    array-length p3, p1

    move v0, p0

    move v1, v0

    :goto_0
    if-ge p0, p3, :cond_1

    aget v2, p1, p0

    add-int/lit8 v3, v0, 0x1

    .line 623
    aput v1, p2, v0

    add-int/2addr v1, v2

    add-int/lit8 p0, p0, 0x1

    move v0, v3

    goto :goto_0

    .line 705
    :cond_0
    array-length p3, p1

    add-int/lit8 p3, p3, -0x1

    :goto_1
    const/4 v0, -0x1

    if-ge v0, p3, :cond_1

    .line 706
    aget v0, p1, p3

    .line 623
    aput p0, p2, p3

    add-int/2addr p0, v0

    add-int/lit8 p3, p3, -0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final placeRightOrBottom$foundation_layout_release(I[I[IZ)V
    .locals 4

    .line 715
    array-length p0, p2

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    if-ge v1, p0, :cond_0

    aget v3, p2, v1

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sub-int/2addr p1, v2

    if-nez p4, :cond_1

    .line 720
    array-length p0, p2

    move p4, v0

    :goto_1
    if-ge v0, p0, :cond_2

    aget v1, p2, v0

    add-int/lit8 v2, p4, 0x1

    .line 615
    aput p1, p3, p4

    add-int/2addr p1, v1

    add-int/lit8 v0, v0, 0x1

    move p4, v2

    goto :goto_1

    .line 705
    :cond_1
    array-length p0, p2

    add-int/lit8 p0, p0, -0x1

    :goto_2
    const/4 p4, -0x1

    if-ge p4, p0, :cond_2

    .line 706
    aget p4, p2, p0

    .line 615
    aput p1, p3, p0

    add-int/2addr p1, p4

    add-int/lit8 p0, p0, -0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final placeSpaceAround$foundation_layout_release(I[I[IZ)V
    .locals 5

    .line 780
    array-length p0, p2

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    if-ge v1, p0, :cond_0

    aget v3, p2, v1

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 689
    :cond_0
    array-length p0, p2

    const/4 v1, 0x1

    if-nez p0, :cond_1

    move p0, v1

    goto :goto_1

    :cond_1
    move p0, v0

    :goto_1
    if-nez p0, :cond_2

    sub-int/2addr p1, v2

    int-to-float p0, p1

    .line 690
    array-length p1, p2

    int-to-float p1, p1

    div-float/2addr p0, p1

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    :goto_2
    const/4 p1, 0x2

    int-to-float p1, p1

    div-float p1, p0, p1

    if-nez p4, :cond_3

    .line 785
    array-length p4, p2

    move v1, v0

    :goto_3
    if-ge v0, p4, :cond_4

    aget v2, p2, v0

    add-int/lit8 v3, v1, 0x1

    .line 26
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v4

    aput v4, p3, v1

    int-to-float v1, v2

    add-float/2addr v1, p0

    add-float/2addr p1, v1

    add-int/lit8 v0, v0, 0x1

    move v1, v3

    goto :goto_3

    .line 705
    :cond_3
    array-length p4, p2

    sub-int/2addr p4, v1

    :goto_4
    const/4 v0, -0x1

    if-ge v0, p4, :cond_4

    .line 706
    aget v0, p2, p4

    .line 26
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v1

    aput v1, p3, p4

    int-to-float v0, v0

    add-float/2addr v0, p0

    add-float/2addr p1, v0

    add-int/lit8 p4, p4, -0x1

    goto :goto_4

    :cond_4
    return-void
.end method

.method public final placeSpaceBetween$foundation_layout_release(I[I[IZ)V
    .locals 5

    .line 663
    array-length p0, p2

    if-nez p0, :cond_0

    return-void

    .line 766
    :cond_0
    array-length p0, p2

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    if-ge v1, p0, :cond_1

    aget v3, p2, v1

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 666
    :cond_1
    invoke-static {p2}, Lkotlin/collections/ArraysKt;->getLastIndex([I)I

    move-result p0

    const/4 v1, 0x1

    invoke-static {p0, v1}, Ljava/lang/Math;->max(II)I

    move-result p0

    sub-int/2addr p1, v2

    int-to-float p1, p1

    int-to-float p0, p0

    div-float/2addr p1, p0

    if-eqz p4, :cond_2

    .line 670
    array-length p0, p2

    if-ne p0, v1, :cond_2

    move p0, p1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    if-nez p4, :cond_3

    .line 771
    array-length p4, p2

    move v1, v0

    :goto_2
    if-ge v0, p4, :cond_4

    aget v2, p2, v0

    add-int/lit8 v3, v1, 0x1

    .line 26
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result v4

    aput v4, p3, v1

    int-to-float v1, v2

    add-float/2addr v1, p1

    add-float/2addr p0, v1

    add-int/lit8 v0, v0, 0x1

    move v1, v3

    goto :goto_2

    .line 705
    :cond_3
    array-length p4, p2

    sub-int/2addr p4, v1

    :goto_3
    const/4 v0, -0x1

    if-ge v0, p4, :cond_4

    .line 706
    aget v0, p2, p4

    .line 26
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result v1

    aput v1, p3, p4

    int-to-float v0, v0

    add-float/2addr v0, p1

    add-float/2addr p0, v0

    add-int/lit8 p4, p4, -0x1

    goto :goto_3

    :cond_4
    return-void
.end method

.method public final placeSpaceEvenly$foundation_layout_release(I[I[IZ)V
    .locals 5

    .line 752
    array-length p0, p2

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    if-ge v1, p0, :cond_0

    aget v3, p2, v1

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sub-int/2addr p1, v2

    int-to-float p0, p1

    .line 649
    array-length p1, p2

    add-int/lit8 p1, p1, 0x1

    int-to-float p1, p1

    div-float/2addr p0, p1

    if-nez p4, :cond_1

    .line 757
    array-length p1, p2

    move v1, p0

    move p4, v0

    :goto_1
    if-ge v0, p1, :cond_2

    aget v2, p2, v0

    add-int/lit8 v3, p4, 0x1

    .line 26
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v4

    aput v4, p3, p4

    int-to-float p4, v2

    add-float/2addr p4, p0

    add-float/2addr v1, p4

    add-int/lit8 v0, v0, 0x1

    move p4, v3

    goto :goto_1

    .line 705
    :cond_1
    array-length p1, p2

    add-int/lit8 p1, p1, -0x1

    move p4, p0

    :goto_2
    const/4 v0, -0x1

    if-ge v0, p1, :cond_2

    .line 706
    aget v0, p2, p1

    .line 26
    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result v1

    aput v1, p3, p1

    int-to-float v0, v0

    add-float/2addr v0, p0

    add-float/2addr p4, v0

    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final spacedBy-0680j_4(F)Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;
    .locals 3

    .line 297
    new-instance p0, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    sget-object v0, Landroidx/compose/foundation/layout/Arrangement$spacedBy$1;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement$spacedBy$1;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v2, v0, v1}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;-><init>(FZLkotlin/jvm/functions/Function2;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method
