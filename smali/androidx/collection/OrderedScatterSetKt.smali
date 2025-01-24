.class public abstract Landroidx/collection/OrderedScatterSetKt;
.super Ljava/lang/Object;
.source "OrderedScatterSet.kt"


# static fields
.field private static final EmptyOrderedScatterSet:Landroidx/collection/MutableOrderedScatterSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    new-instance v0, Landroidx/collection/MutableOrderedScatterSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/collection/MutableOrderedScatterSet;-><init>(I)V

    sput-object v0, Landroidx/collection/OrderedScatterSetKt;->EmptyOrderedScatterSet:Landroidx/collection/MutableOrderedScatterSet;

    return-void
.end method

.method public static final mutableOrderedScatterSetOf()Landroidx/collection/MutableOrderedScatterSet;
    .locals 4

    .line 75
    new-instance v0, Landroidx/collection/MutableOrderedScatterSet;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableOrderedScatterSet;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
