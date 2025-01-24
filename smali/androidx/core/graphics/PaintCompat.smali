.class public abstract Landroidx/core/graphics/PaintCompat;
.super Ljava/lang/Object;
.source "PaintCompat.java"


# static fields
.field private static final sRectThreadLocal:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroidx/core/graphics/PaintCompat;->sRectThreadLocal:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public static hasGlyph(Landroid/graphics/Paint;Ljava/lang/String;)Z
    .locals 0

    .line 53
    invoke-static {p0, p1}, Landroidx/core/graphics/PaintCompat$Api23Impl;->hasGlyph(Landroid/graphics/Paint;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static setBlendMode(Landroid/graphics/Paint;Landroidx/core/graphics/BlendModeCompat;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 129
    invoke-static {p1}, Landroidx/core/graphics/BlendModeUtils$Api29Impl;->obtainBlendModeFromCompat(Landroidx/core/graphics/BlendModeCompat;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 130
    :goto_0
    invoke-static {p0, p1}, Landroidx/core/graphics/PaintCompat$Api29Impl;->setBlendMode(Landroid/graphics/Paint;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method
