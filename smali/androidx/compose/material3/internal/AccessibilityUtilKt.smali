.class public abstract Landroidx/compose/material3/internal/AccessibilityUtilKt;
.super Ljava/lang/Object;
.source "AccessibilityUtil.kt"


# static fields
.field private static final HorizontalSemanticsBoundsPadding:F

.field private static final IncreaseHorizontalSemanticsBounds:Landroidx/compose/ui/Modifier;

.field private static final IncreaseVerticalSemanticsBounds:Landroidx/compose/ui/Modifier;

.field private static final VerticalSemanticsBoundsPadding:F


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/16 v0, 0xa

    int-to-float v0, v0

    .line 79
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .line 28
    sput v1, Landroidx/compose/material3/internal/AccessibilityUtilKt;->HorizontalSemanticsBoundsPadding:F

    .line 80
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 29
    sput v0, Landroidx/compose/material3/internal/AccessibilityUtilKt;->VerticalSemanticsBoundsPadding:F

    .line 36
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    sget-object v3, Landroidx/compose/material3/internal/AccessibilityUtilKt$IncreaseHorizontalSemanticsBounds$1;->INSTANCE:Landroidx/compose/material3/internal/AccessibilityUtilKt$IncreaseHorizontalSemanticsBounds$1;

    invoke-static {v2, v3}, Landroidx/compose/ui/layout/LayoutModifierKt;->layout(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    .line 52
    sget-object v4, Landroidx/compose/material3/internal/AccessibilityUtilKt$IncreaseHorizontalSemanticsBounds$2;->INSTANCE:Landroidx/compose/material3/internal/AccessibilityUtilKt$IncreaseHorizontalSemanticsBounds$2;

    const/4 v5, 0x1

    invoke-static {v3, v5, v4}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    .line 53
    invoke-static {v3, v1, v4, v6, v7}, Landroidx/compose/foundation/layout/PaddingKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sput-object v1, Landroidx/compose/material3/internal/AccessibilityUtilKt;->IncreaseHorizontalSemanticsBounds:Landroidx/compose/ui/Modifier;

    .line 60
    sget-object v1, Landroidx/compose/material3/internal/AccessibilityUtilKt$IncreaseVerticalSemanticsBounds$1;->INSTANCE:Landroidx/compose/material3/internal/AccessibilityUtilKt$IncreaseVerticalSemanticsBounds$1;

    invoke-static {v2, v1}, Landroidx/compose/ui/layout/LayoutModifierKt;->layout(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 76
    sget-object v2, Landroidx/compose/material3/internal/AccessibilityUtilKt$IncreaseVerticalSemanticsBounds$2;->INSTANCE:Landroidx/compose/material3/internal/AccessibilityUtilKt$IncreaseVerticalSemanticsBounds$2;

    invoke-static {v1, v5, v2}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 77
    invoke-static {v1, v4, v0, v5, v7}, Landroidx/compose/foundation/layout/PaddingKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sput-object v0, Landroidx/compose/material3/internal/AccessibilityUtilKt;->IncreaseVerticalSemanticsBounds:Landroidx/compose/ui/Modifier;

    return-void
.end method

.method public static final getHorizontalSemanticsBoundsPadding()F
    .locals 1

    .line 28
    sget v0, Landroidx/compose/material3/internal/AccessibilityUtilKt;->HorizontalSemanticsBoundsPadding:F

    return v0
.end method

.method public static final getIncreaseHorizontalSemanticsBounds()Landroidx/compose/ui/Modifier;
    .locals 1

    .line 35
    sget-object v0, Landroidx/compose/material3/internal/AccessibilityUtilKt;->IncreaseHorizontalSemanticsBounds:Landroidx/compose/ui/Modifier;

    return-object v0
.end method

.method public static final getVerticalSemanticsBoundsPadding()F
    .locals 1

    .line 29
    sget v0, Landroidx/compose/material3/internal/AccessibilityUtilKt;->VerticalSemanticsBoundsPadding:F

    return v0
.end method
