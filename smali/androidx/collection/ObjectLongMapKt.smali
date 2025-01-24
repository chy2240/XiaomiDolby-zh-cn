.class public abstract Landroidx/collection/ObjectLongMapKt;
.super Ljava/lang/Object;
.source "ObjectLongMap.kt"


# static fields
.field private static final EmptyObjectLongMap:Landroidx/collection/MutableObjectLongMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    new-instance v0, Landroidx/collection/MutableObjectLongMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/collection/MutableObjectLongMap;-><init>(I)V

    sput-object v0, Landroidx/collection/ObjectLongMapKt;->EmptyObjectLongMap:Landroidx/collection/MutableObjectLongMap;

    return-void
.end method

.method public static final mutableObjectLongMapOf()Landroidx/collection/MutableObjectLongMap;
    .locals 4

    .line 133
    new-instance v0, Landroidx/collection/MutableObjectLongMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableObjectLongMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
