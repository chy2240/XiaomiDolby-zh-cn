.class final Landroidx/compose/foundation/text/selection/SingleSelectionLayout;
.super Ljava/lang/Object;
.source "SelectionLayout.kt"

# interfaces
.implements Landroidx/compose/foundation/text/selection/SelectionLayout;


# static fields
.field public static final Companion:Landroidx/compose/foundation/text/selection/SingleSelectionLayout$Companion;


# instance fields
.field private final endSlot:I

.field private final info:Landroidx/compose/foundation/text/selection/SelectableInfo;

.field private final isStartHandle:Z

.field private final previousSelection:Landroidx/compose/foundation/text/selection/Selection;

.field private final startSlot:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Landroidx/compose/foundation/text/selection/SingleSelectionLayout$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/foundation/text/selection/SingleSelectionLayout$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/foundation/text/selection/SingleSelectionLayout;->Companion:Landroidx/compose/foundation/text/selection/SingleSelectionLayout$Companion;

    return-void
.end method

.method public constructor <init>(ZIILandroidx/compose/foundation/text/selection/Selection;Landroidx/compose/foundation/text/selection/SelectableInfo;)V
    .locals 0

    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 328
    iput-boolean p1, p0, Landroidx/compose/foundation/text/selection/SingleSelectionLayout;->isStartHandle:Z

    .line 329
    iput p2, p0, Landroidx/compose/foundation/text/selection/SingleSelectionLayout;->startSlot:I

    .line 330
    iput p3, p0, Landroidx/compose/foundation/text/selection/SingleSelectionLayout;->endSlot:I

    .line 331
    iput-object p4, p0, Landroidx/compose/foundation/text/selection/SingleSelectionLayout;->previousSelection:Landroidx/compose/foundation/text/selection/Selection;

    .line 332
    iput-object p5, p0, Landroidx/compose/foundation/text/selection/SingleSelectionLayout;->info:Landroidx/compose/foundation/text/selection/SelectableInfo;

    return-void
.end method


# virtual methods
.method public forEachMiddleInfo(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 0
    return-void
.end method

.method public getCrossStatus()Landroidx/compose/foundation/text/selection/CrossStatus;
    .locals 2

    .line 345
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SingleSelectionLayout;->getStartSlot()I

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SingleSelectionLayout;->getEndSlot()I

    move-result v1

    if-ge v0, v1, :cond_0

    sget-object p0, Landroidx/compose/foundation/text/selection/CrossStatus;->NOT_CROSSED:Landroidx/compose/foundation/text/selection/CrossStatus;

    goto :goto_0

    .line 346
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SingleSelectionLayout;->getStartSlot()I

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SingleSelectionLayout;->getEndSlot()I

    move-result v1

    if-le v0, v1, :cond_1

    sget-object p0, Landroidx/compose/foundation/text/selection/CrossStatus;->CROSSED:Landroidx/compose/foundation/text/selection/CrossStatus;

    goto :goto_0

    .line 347
    :cond_1
    iget-object p0, p0, Landroidx/compose/foundation/text/selection/SingleSelectionLayout;->info:Landroidx/compose/foundation/text/selection/SelectableInfo;

    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectableInfo;->getRawCrossStatus()Landroidx/compose/foundation/text/selection/CrossStatus;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getCurrentInfo()Landroidx/compose/foundation/text/selection/SelectableInfo;
    .locals 0

    .line 357
    iget-object p0, p0, Landroidx/compose/foundation/text/selection/SingleSelectionLayout;->info:Landroidx/compose/foundation/text/selection/SelectableInfo;

    return-object p0
.end method

.method public getEndInfo()Landroidx/compose/foundation/text/selection/SelectableInfo;
    .locals 0

    .line 354
    iget-object p0, p0, Landroidx/compose/foundation/text/selection/SingleSelectionLayout;->info:Landroidx/compose/foundation/text/selection/SelectableInfo;

    return-object p0
.end method

.method public getEndSlot()I
    .locals 0

    .line 330
    iget p0, p0, Landroidx/compose/foundation/text/selection/SingleSelectionLayout;->endSlot:I

    return p0
.end method

.method public getFirstInfo()Landroidx/compose/foundation/text/selection/SelectableInfo;
    .locals 0

    .line 360
    iget-object p0, p0, Landroidx/compose/foundation/text/selection/SingleSelectionLayout;->info:Landroidx/compose/foundation/text/selection/SelectableInfo;

    return-object p0
.end method

.method public getPreviousSelection()Landroidx/compose/foundation/text/selection/Selection;
    .locals 0

    .line 331
    iget-object p0, p0, Landroidx/compose/foundation/text/selection/SingleSelectionLayout;->previousSelection:Landroidx/compose/foundation/text/selection/Selection;

    return-object p0
.end method

.method public getSize()I
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public getStartInfo()Landroidx/compose/foundation/text/selection/SelectableInfo;
    .locals 0

    .line 351
    iget-object p0, p0, Landroidx/compose/foundation/text/selection/SingleSelectionLayout;->info:Landroidx/compose/foundation/text/selection/SelectableInfo;

    return-object p0
.end method

.method public getStartSlot()I
    .locals 0

    .line 329
    iget p0, p0, Landroidx/compose/foundation/text/selection/SingleSelectionLayout;->startSlot:I

    return p0
.end method

.method public isStartHandle()Z
    .locals 0

    .line 328
    iget-boolean p0, p0, Landroidx/compose/foundation/text/selection/SingleSelectionLayout;->isStartHandle:Z

    return p0
.end method

.method public shouldRecomputeSelection(Landroidx/compose/foundation/text/selection/SelectionLayout;)Z
    .locals 2

    .line 370
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SingleSelectionLayout;->getPreviousSelection()Landroidx/compose/foundation/text/selection/Selection;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 372
    instance-of v0, p1, Landroidx/compose/foundation/text/selection/SingleSelectionLayout;

    if-eqz v0, :cond_1

    .line 373
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SingleSelectionLayout;->getStartSlot()I

    move-result v0

    invoke-interface {p1}, Landroidx/compose/foundation/text/selection/SelectionLayout;->getStartSlot()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 374
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SingleSelectionLayout;->getEndSlot()I

    move-result v0

    invoke-interface {p1}, Landroidx/compose/foundation/text/selection/SelectionLayout;->getEndSlot()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 375
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SingleSelectionLayout;->isStartHandle()Z

    move-result v0

    invoke-interface {p1}, Landroidx/compose/foundation/text/selection/SelectionLayout;->isStartHandle()Z

    move-result v1

    if-ne v0, v1, :cond_1

    .line 376
    iget-object p0, p0, Landroidx/compose/foundation/text/selection/SingleSelectionLayout;->info:Landroidx/compose/foundation/text/selection/SelectableInfo;

    check-cast p1, Landroidx/compose/foundation/text/selection/SingleSelectionLayout;

    iget-object p1, p1, Landroidx/compose/foundation/text/selection/SingleSelectionLayout;->info:Landroidx/compose/foundation/text/selection/SelectableInfo;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/selection/SelectableInfo;->shouldRecomputeSelection(Landroidx/compose/foundation/text/selection/SelectableInfo;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SingleSelectionLayout(isStartHandle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SingleSelectionLayout;->isStartHandle()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", crossed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SingleSelectionLayout;->getCrossStatus()Landroidx/compose/foundation/text/selection/CrossStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", info=\n\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/compose/foundation/text/selection/SingleSelectionLayout;->info:Landroidx/compose/foundation/text/selection/SelectableInfo;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
