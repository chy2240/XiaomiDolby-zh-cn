.class final Landroidx/compose/runtime/SourceInformationGroupIterator;
.super Ljava/lang/Object;
.source "SlotTable.kt"

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# instance fields
.field private final group:Landroidx/compose/runtime/GroupSourceInformation;

.field private index:I

.field private final parent:I

.field private final path:Landroidx/compose/runtime/SourceInformationGroupPath;

.field private final table:Landroidx/compose/runtime/SlotTable;

.field private final version:I


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/SlotTable;ILandroidx/compose/runtime/GroupSourceInformation;Landroidx/compose/runtime/SourceInformationGroupPath;)V
    .locals 0

    .line 3506
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3507
    iput-object p1, p0, Landroidx/compose/runtime/SourceInformationGroupIterator;->table:Landroidx/compose/runtime/SlotTable;

    .line 3508
    iput p2, p0, Landroidx/compose/runtime/SourceInformationGroupIterator;->parent:I

    .line 3510
    iput-object p4, p0, Landroidx/compose/runtime/SourceInformationGroupIterator;->path:Landroidx/compose/runtime/SourceInformationGroupPath;

    .line 3512
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotTable;->getVersion$runtime_release()I

    move-result p1

    iput p1, p0, Landroidx/compose/runtime/SourceInformationGroupIterator;->version:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 3515
    iget-object v0, p0, Landroidx/compose/runtime/SourceInformationGroupIterator;->group:Landroidx/compose/runtime/GroupSourceInformation;

    invoke-virtual {v0}, Landroidx/compose/runtime/GroupSourceInformation;->getGroups()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget p0, p0, Landroidx/compose/runtime/SourceInformationGroupIterator;->index:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p0, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public next()Landroidx/compose/runtime/tooling/CompositionGroup;
    .locals 6

    .line 3518
    iget-object v0, p0, Landroidx/compose/runtime/SourceInformationGroupIterator;->group:Landroidx/compose/runtime/GroupSourceInformation;

    invoke-virtual {v0}, Landroidx/compose/runtime/GroupSourceInformation;->getGroups()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Landroidx/compose/runtime/SourceInformationGroupIterator;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/compose/runtime/SourceInformationGroupIterator;->index:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3519
    :goto_0
    instance-of v1, v0, Landroidx/compose/runtime/Anchor;

    if-eqz v1, :cond_1

    new-instance v1, Landroidx/compose/runtime/SlotTableGroup;

    iget-object v2, p0, Landroidx/compose/runtime/SourceInformationGroupIterator;->table:Landroidx/compose/runtime/SlotTable;

    check-cast v0, Landroidx/compose/runtime/Anchor;

    invoke-virtual {v0}, Landroidx/compose/runtime/Anchor;->getLocation$runtime_release()I

    move-result v0

    iget p0, p0, Landroidx/compose/runtime/SourceInformationGroupIterator;->version:I

    invoke-direct {v1, v2, v0, p0}, Landroidx/compose/runtime/SlotTableGroup;-><init>(Landroidx/compose/runtime/SlotTable;II)V

    goto :goto_1

    .line 3520
    :cond_1
    instance-of v1, v0, Landroidx/compose/runtime/GroupSourceInformation;

    if-eqz v1, :cond_2

    .line 3521
    new-instance v1, Landroidx/compose/runtime/SourceInformationSlotTableGroup;

    .line 3522
    iget-object v2, p0, Landroidx/compose/runtime/SourceInformationGroupIterator;->table:Landroidx/compose/runtime/SlotTable;

    .line 3523
    iget v3, p0, Landroidx/compose/runtime/SourceInformationGroupIterator;->parent:I

    .line 3524
    check-cast v0, Landroidx/compose/runtime/GroupSourceInformation;

    .line 3525
    new-instance v4, Landroidx/compose/runtime/RelativeGroupPath;

    iget-object v5, p0, Landroidx/compose/runtime/SourceInformationGroupIterator;->path:Landroidx/compose/runtime/SourceInformationGroupPath;

    iget p0, p0, Landroidx/compose/runtime/SourceInformationGroupIterator;->index:I

    add-int/lit8 p0, p0, -0x1

    invoke-direct {v4, v5, p0}, Landroidx/compose/runtime/RelativeGroupPath;-><init>(Landroidx/compose/runtime/SourceInformationGroupPath;I)V

    .line 3521
    invoke-direct {v1, v2, v3, v0, v4}, Landroidx/compose/runtime/SourceInformationSlotTableGroup;-><init>(Landroidx/compose/runtime/SlotTable;ILandroidx/compose/runtime/GroupSourceInformation;Landroidx/compose/runtime/SourceInformationGroupPath;)V

    :goto_1
    return-object v1

    .line 3527
    :cond_2
    const-string p0, "Unexpected group information structure"

    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    .line 3506
    invoke-virtual {p0}, Landroidx/compose/runtime/SourceInformationGroupIterator;->next()Landroidx/compose/runtime/tooling/CompositionGroup;

    move-result-object p0

    return-object p0
.end method

.method public remove()V
    .locals 1

    .line 0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
