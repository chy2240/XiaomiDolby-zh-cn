.class public abstract Landroidx/collection/IntListKt;
.super Ljava/lang/Object;
.source "IntList.kt"


# static fields
.field private static final EmptyIntList:Landroidx/collection/IntList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 878
    new-instance v0, Landroidx/collection/MutableIntList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/collection/MutableIntList;-><init>(I)V

    sput-object v0, Landroidx/collection/IntListKt;->EmptyIntList:Landroidx/collection/IntList;

    return-void
.end method

.method public static final emptyIntList()Landroidx/collection/IntList;
    .locals 1

    .line 881
    sget-object v0, Landroidx/collection/IntListKt;->EmptyIntList:Landroidx/collection/IntList;

    return-object v0
.end method

.method public static final intListOf(I)Landroidx/collection/IntList;
    .locals 0

    .line 887
    invoke-static {p0}, Landroidx/collection/IntListKt;->mutableIntListOf(I)Landroidx/collection/MutableIntList;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs intListOf([I)Landroidx/collection/IntList;
    .locals 2

    const-string v0, "elements"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 901
    new-instance v0, Landroidx/collection/MutableIntList;

    array-length v1, p0

    invoke-direct {v0, v1}, Landroidx/collection/MutableIntList;-><init>(I)V

    .line 671
    iget v1, v0, Landroidx/collection/IntList;->_size:I

    invoke-virtual {v0, v1, p0}, Landroidx/collection/MutableIntList;->addAll(I[I)Z

    return-object v0
.end method

.method public static final mutableIntListOf(I)Landroidx/collection/MutableIntList;
    .locals 2

    .line 908
    new-instance v0, Landroidx/collection/MutableIntList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/collection/MutableIntList;-><init>(I)V

    .line 711
    invoke-virtual {v0, p0}, Landroidx/collection/MutableIntList;->add(I)Z

    return-object v0
.end method
