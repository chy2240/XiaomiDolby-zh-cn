.class public final Landroidx/compose/foundation/text/selection/SelectableInfo;
.super Ljava/lang/Object;
.source "SelectionLayout.kt"


# static fields
.field public static final $stable:I


# instance fields
.field private final rawEndHandleOffset:I

.field private final rawPreviousHandleOffset:I

.field private final rawStartHandleOffset:I

.field private final selectableId:J

.field private final slot:I

.field private final textLayoutResult:Landroidx/compose/ui/text/TextLayoutResult;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    sget v0, Landroidx/compose/ui/text/TextLayoutResult;->$stable:I

    sput v0, Landroidx/compose/foundation/text/selection/SelectableInfo;->$stable:I

    return-void
.end method

.method public constructor <init>(JIIIILandroidx/compose/ui/text/TextLayoutResult;)V
    .locals 0

    .line 631
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 632
    iput-wide p1, p0, Landroidx/compose/foundation/text/selection/SelectableInfo;->selectableId:J

    .line 633
    iput p3, p0, Landroidx/compose/foundation/text/selection/SelectableInfo;->slot:I

    .line 634
    iput p4, p0, Landroidx/compose/foundation/text/selection/SelectableInfo;->rawStartHandleOffset:I

    .line 635
    iput p5, p0, Landroidx/compose/foundation/text/selection/SelectableInfo;->rawEndHandleOffset:I

    .line 636
    iput p6, p0, Landroidx/compose/foundation/text/selection/SelectableInfo;->rawPreviousHandleOffset:I

    .line 637
    iput-object p7, p0, Landroidx/compose/foundation/text/selection/SelectableInfo;->textLayoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    return-void
.end method

.method private final getEndRunDirection()Landroidx/compose/ui/text/style/ResolvedTextDirection;
    .locals 1

    .line 661
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectableInfo;->textLayoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    iget p0, p0, Landroidx/compose/foundation/text/selection/SelectableInfo;->rawEndHandleOffset:I

    invoke-static {v0, p0}, Landroidx/compose/foundation/text/selection/SelectionLayoutKt;->access$getTextDirectionForOffset(Landroidx/compose/ui/text/TextLayoutResult;I)Landroidx/compose/ui/text/style/ResolvedTextDirection;

    move-result-object p0

    return-object p0
.end method

.method private final getStartRunDirection()Landroidx/compose/ui/text/style/ResolvedTextDirection;
    .locals 1

    .line 658
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectableInfo;->textLayoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    iget p0, p0, Landroidx/compose/foundation/text/selection/SelectableInfo;->rawStartHandleOffset:I

    invoke-static {v0, p0}, Landroidx/compose/foundation/text/selection/SelectionLayoutKt;->access$getTextDirectionForOffset(Landroidx/compose/ui/text/TextLayoutResult;I)Landroidx/compose/ui/text/style/ResolvedTextDirection;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final anchorForOffset(I)Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;
    .locals 4

    .line 676
    new-instance v0, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 677
    iget-object v1, p0, Landroidx/compose/foundation/text/selection/SelectableInfo;->textLayoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    invoke-static {v1, p1}, Landroidx/compose/foundation/text/selection/SelectionLayoutKt;->access$getTextDirectionForOffset(Landroidx/compose/ui/text/TextLayoutResult;I)Landroidx/compose/ui/text/style/ResolvedTextDirection;

    move-result-object v1

    .line 679
    iget-wide v2, p0, Landroidx/compose/foundation/text/selection/SelectableInfo;->selectableId:J

    .line 676
    invoke-direct {v0, v1, p1, v2, v3}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;-><init>(Landroidx/compose/ui/text/style/ResolvedTextDirection;IJ)V

    return-object v0
.end method

