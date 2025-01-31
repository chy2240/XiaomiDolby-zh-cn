.class public Lcom/google/android/setupdesign/items/ItemGroup;
.super Lcom/google/android/setupdesign/items/AbstractItemHierarchy;
.source "ItemGroup.java"

# interfaces
.implements Lcom/google/android/setupdesign/items/ItemHierarchy$Observer;


# instance fields
.field private final children:Ljava/util/List;

.field private count:I

.field private dirty:Z

.field private final hierarchyStart:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 110
    invoke-direct {p0, p1, p2}, Lcom/google/android/setupdesign/items/AbstractItemHierarchy;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/setupdesign/items/ItemGroup;->children:Ljava/util/List;

    .line 99
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/setupdesign/items/ItemGroup;->hierarchyStart:Landroid/util/SparseIntArray;

    const/4 p1, 0x0

    .line 101
    iput p1, p0, Lcom/google/android/setupdesign/items/ItemGroup;->count:I

    .line 102
    iput-boolean p1, p0, Lcom/google/android/setupdesign/items/ItemGroup;->dirty:Z

    return-void
.end method

.method private getChildPosition(I)I
    .locals 3

    .line 196
    invoke-direct {p0}, Lcom/google/android/setupdesign/items/ItemGroup;->updateDataIfNeeded()V

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    .line 199
    iget-object v1, p0, Lcom/google/android/setupdesign/items/ItemGroup;->children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move v2, v0

    :goto_0
    if-gez v2, :cond_0

    if-ge p1, v1, :cond_0

    .line 203
    iget-object v2, p0, Lcom/google/android/setupdesign/items/ItemGroup;->hierarchyStart:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    if-gez v2, :cond_1

    .line 209
    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/ItemGroup;->getCount()I

    move-result v2

    :cond_1
    return v2

    :cond_2
    return v0
.end method

.method private getChildPosition(Lcom/google/android/setupdesign/items/ItemHierarchy;)I
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/google/android/setupdesign/items/ItemGroup;->children:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/android/setupdesign/items/ItemGroup;->identityIndexOf(Ljava/util/List;Ljava/lang/Object;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/android/setupdesign/items/ItemGroup;->getChildPosition(I)I

    move-result p0

    return p0
.end method

.method private static identityIndexOf(Ljava/util/List;Ljava/lang/Object;)I
    .locals 3

    .line 64
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 66
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private updateDataIfNeeded()V
    .locals 5

    .line 277
    iget-boolean v0, p0, Lcom/google/android/setupdesign/items/ItemGroup;->dirty:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 278
    iput v0, p0, Lcom/google/android/setupdesign/items/ItemGroup;->count:I

    .line 279
    iget-object v1, p0, Lcom/google/android/setupdesign/items/ItemGroup;->hierarchyStart:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    move v1, v0

    .line 280
    :goto_0
    iget-object v2, p0, Lcom/google/android/setupdesign/items/ItemGroup;->children:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 281
    iget-object v2, p0, Lcom/google/android/setupdesign/items/ItemGroup;->children:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/setupdesign/items/ItemHierarchy;

    .line 282
    invoke-interface {v2}, Lcom/google/android/setupdesign/items/ItemHierarchy;->getCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 283
    iget-object v3, p0, Lcom/google/android/setupdesign/items/ItemGroup;->hierarchyStart:Landroid/util/SparseIntArray;

    iget v4, p0, Lcom/google/android/setupdesign/items/ItemGroup;->count:I

    invoke-virtual {v3, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 285
    :cond_0
    iget v3, p0, Lcom/google/android/setupdesign/items/ItemGroup;->count:I

    invoke-interface {v2}, Lcom/google/android/setupdesign/items/ItemHierarchy;->getCount()I

    move-result v2

    add-int/2addr v3, v2

    iput v3, p0, Lcom/google/android/setupdesign/items/ItemGroup;->count:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 287
    :cond_1
    iput-boolean v0, p0, Lcom/google/android/setupdesign/items/ItemGroup;->dirty:Z

    :cond_2
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 0

    .line 166
    invoke-direct {p0}, Lcom/google/android/setupdesign/items/ItemGroup;->updateDataIfNeeded()V

    .line 167
    iget p0, p0, Lcom/google/android/setupdesign/items/ItemGroup;->count:I

    return p0
.end method

.method public onItemRangeChanged(Lcom/google/android/setupdesign/items/ItemHierarchy;II)V
    .locals 1

    .line 219
    invoke-direct {p0, p1}, Lcom/google/android/setupdesign/items/ItemGroup;->getChildPosition(Lcom/google/android/setupdesign/items/ItemHierarchy;)I

    move-result v0

    if-ltz v0, :cond_0

    add-int/2addr v0, p2

    .line 221
    invoke-virtual {p0, v0, p3}, Lcom/google/android/setupdesign/items/AbstractItemHierarchy;->notifyItemRangeChanged(II)V

    goto :goto_0

    .line 223
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unexpected child change "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ItemGroup"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
