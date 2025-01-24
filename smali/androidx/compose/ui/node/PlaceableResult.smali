.class final Landroidx/compose/ui/node/PlaceableResult;
.super Ljava/lang/Object;
.source "LookaheadDelegate.kt"

# interfaces
.implements Landroidx/compose/ui/node/OwnerScope;


# instance fields
.field private final placeable:Landroidx/compose/ui/node/LookaheadCapablePlaceable;

.field private final result:Landroidx/compose/ui/layout/MeasureResult;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/layout/MeasureResult;Landroidx/compose/ui/node/LookaheadCapablePlaceable;)V
    .locals 0

    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 327
    iput-object p1, p0, Landroidx/compose/ui/node/PlaceableResult;->result:Landroidx/compose/ui/layout/MeasureResult;

    .line 328
    iput-object p2, p0, Landroidx/compose/ui/node/PlaceableResult;->placeable:Landroidx/compose/ui/node/LookaheadCapablePlaceable;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/node/PlaceableResult;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/compose/ui/node/PlaceableResult;

    iget-object v1, p0, Landroidx/compose/ui/node/PlaceableResult;->result:Landroidx/compose/ui/layout/MeasureResult;

    iget-object v3, p1, Landroidx/compose/ui/node/PlaceableResult;->result:Landroidx/compose/ui/layout/MeasureResult;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Landroidx/compose/ui/node/PlaceableResult;->placeable:Landroidx/compose/ui/node/LookaheadCapablePlaceable;

    iget-object p1, p1, Landroidx/compose/ui/node/PlaceableResult;->placeable:Landroidx/compose/ui/node/LookaheadCapablePlaceable;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getPlaceable()Landroidx/compose/ui/node/LookaheadCapablePlaceable;
    .locals 0

    .line 328
    iget-object p0, p0, Landroidx/compose/ui/node/PlaceableResult;->placeable:Landroidx/compose/ui/node/LookaheadCapablePlaceable;

    return-object p0
.end method

.method public final getResult()Landroidx/compose/ui/layout/MeasureResult;
    .locals 0

    .line 327
    iget-object p0, p0, Landroidx/compose/ui/node/PlaceableResult;->result:Landroidx/compose/ui/layout/MeasureResult;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/ui/node/PlaceableResult;->result:Landroidx/compose/ui/layout/MeasureResult;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Landroidx/compose/ui/node/PlaceableResult;->placeable:Landroidx/compose/ui/node/LookaheadCapablePlaceable;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public isValidOwnerScope()Z
    .locals 0

    .line 331
    iget-object p0, p0, Landroidx/compose/ui/node/PlaceableResult;->placeable:Landroidx/compose/ui/node/LookaheadCapablePlaceable;

    invoke-virtual {p0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->getCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object p0

    invoke-interface {p0}, Landroidx/compose/ui/layout/LayoutCoordinates;->isAttached()Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PlaceableResult(result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/compose/ui/node/PlaceableResult;->result:Landroidx/compose/ui/layout/MeasureResult;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", placeable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/compose/ui/node/PlaceableResult;->placeable:Landroidx/compose/ui/node/LookaheadCapablePlaceable;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
