.class final Landroidx/compose/material3/MotionSchemeKt$LocalMotionScheme$1;
.super Lkotlin/jvm/internal/Lambda;
.source "MotionScheme.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# static fields
.field public static final INSTANCE:Landroidx/compose/material3/MotionSchemeKt$LocalMotionScheme$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Landroidx/compose/material3/MotionSchemeKt$LocalMotionScheme$1;

    invoke-direct {v0}, Landroidx/compose/material3/MotionSchemeKt$LocalMotionScheme$1;-><init>()V

    sput-object v0, Landroidx/compose/material3/MotionSchemeKt$LocalMotionScheme$1;->INSTANCE:Landroidx/compose/material3/MotionSchemeKt$LocalMotionScheme$1;

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
.method public final invoke()Landroidx/compose/material3/MotionScheme;
    .locals 0

    .line 327
    invoke-static {}, Landroidx/compose/material3/MotionSchemeKt;->standardMotionScheme()Landroidx/compose/material3/MotionScheme;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 327
    invoke-virtual {p0}, Landroidx/compose/material3/MotionSchemeKt$LocalMotionScheme$1;->invoke()Landroidx/compose/material3/MotionScheme;

    move-result-object p0

    return-object p0
.end method
