.class public final Landroidx/window/core/PredicateAdapter;
.super Ljava/lang/Object;
.source "PredicateAdapter.kt"


# instance fields
.field private final loader:Ljava/lang/ClassLoader;


# direct methods
.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 1

    const-string v0, "loader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Landroidx/window/core/PredicateAdapter;->loader:Ljava/lang/ClassLoader;

    return-void
.end method
