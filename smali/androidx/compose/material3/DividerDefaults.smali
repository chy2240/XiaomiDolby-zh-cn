.class public final Landroidx/compose/material3/DividerDefaults;
.super Ljava/lang/Object;
.source "Divider.kt"


# static fields
.field public static final INSTANCE:Landroidx/compose/material3/DividerDefaults;

.field private static final Thickness:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/material3/DividerDefaults;

    invoke-direct {v0}, Landroidx/compose/material3/DividerDefaults;-><init>()V

    sput-object v0, Landroidx/compose/material3/DividerDefaults;->INSTANCE:Landroidx/compose/material3/DividerDefaults;

    .line 115
    sget-object v0, Landroidx/compose/material3/tokens/DividerTokens;->INSTANCE:Landroidx/compose/material3/tokens/DividerTokens;

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/DividerTokens;->getThickness-D9Ej5fM()F

    move-result v0

    sput v0, Landroidx/compose/material3/DividerDefaults;->Thickness:F

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getColor(Landroidx/compose/runtime/Composer;I)J
    .locals 2

    .line 119
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, -0x1

    const-string v0, "androidx.compose.material3.DividerDefaults.<get-color> (Divider.kt:118)"

    const v1, 0x49df631

    invoke-static {v1, p2, p0, v0}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    sget-object p0, Landroidx/compose/material3/tokens/DividerTokens;->INSTANCE:Landroidx/compose/material3/tokens/DividerTokens;

    invoke-virtual {p0}, Landroidx/compose/material3/tokens/DividerTokens;->getColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object p0

    const/4 p2, 0x6

    invoke-static {p0, p1, p2}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;I)J

    move-result-wide p0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_1
    return-wide p0
.end method

.method public final getThickness-D9Ej5fM()F
    .locals 0

    .line 115
    sget p0, Landroidx/compose/material3/DividerDefaults;->Thickness:F

    return p0
.end method
