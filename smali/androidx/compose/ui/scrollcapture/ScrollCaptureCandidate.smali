.class final Landroidx/compose/ui/scrollcapture/ScrollCaptureCandidate;
.super Ljava/lang/Object;
.source "ScrollCapture.android.kt"


# instance fields
.field private final coordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

.field private final depth:I

.field private final node:Landroidx/compose/ui/semantics/SemanticsNode;

.field private final viewportBoundsInWindow:Landroidx/compose/ui/unit/IntRect;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/semantics/SemanticsNode;ILandroidx/compose/ui/unit/IntRect;Landroidx/compose/ui/layout/LayoutCoordinates;)V
    .locals 0

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    iput-object p1, p0, Landroidx/compose/ui/scrollcapture/ScrollCaptureCandidate;->node:Landroidx/compose/ui/semantics/SemanticsNode;

    .line 223
    iput p2, p0, Landroidx/compose/ui/scrollcapture/ScrollCaptureCandidate;->depth:I

    .line 224
    iput-object p3, p0, Landroidx/compose/ui/scrollcapture/ScrollCaptureCandidate;->viewportBoundsInWindow:Landroidx/compose/ui/unit/IntRect;

    .line 225
    iput-object p4, p0, Landroidx/compose/ui/scrollcapture/ScrollCaptureCandidate;->coordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    return-void
.end method


# virtual methods
.method public final getCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;
    .locals 0

    .line 225
    iget-object p0, p0, Landroidx/compose/ui/scrollcapture/ScrollCaptureCandidate;->coordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    return-object p0
.end method

.method public final getDepth()I
    .locals 0

    .line 223
    iget p0, p0, Landroidx/compose/ui/scrollcapture/ScrollCaptureCandidate;->depth:I

    return p0
.end method

.method public final getNode()Landroidx/compose/ui/semantics/SemanticsNode;
    .locals 0

    .line 222
    iget-object p0, p0, Landroidx/compose/ui/scrollcapture/ScrollCaptureCandidate;->node:Landroidx/compose/ui/semantics/SemanticsNode;

    return-object p0
.end method

.method public final getViewportBoundsInWindow()Landroidx/compose/ui/unit/IntRect;
    .locals 0

    .line 224
    iget-object p0, p0, Landroidx/compose/ui/scrollcapture/ScrollCaptureCandidate;->viewportBoundsInWindow:Landroidx/compose/ui/unit/IntRect;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScrollCaptureCandidate(node="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/compose/ui/scrollcapture/ScrollCaptureCandidate;->node:Landroidx/compose/ui/semantics/SemanticsNode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", depth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    iget v1, p0, Landroidx/compose/ui/scrollcapture/ScrollCaptureCandidate;->depth:I

    .line 228
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 229
    const-string v1, ", viewportBoundsInWindow="

    .line 228
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    iget-object v1, p0, Landroidx/compose/ui/scrollcapture/ScrollCaptureCandidate;->viewportBoundsInWindow:Landroidx/compose/ui/unit/IntRect;

    .line 228
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 230
    const-string v1, ", coordinates="

    .line 228
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    iget-object p0, p0, Landroidx/compose/ui/scrollcapture/ScrollCaptureCandidate;->coordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 228
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
