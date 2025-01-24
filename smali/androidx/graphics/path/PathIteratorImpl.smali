.class public abstract Landroidx/graphics/path/PathIteratorImpl;
.super Ljava/lang/Object;
.source "PathIteratorImpl.kt"


# static fields
.field private static final Companion:Landroidx/graphics/path/PathIteratorImpl$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/graphics/path/PathIteratorImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/graphics/path/PathIteratorImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/graphics/path/PathIteratorImpl;->Companion:Landroidx/graphics/path/PathIteratorImpl$Companion;

    .line 48
    const-string v0, "androidx.graphics.path"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method
