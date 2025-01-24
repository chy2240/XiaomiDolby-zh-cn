.class public abstract Landroidx/collection/SieveCacheKt;
.super Ljava/lang/Object;
.source "SieveCache.kt"


# static fields
.field private static final EmptyNodes:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 38
    new-array v0, v0, [J

    sput-object v0, Landroidx/collection/SieveCacheKt;->EmptyNodes:[J

    return-void
.end method

.method public static final getEmptyNodes()[J
    .locals 1

    .line 38
    sget-object v0, Landroidx/collection/SieveCacheKt;->EmptyNodes:[J

    return-object v0
.end method
