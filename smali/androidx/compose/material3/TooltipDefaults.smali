.class public final Landroidx/compose/material3/TooltipDefaults;
.super Ljava/lang/Object;
.source "Tooltip.kt"


# static fields
.field public static final $stable:I

.field public static final INSTANCE:Landroidx/compose/material3/TooltipDefaults;

.field private static final caretSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/material3/TooltipDefaults;

    invoke-direct {v0}, Landroidx/compose/material3/TooltipDefaults;-><init>()V

    sput-object v0, Landroidx/compose/material3/TooltipDefaults;->INSTANCE:Landroidx/compose/material3/TooltipDefaults;

    const/16 v0, 0x10

    int-to-float v0, v0

    .line 634
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    const/16 v1, 0x8

    int-to-float v1, v1

    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .line 252
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/DpKt;->DpSize-YgX7TsA(FF)J

    move-result-wide v0

    sput-wide v0, Landroidx/compose/material3/TooltipDefaults;->caretSize:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final rememberPlainTooltipPositionProvider-kHDZbjc(FLandroidx/compose/runtime/Composer;II)Landroidx/compose/ui/window/PopupPositionProvider;
    .locals 1

    and-int/lit8 p0, p4, 0x1

    if-eqz p0, :cond_0

    .line 298
    invoke-static {}, Landroidx/compose/material3/TooltipKt;->getSpacingBetweenTooltipAndAnchor()F

    move-result p1

    :cond_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, -0x1

    const-string p4, "androidx.compose.material3.TooltipDefaults.rememberPlainTooltipPositionProvider (Tooltip.kt:298)"

    const v0, 0x3e752e1d

    .line 299
    invoke-static {v0, p3, p0, p4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 301
    :cond_1
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object p0

    .line 75
    invoke-interface {p2, p0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object p0

    .line 301
    check-cast p0, Landroidx/compose/ui/unit/Density;

    invoke-interface {p0, p1}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result p0

    .line 302
    invoke-interface {p2, p0}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result p1

    .line 1166
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object p3

    if-nez p1, :cond_2

    .line 1167
    sget-object p1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p1

    if-ne p3, p1, :cond_3

    .line 303
    :cond_2
    new-instance p3, Landroidx/compose/material3/TooltipDefaults$rememberPlainTooltipPositionProvider$1$1;

    invoke-direct {p3, p0}, Landroidx/compose/material3/TooltipDefaults$rememberPlainTooltipPositionProvider$1$1;-><init>(I)V

    .line 1169
    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 302
    :cond_3
    check-cast p3, Landroidx/compose/material3/TooltipDefaults$rememberPlainTooltipPositionProvider$1$1;

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_4
    return-object p3
.end method
