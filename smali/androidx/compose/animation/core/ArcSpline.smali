.class public final Landroidx/compose/animation/core/ArcSpline;
.super Ljava/lang/Object;
.source "ArcSpline.kt"


# instance fields
.field private final arcs:[[Landroidx/compose/animation/core/ArcSpline$Arc;

.field private final isExtrapolate:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>([I[F[[F)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x1

    .line 41
    iput-boolean v2, v0, Landroidx/compose/animation/core/ArcSpline;->isExtrapolate:Z

    .line 48
    array-length v3, v1

    sub-int/2addr v3, v2

    new-array v4, v3, [[Landroidx/compose/animation/core/ArcSpline$Arc;

    const/4 v5, 0x0

    move v7, v2

    move v8, v7

    move v6, v5

    :goto_0
    if-ge v6, v3, :cond_5

    .line 49
    aget v9, p1, v6

    const/4 v10, 0x3

    const/4 v11, 0x2

    if-eqz v9, :cond_0

    if-eq v9, v2, :cond_3

    if-eq v9, v11, :cond_2

    if-eq v9, v10, :cond_1

    const/4 v10, 0x4

    if-eq v9, v10, :cond_0

    const/4 v10, 0x5

    if-eq v9, v10, :cond_0

    goto :goto_3

    :cond_0
    move v8, v10

    goto :goto_3

    :cond_1
    if-ne v7, v2, :cond_3

    goto :goto_2

    :goto_1
    move v8, v7

    goto :goto_3

    :cond_2
    :goto_2
    move v7, v11

    goto :goto_1

    :cond_3
    move v7, v2

    goto :goto_1

    .line 67
    :goto_3
    aget-object v9, p3, v6

    add-int/lit8 v10, v6, 0x1

    .line 68
    aget-object v20, p3, v10

    .line 69
    aget v21, v1, v6

    .line 70
    aget v22, v1, v10

    .line 72
    array-length v12, v9

    div-int/2addr v12, v11

    array-length v13, v9

    rem-int/2addr v13, v11

    add-int v11, v12, v13

    .line 73
    new-array v15, v11, [Landroidx/compose/animation/core/ArcSpline$Arc;

    move v14, v5

    :goto_4
    if-ge v14, v11, :cond_4

    mul-int/lit8 v12, v14, 0x2

    .line 75
    new-instance v23, Landroidx/compose/animation/core/ArcSpline$Arc;

    .line 79
    aget v16, v9, v12

    add-int/lit8 v13, v12, 0x1

    .line 80
    aget v17, v9, v13

    .line 81
    aget v18, v20, v12

    .line 82
    aget v19, v20, v13

    move-object/from16 v12, v23

    move v13, v8

    move/from16 v24, v14

    move/from16 v14, v21

    move-object/from16 v25, v15

    move/from16 v15, v22

    .line 75
    invoke-direct/range {v12 .. v19}, Landroidx/compose/animation/core/ArcSpline$Arc;-><init>(IFFFFFF)V

    aput-object v23, v25, v24

    add-int/lit8 v14, v24, 0x1

    move-object/from16 v15, v25

    goto :goto_4

    :cond_4
    move-object/from16 v25, v15

    .line 73
    aput-object v25, v4, v6

    move v6, v10

    goto :goto_0

    .line 47
    :cond_5
    iput-object v4, v0, Landroidx/compose/animation/core/ArcSpline;->arcs:[[Landroidx/compose/animation/core/ArcSpline$Arc;

    return-void
.end method
