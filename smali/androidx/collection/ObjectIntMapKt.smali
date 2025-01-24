.class public abstract Landroidx/collection/ObjectIntMapKt;
.super Ljava/lang/Object;
.source "ObjectIntMap.kt"


# static fields
.field private static final EmptyObjectIntMap:Landroidx/collection/MutableObjectIntMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    new-instance v0, Landroidx/collection/MutableObjectIntMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/collection/MutableObjectIntMap;-><init>(I)V

    sput-object v0, Landroidx/collection/ObjectIntMapKt;->EmptyObjectIntMap:Landroidx/collection/MutableObjectIntMap;

    return-void
.end method

.method public static final emptyObjectIntMap()Landroidx/collection/ObjectIntMap;
    .locals 2

    .line 44
    sget-object v0, Landroidx/collection/ObjectIntMapKt;->EmptyObjectIntMap:Landroidx/collection/MutableObjectIntMap;

    const-string v1, "null cannot be cast to non-null type androidx.collection.ObjectIntMap<K of androidx.collection.ObjectIntMapKt.emptyObjectIntMap>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final mutableObjectIntMapOf()Landroidx/collection/MutableObjectIntMap;
    .locals 4

    .line 133
    new-instance v0, Landroidx/collection/MutableObjectIntMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableObjectIntMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
