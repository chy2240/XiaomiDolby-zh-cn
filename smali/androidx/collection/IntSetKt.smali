.class public abstract Landroidx/collection/IntSetKt;
.super Ljava/lang/Object;
.source "IntSet.kt"


# static fields
.field private static final EmptyIntArray:[I

.field private static final EmptyIntSet:Landroidx/collection/MutableIntSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 46
    new-instance v0, Landroidx/collection/MutableIntSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/collection/MutableIntSet;-><init>(I)V

    sput-object v0, Landroidx/collection/IntSetKt;->EmptyIntSet:Landroidx/collection/MutableIntSet;

    .line 49
    new-array v0, v1, [I

    sput-object v0, Landroidx/collection/IntSetKt;->EmptyIntArray:[I

    return-void
.end method

.method public static final getEmptyIntArray()[I
    .locals 1

    .line 49
    sget-object v0, Landroidx/collection/IntSetKt;->EmptyIntArray:[I

    return-object v0
.end method

.method public static final mutableIntSetOf()Landroidx/collection/MutableIntSet;
    .locals 4

    .line 75
    new-instance v0, Landroidx/collection/MutableIntSet;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableIntSet;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
