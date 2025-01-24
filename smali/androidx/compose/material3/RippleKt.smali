.class public abstract Landroidx/compose/material3/RippleKt;
.super Ljava/lang/Object;
.source "Ripple.kt"


# static fields
.field private static final DefaultBoundedRipple:Landroidx/compose/material3/RippleNodeFactory;

.field private static final DefaultUnboundedRipple:Landroidx/compose/material3/RippleNodeFactory;

.field private static final LocalRippleConfiguration:Landroidx/compose/runtime/ProvidableCompositionLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 156
    sget-object v0, Landroidx/compose/material3/RippleKt$LocalRippleConfiguration$1;->INSTANCE:Landroidx/compose/material3/RippleKt$LocalRippleConfiguration$1;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v2, v0, v1, v2}, Landroidx/compose/runtime/CompositionLocalKt;->compositionLocalOf$default(Landroidx/compose/runtime/SnapshotMutationPolicy;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    sput-object v0, Landroidx/compose/material3/RippleKt;->LocalRippleConfiguration:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 313
    new-instance v0, Landroidx/compose/material3/RippleNodeFactory;

    sget-object v7, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/unit/Dp$Companion;->getUnspecified-D9Ej5fM()F

    move-result v3

    sget-object v8, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v2, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroidx/compose/material3/RippleNodeFactory;-><init>(ZFJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/material3/RippleKt;->DefaultBoundedRipple:Landroidx/compose/material3/RippleNodeFactory;

    .line 315
    new-instance v0, Landroidx/compose/material3/RippleNodeFactory;

    invoke-virtual {v7}, Landroidx/compose/ui/unit/Dp$Companion;->getUnspecified-D9Ej5fM()F

    move-result v11

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v12

    const/4 v14, 0x0

    const/4 v10, 0x0

    move-object v9, v0

    invoke-direct/range {v9 .. v14}, Landroidx/compose/material3/RippleNodeFactory;-><init>(ZFJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/material3/RippleKt;->DefaultUnboundedRipple:Landroidx/compose/material3/RippleNodeFactory;

    return-void
.end method

.method public static final getLocalRippleConfiguration()Landroidx/compose/runtime/ProvidableCompositionLocal;
    .locals 1

    .line 155
    sget-object v0, Landroidx/compose/material3/RippleKt;->LocalRippleConfiguration:Landroidx/compose/runtime/ProvidableCompositionLocal;

    return-object v0
.end method

.method public static final ripple-H2RKhps(ZFJ)Landroidx/compose/foundation/IndicationNodeFactory;
    .locals 7

    .line 79
    sget-object v0, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/unit/Dp$Companion;->getUnspecified-D9Ej5fM()F

    move-result v0

    invoke-static {p1, v0}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v0

    invoke-static {p2, p3, v0, v1}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p0, :cond_0

    .line 80
    sget-object p0, Landroidx/compose/material3/RippleKt;->DefaultBoundedRipple:Landroidx/compose/material3/RippleNodeFactory;

    return-object p0

    :cond_0
    sget-object p0, Landroidx/compose/material3/RippleKt;->DefaultUnboundedRipple:Landroidx/compose/material3/RippleNodeFactory;

    goto :goto_0

    .line 82
    :cond_1
    new-instance v6, Landroidx/compose/material3/RippleNodeFactory;

    const/4 v5, 0x0

    move-object v0, v6

    move v1, p0

    move v2, p1

    move-wide v3, p2

    invoke-direct/range {v0 .. v5}, Landroidx/compose/material3/RippleNodeFactory;-><init>(ZFJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object p0, v6

    :goto_0
    return-object p0
.end method

.method public static synthetic ripple-H2RKhps$default(ZFJILjava/lang/Object;)Landroidx/compose/foundation/IndicationNodeFactory;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const/4 p0, 0x1

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    .line 76
    sget-object p1, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/unit/Dp$Companion;->getUnspecified-D9Ej5fM()F

    move-result p1

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    .line 77
    sget-object p2, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {p2}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide p2

    .line 74
    :cond_2
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/material3/RippleKt;->ripple-H2RKhps(ZFJ)Landroidx/compose/foundation/IndicationNodeFactory;

    move-result-object p0

    return-object p0
.end method
