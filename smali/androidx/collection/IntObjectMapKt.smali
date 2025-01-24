.class public abstract Landroidx/collection/IntObjectMapKt;
.super Ljava/lang/Object;
.source "IntObjectMap.kt"


# static fields
.field private static final EmptyIntObjectMap:Landroidx/collection/MutableIntObjectMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    new-instance v0, Landroidx/collection/MutableIntObjectMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/collection/MutableIntObjectMap;-><init>(I)V

    sput-object v0, Landroidx/collection/IntObjectMapKt;->EmptyIntObjectMap:Landroidx/collection/MutableIntObjectMap;

    return-void
.end method

.method public static final emptyIntObjectMap()Landroidx/collection/IntObjectMap;
    .locals 2

    .line 43
    sget-object v0, Landroidx/collection/IntObjectMapKt;->EmptyIntObjectMap:Landroidx/collection/MutableIntObjectMap;

    const-string v1, "null cannot be cast to non-null type androidx.collection.IntObjectMap<V of androidx.collection.IntObjectMapKt.emptyIntObjectMap>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final intObjectMapOf()Landroidx/collection/IntObjectMap;
    .locals 2

    .line 47
    sget-object v0, Landroidx/collection/IntObjectMapKt;->EmptyIntObjectMap:Landroidx/collection/MutableIntObjectMap;

    const-string v1, "null cannot be cast to non-null type androidx.collection.IntObjectMap<V of androidx.collection.IntObjectMapKt.intObjectMapOf>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final mutableIntObjectMapOf()Landroidx/collection/MutableIntObjectMap;
    .locals 4

    .line 132
    new-instance v0, Landroidx/collection/MutableIntObjectMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableIntObjectMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public static final mutableIntObjectMapOf(ILjava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;)Landroidx/collection/MutableIntObjectMap;
    .locals 4

    .line 165
    new-instance v0, Landroidx/collection/MutableIntObjectMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableIntObjectMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 166
    invoke-virtual {v0, p0, p1}, Landroidx/collection/MutableIntObjectMap;->set(ILjava/lang/Object;)V

    .line 167
    invoke-virtual {v0, p2, p3}, Landroidx/collection/MutableIntObjectMap;->set(ILjava/lang/Object;)V

    .line 168
    invoke-virtual {v0, p4, p5}, Landroidx/collection/MutableIntObjectMap;->set(ILjava/lang/Object;)V

    return-object v0
.end method
