.class public final Landroidx/collection/MutableObjectList;
.super Landroidx/collection/ObjectList;
.source "ObjectList.kt"


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 614
    invoke-direct {p0, p1, v0}, Landroidx/collection/ObjectList;-><init>(ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/16 p1, 0x10

    .line 614
    :cond_0
    invoke-direct {p0, p1}, Landroidx/collection/MutableObjectList;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .locals 3

    .line 628
    iget v0, p0, Landroidx/collection/ObjectList;->_size:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroidx/collection/MutableObjectList;->ensureCapacity(I)V

    .line 629
    iget-object v0, p0, Landroidx/collection/ObjectList;->content:[Ljava/lang/Object;

    iget v2, p0, Landroidx/collection/ObjectList;->_size:I

    aput-object p1, v0, v2

    add-int/2addr v2, v1

    .line 630
    iput v2, p0, Landroidx/collection/ObjectList;->_size:I

    return v1
.end method

.method public final clear()V
    .locals 4

    .line 871
    iget-object v0, p0, Landroidx/collection/ObjectList;->content:[Ljava/lang/Object;

    iget v1, p0, Landroidx/collection/ObjectList;->_size:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Lkotlin/collections/ArraysKt;->fill([Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 872
    iput v3, p0, Landroidx/collection/ObjectList;->_size:I

    return-void
.end method

.method public final ensureCapacity(I)V
    .locals 2

    .line 894
    iget-object v0, p0, Landroidx/collection/ObjectList;->content:[Ljava/lang/Object;

    .line 895
    array-length v1, v0

    if-ge v1, p1, :cond_0

    .line 896
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 897
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v0, "copyOf(this, newSize)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/collection/ObjectList;->content:[Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final removeAt(I)Ljava/lang/Object;
    .locals 4

    if-ltz p1, :cond_0

    .line 1040
    iget v0, p0, Landroidx/collection/ObjectList;->_size:I

    if-ge p1, v0, :cond_0

    goto :goto_0

    .line 1041
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " must be in 0.."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    iget v1, p0, Landroidx/collection/ObjectList;->_size:I

    add-int/lit8 v1, v1, -0x1

    .line 1041
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/collection/internal/RuntimeHelpersKt;->throwIndexOutOfBoundsException(Ljava/lang/String;)V

    .line 1043
    :goto_0
    iget-object v0, p0, Landroidx/collection/ObjectList;->content:[Ljava/lang/Object;

    .line 1044
    aget-object v1, v0, p1

    .line 79
    iget v2, p0, Landroidx/collection/ObjectList;->_size:I

    add-int/lit8 v3, v2, -0x1

    if-eq p1, v3, :cond_1

    add-int/lit8 v3, p1, 0x1

    .line 1046
    invoke-static {v0, v0, p1, v3, v2}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 1053
    :cond_1
    iget p1, p0, Landroidx/collection/ObjectList;->_size:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroidx/collection/ObjectList;->_size:I

    const/4 p0, 0x0

    .line 1054
    aput-object p0, v0, p1

    return-object v1
.end method
