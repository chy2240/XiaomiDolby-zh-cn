.class public abstract Lkotlin/collections/builders/MapBuilder$Itr;
.super Ljava/lang/Object;
.source "MapBuilder.kt"


# instance fields
.field private expectedModCount:I

.field private index:I

.field private lastIndex:I

.field private final map:Lkotlin/collections/builders/MapBuilder;


# direct methods
.method public constructor <init>(Lkotlin/collections/builders/MapBuilder;)V
    .locals 1

    const-string v0, "map"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 495
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 496
    iput-object p1, p0, Lkotlin/collections/builders/MapBuilder$Itr;->map:Lkotlin/collections/builders/MapBuilder;

    const/4 v0, -0x1

    .line 499
    iput v0, p0, Lkotlin/collections/builders/MapBuilder$Itr;->lastIndex:I

    .line 500
    invoke-static {p1}, Lkotlin/collections/builders/MapBuilder;->access$getModCount$p(Lkotlin/collections/builders/MapBuilder;)I

    move-result p1

    iput p1, p0, Lkotlin/collections/builders/MapBuilder$Itr;->expectedModCount:I

    .line 503
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder$Itr;->initNext$kotlin_stdlib()V

    return-void
.end method


# virtual methods
.method public final checkForComodification$kotlin_stdlib()V
    .locals 1

    .line 523
    iget-object v0, p0, Lkotlin/collections/builders/MapBuilder$Itr;->map:Lkotlin/collections/builders/MapBuilder;

    invoke-static {v0}, Lkotlin/collections/builders/MapBuilder;->access$getModCount$p(Lkotlin/collections/builders/MapBuilder;)I

    move-result v0

    iget p0, p0, Lkotlin/collections/builders/MapBuilder$Itr;->expectedModCount:I

    if-ne v0, p0, :cond_0

    return-void

    .line 524
    :cond_0
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0
.end method

.method public final getIndex$kotlin_stdlib()I
    .locals 0

    .line 498
    iget p0, p0, Lkotlin/collections/builders/MapBuilder$Itr;->index:I

    return p0
.end method

.method public final getLastIndex$kotlin_stdlib()I
    .locals 0

    .line 499
    iget p0, p0, Lkotlin/collections/builders/MapBuilder$Itr;->lastIndex:I

    return p0
.end method

.method public final getMap$kotlin_stdlib()Lkotlin/collections/builders/MapBuilder;
    .locals 0

    .line 496
    iget-object p0, p0, Lkotlin/collections/builders/MapBuilder$Itr;->map:Lkotlin/collections/builders/MapBuilder;

    return-object p0
.end method

.method public final hasNext()Z
    .locals 1

    .line 511
    iget v0, p0, Lkotlin/collections/builders/MapBuilder$Itr;->index:I

    iget-object p0, p0, Lkotlin/collections/builders/MapBuilder$Itr;->map:Lkotlin/collections/builders/MapBuilder;

    invoke-static {p0}, Lkotlin/collections/builders/MapBuilder;->access$getLength$p(Lkotlin/collections/builders/MapBuilder;)I

    move-result p0

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final initNext$kotlin_stdlib()V
    .locals 2

    .line 507
    :goto_0
    iget v0, p0, Lkotlin/collections/builders/MapBuilder$Itr;->index:I

    iget-object v1, p0, Lkotlin/collections/builders/MapBuilder$Itr;->map:Lkotlin/collections/builders/MapBuilder;

    invoke-static {v1}, Lkotlin/collections/builders/MapBuilder;->access$getLength$p(Lkotlin/collections/builders/MapBuilder;)I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lkotlin/collections/builders/MapBuilder$Itr;->map:Lkotlin/collections/builders/MapBuilder;

    invoke-static {v0}, Lkotlin/collections/builders/MapBuilder;->access$getPresenceArray$p(Lkotlin/collections/builders/MapBuilder;)[I

    move-result-object v0

    iget v1, p0, Lkotlin/collections/builders/MapBuilder$Itr;->index:I

    aget v0, v0, v1

    if-gez v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 508
    iput v1, p0, Lkotlin/collections/builders/MapBuilder$Itr;->index:I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final remove()V
    .locals 3

    .line 514
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder$Itr;->checkForComodification$kotlin_stdlib()V

    .line 515
    iget v0, p0, Lkotlin/collections/builders/MapBuilder$Itr;->lastIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 516
    iget-object v0, p0, Lkotlin/collections/builders/MapBuilder$Itr;->map:Lkotlin/collections/builders/MapBuilder;

    invoke-virtual {v0}, Lkotlin/collections/builders/MapBuilder;->checkIsMutable$kotlin_stdlib()V

    .line 517
    iget-object v0, p0, Lkotlin/collections/builders/MapBuilder$Itr;->map:Lkotlin/collections/builders/MapBuilder;

    iget v2, p0, Lkotlin/collections/builders/MapBuilder$Itr;->lastIndex:I

    invoke-static {v0, v2}, Lkotlin/collections/builders/MapBuilder;->access$removeKeyAt(Lkotlin/collections/builders/MapBuilder;I)V

    .line 518
    iput v1, p0, Lkotlin/collections/builders/MapBuilder$Itr;->lastIndex:I

    .line 519
    iget-object v0, p0, Lkotlin/collections/builders/MapBuilder$Itr;->map:Lkotlin/collections/builders/MapBuilder;

    invoke-static {v0}, Lkotlin/collections/builders/MapBuilder;->access$getModCount$p(Lkotlin/collections/builders/MapBuilder;)I

    move-result v0

    iput v0, p0, Lkotlin/collections/builders/MapBuilder$Itr;->expectedModCount:I

    return-void

    .line 515
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Call next() before removing element from the iterator."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setIndex$kotlin_stdlib(I)V
    .locals 0

    .line 498
    iput p1, p0, Lkotlin/collections/builders/MapBuilder$Itr;->index:I

    return-void
.end method

.method public final setLastIndex$kotlin_stdlib(I)V
    .locals 0

    .line 499
    iput p1, p0, Lkotlin/collections/builders/MapBuilder$Itr;->lastIndex:I

    return-void
.end method