.method public final getInputText()Ljava/lang/String;
    .locals 0

    .line 642
    iget-object p0, p0, Landroidx/compose/foundation/text/selection/SelectableInfo;->textLayoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    invoke-virtual {p0}, Landroidx/compose/ui/text/TextLayoutResult;->getLayoutInput()Landroidx/compose/ui/text/TextLayoutInput;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/ui/text/TextLayoutInput;->getText()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/ui/text/AnnotatedString;->getText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getRawCrossStatus()Landroidx/compose/foundation/text/selection/CrossStatus;
    .locals 1

    .line 652
    iget v0, p0, Landroidx/compose/foundation/text/selection/SelectableInfo;->rawStartHandleOffset:I

    iget p0, p0, Landroidx/compose/foundation/text/selection/SelectableInfo;->rawEndHandleOffset:I

    if-ge v0, p0, :cond_0

    sget-object p0, Landroidx/compose/foundation/text/selection/CrossStatus;->NOT_CROSSED:Landroidx/compose/foundation/text/selection/CrossStatus;

    goto :goto_0

    :cond_0
    if-le v0, p0, :cond_1

    .line 653
    sget-object p0, Landroidx/compose/foundation/text/selection/CrossStatus;->CROSSED:Landroidx/compose/foundation/text/selection/CrossStatus;

    goto :goto_0

    .line 654
    :cond_1
    sget-object p0, Landroidx/compose/foundation/text/selection/CrossStatus;->COLLAPSED:Landroidx/compose/foundation/text/selection/CrossStatus;

    :goto_0
    return-object p0
.end method

.method public final getRawEndHandleOffset()I
    .locals 0

    .line 635
    iget p0, p0, Landroidx/compose/foundation/text/selection/SelectableInfo;->rawEndHandleOffset:I

    return p0
.end method

.method public final getRawPreviousHandleOffset()I
    .locals 0

    .line 636
    iget p0, p0, Landroidx/compose/foundation/text/selection/SelectableInfo;->rawPreviousHandleOffset:I

    return p0
.end method

.method public final getRawStartHandleOffset()I
    .locals 0

    .line 634
    iget p0, p0, Landroidx/compose/foundation/text/selection/SelectableInfo;->rawStartHandleOffset:I

    return p0
.end method

.method public final getSelectableId()J
    .locals 2

    .line 632
    iget-wide v0, p0, Landroidx/compose/foundation/text/selection/SelectableInfo;->selectableId:J

    return-wide v0
.end method

.method public final getSlot()I
    .locals 0

    .line 633
    iget p0, p0, Landroidx/compose/foundation/text/selection/SelectableInfo;->slot:I

    return p0
.end method

.method public final getTextLayoutResult()Landroidx/compose/ui/text/TextLayoutResult;
    .locals 0

    .line 637
    iget-object p0, p0, Landroidx/compose/foundation/text/selection/SelectableInfo;->textLayoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    return-object p0
.end method

.method public final getTextLength()I
    .locals 0

    .line 646
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectableInfo;->getInputText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    return p0
.end method

.method public final shouldRecomputeSelection(Landroidx/compose/foundation/text/selection/SelectableInfo;)Z
    .locals 4

    .line 670
    iget-wide v0, p0, Landroidx/compose/foundation/text/selection/SelectableInfo;->selectableId:J

    iget-wide v2, p1, Landroidx/compose/foundation/text/selection/SelectableInfo;->selectableId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 671
    iget v0, p0, Landroidx/compose/foundation/text/selection/SelectableInfo;->rawStartHandleOffset:I

    iget v1, p1, Landroidx/compose/foundation/text/selection/SelectableInfo;->rawStartHandleOffset:I

    if-ne v0, v1, :cond_1

    .line 672
    iget p0, p0, Landroidx/compose/foundation/text/selection/SelectableInfo;->rawEndHandleOffset:I

    iget p1, p1, Landroidx/compose/foundation/text/selection/SelectableInfo;->rawEndHandleOffset:I

    if-eq p0, p1, :cond_0

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
    .locals 3

    .line 694
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SelectionInfo(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/compose/foundation/text/selection/SelectableInfo;->selectableId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", range=("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 695
    iget v1, p0, Landroidx/compose/foundation/text/selection/SelectableInfo;->rawStartHandleOffset:I

    .line 694
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 695
    invoke-direct {p0}, Landroidx/compose/foundation/text/selection/SelectableInfo;->getStartRunDirection()Landroidx/compose/ui/text/style/ResolvedTextDirection;

    move-result-object v2

    .line 694
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 695
    iget v2, p0, Landroidx/compose/foundation/text/selection/SelectableInfo;->rawEndHandleOffset:I

    .line 694
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 695
    invoke-direct {p0}, Landroidx/compose/foundation/text/selection/SelectableInfo;->getEndRunDirection()Landroidx/compose/ui/text/style/ResolvedTextDirection;

    move-result-object v1

    .line 694
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 695
    const-string v1, "), prevOffset="

    .line 694
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 696
    iget p0, p0, Landroidx/compose/foundation/text/selection/SelectableInfo;->rawPreviousHandleOffset:I

    .line 694
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
