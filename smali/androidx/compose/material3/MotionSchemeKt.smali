.class public abstract Landroidx/compose/material3/MotionSchemeKt;
.super Ljava/lang/Object;
.source "MotionScheme.kt"


# static fields
.field private static final LocalMotionScheme:Landroidx/compose/runtime/ProvidableCompositionLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 327
    sget-object v0, Landroidx/compose/material3/MotionSchemeKt$LocalMotionScheme$1;->INSTANCE:Landroidx/compose/material3/MotionSchemeKt$LocalMotionScheme$1;

    invoke-static {v0}, Landroidx/compose/runtime/CompositionLocalKt;->staticCompositionLocalOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    sput-object v0, Landroidx/compose/material3/MotionSchemeKt;->LocalMotionScheme:Landroidx/compose/runtime/ProvidableCompositionLocal;

    return-void
.end method

.method public static final getLocalMotionScheme()Landroidx/compose/runtime/ProvidableCompositionLocal;
    .locals 1

    .line 327
    sget-object v0, Landroidx/compose/material3/MotionSchemeKt;->LocalMotionScheme:Landroidx/compose/runtime/ProvidableCompositionLocal;

    return-object v0
.end method

.method public static final standardMotionScheme()Landroidx/compose/material3/MotionScheme;
    .locals 1

    .line 227
    new-instance v0, Landroidx/compose/material3/MotionSchemeKt$standardMotionScheme$1;

    invoke-direct {v0}, Landroidx/compose/material3/MotionSchemeKt$standardMotionScheme$1;-><init>()V

    return-object v0
.end method
