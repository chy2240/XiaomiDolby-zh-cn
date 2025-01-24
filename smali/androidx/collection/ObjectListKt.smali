.class public abstract Landroidx/collection/ObjectListKt;
.super Ljava/lang/Object;
.source "ObjectList.kt"


# static fields
.field private static final EmptyArray:[Ljava/lang/Object;

.field private static final EmptyObjectList:Landroidx/collection/ObjectList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    .line 1472
    new-array v1, v0, [Ljava/lang/Object;

    sput-object v1, Landroidx/collection/ObjectListKt;->EmptyArray:[Ljava/lang/Object;

    .line 1474
    new-instance v1, Landroidx/collection/MutableObjectList;

    invoke-direct {v1, v0}, Landroidx/collection/MutableObjectList;-><init>(I)V

    sput-object v1, Landroidx/collection/ObjectListKt;->EmptyObjectList:Landroidx/collection/ObjectList;

    return-void
.end method

.method public static final synthetic access$getEmptyArray$p()[Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Landroidx/collection/ObjectListKt;->EmptyArray:[Ljava/lang/Object;

    return-object v0
.end method

.method public static final mutableObjectListOf(Ljava/lang/Object;)Landroidx/collection/MutableObjectList;
    .locals 2

    .line 1505
    new-instance v0, Landroidx/collection/MutableObjectList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/collection/MutableObjectList;-><init>(I)V

    .line 903
    invoke-virtual {v0, p0}, Landroidx/collection/MutableObjectList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
