.class public final Landroidx/concurrent/futures/ResolvableFuture;
.super Landroidx/concurrent/futures/AbstractResolvableFuture;
.source "ResolvableFuture.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Landroidx/concurrent/futures/AbstractResolvableFuture;-><init>()V

    return-void
.end method

.method public static create()Landroidx/concurrent/futures/ResolvableFuture;
    .locals 1

    .line 46
    new-instance v0, Landroidx/concurrent/futures/ResolvableFuture;

    invoke-direct {v0}, Landroidx/concurrent/futures/ResolvableFuture;-><init>()V

    return-object v0
.end method


# virtual methods
.method public set(Ljava/lang/Object;)Z
    .locals 0

    .line 51
    invoke-super {p0, p1}, Landroidx/concurrent/futures/AbstractResolvableFuture;->set(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
