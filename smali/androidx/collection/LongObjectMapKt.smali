.class public abstract Landroidx/collection/LongObjectMapKt;
.super Ljava/lang/Object;
.source "LongObjectMap.kt"


# static fields
.field private static final EmptyLongObjectMap:Landroidx/collection/MutableLongObjectMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    new-instance v0, Landroidx/collection/MutableLongObjectMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/collection/MutableLongObjectMap;-><init>(I)V

    sput-object v0, Landroidx/collection/LongObjectMapKt;->EmptyLongObjectMap:Landroidx/collection/MutableLongObjectMap;

    return-void
.end method

.method public static final mutableLongObjectMapOf()Landroidx/collection/MutableLongObjectMap;
    .locals 4

    .line 132
    new-instance v0, Landroidx/collection/MutableLongObjectMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableLongObjectMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
