.class final Landroidx/compose/material3/internal/AccessibilityUtilKt$IncreaseHorizontalSemanticsBounds$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AccessibilityUtil.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# static fields
.field public static final INSTANCE:Landroidx/compose/material3/internal/AccessibilityUtilKt$IncreaseHorizontalSemanticsBounds$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Landroidx/compose/material3/internal/AccessibilityUtilKt$IncreaseHorizontalSemanticsBounds$1;

    invoke-direct {v0}, Landroidx/compose/material3/internal/AccessibilityUtilKt$IncreaseHorizontalSemanticsBounds$1;-><init>()V

    sput-object v0, Landroidx/compose/material3/internal/AccessibilityUtilKt$IncreaseHorizontalSemanticsBounds$1;->INSTANCE:Landroidx/compose/material3/internal/AccessibilityUtilKt$IncreaseHorizontalSemanticsBounds$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 0
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 36
    check-cast p1, Landroidx/compose/ui/layout/MeasureScope;

    check-cast p2, Landroidx/compose/ui/layout/Measurable;

    check-cast p3, Landroidx/compose/ui/unit/Constraints;

    invoke-virtual {p3}, Landroidx/compose/ui/unit/Constraints;->unbox-impl()J

    move-result-wide v0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroidx/compose/material3/internal/AccessibilityUtilKt$IncreaseHorizontalSemanticsBounds$1;->invoke-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    return-object p0
.end method

.method public final invoke-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 8

    .line 37
    invoke-static {}, Landroidx/compose/material3/internal/AccessibilityUtilKt;->getHorizontalSemanticsBoundsPadding()F

    move-result p0

    invoke-interface {p1, p0}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result p0

    mul-int/lit8 v0, p0, 0x2

    const/4 v1, 0x0

    .line 43
    invoke-static {p3, p4, v0, v1}, Landroidx/compose/ui/unit/ConstraintsKt;->offset-NN6Ew-U(JII)J

    move-result-wide p3

    .line 44
    invoke-interface {p2, p3, p4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object p2

    .line 48
    invoke-virtual {p2}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v3

    .line 49
    invoke-virtual {p2}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result p3

    sub-int v2, p3, v0

    .line 50
    new-instance v5, Landroidx/compose/material3/internal/AccessibilityUtilKt$IncreaseHorizontalSemanticsBounds$1$1;

    invoke-direct {v5, p2, p0}, Landroidx/compose/material3/internal/AccessibilityUtilKt$IncreaseHorizontalSemanticsBounds$1$1;-><init>(Landroidx/compose/ui/layout/Placeable;I)V

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    return-object p0
.end method
