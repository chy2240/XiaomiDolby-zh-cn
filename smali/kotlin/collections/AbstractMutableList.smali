.class public abstract Lkotlin/collections/AbstractMutableList;
.super Ljava/util/AbstractList;
.source "AbstractMutableList.kt"

# interfaces
.implements Ljava/util/List;
.implements Lkotlin/jvm/internal/markers/KMutableList;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getSize()I
.end method

.method public final bridge remove(I)Ljava/lang/Object;
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lkotlin/collections/AbstractMutableList;->removeAt(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public abstract removeAt(I)Ljava/lang/Object;
.end method

.method public final bridge size()I
    .locals 0

    .line 15
    invoke-virtual {p0}, Lkotlin/collections/AbstractMutableList;->getSize()I

    move-result p0

    return p0
.end method
