.class final Landroidx/compose/material3/RippleKt$LocalRippleConfiguration$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Ripple.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# static fields
.field public static final INSTANCE:Landroidx/compose/material3/RippleKt$LocalRippleConfiguration$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Landroidx/compose/material3/RippleKt$LocalRippleConfiguration$1;

    invoke-direct {v0}, Landroidx/compose/material3/RippleKt$LocalRippleConfiguration$1;-><init>()V

    sput-object v0, Landroidx/compose/material3/RippleKt$LocalRippleConfiguration$1;->INSTANCE:Landroidx/compose/material3/RippleKt$LocalRippleConfiguration$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroidx/compose/material3/RippleConfiguration;
    .locals 6

    .line 157
    new-instance p0, Landroidx/compose/material3/RippleConfiguration;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroidx/compose/material3/RippleConfiguration;-><init>(JLandroidx/compose/material/ripple/RippleAlpha;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 156
    invoke-virtual {p0}, Landroidx/compose/material3/RippleKt$LocalRippleConfiguration$1;->invoke()Landroidx/compose/material3/RippleConfiguration;

    move-result-object p0

    return-object p0
.end method
