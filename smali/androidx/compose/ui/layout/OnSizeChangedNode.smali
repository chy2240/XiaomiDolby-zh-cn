.class final Landroidx/compose/ui/layout/OnSizeChangedNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "OnRemeasuredModifier.kt"

# interfaces
.implements Landroidx/compose/ui/node/LayoutAwareModifierNode;


# instance fields
.field private onSizeChanged:Lkotlin/jvm/functions/Function1;

.field private previousSize:J

.field private final shouldAutoInvalidate:Z


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 6

    .line 75
    invoke-direct {p0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    .line 74
    iput-object p1, p0, Landroidx/compose/ui/layout/OnSizeChangedNode;->onSizeChanged:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x1

    .line 77
    iput-boolean p1, p0, Landroidx/compose/ui/layout/OnSizeChangedNode;->shouldAutoInvalidate:Z

    const/high16 p1, -0x80000000

    int-to-long v0, p1

    const/16 p1, 0x20

    shl-long v2, v0, p1

    const-wide v4, 0xffffffffL

    and-long/2addr v0, v4

    or-long/2addr v0, v2

    .line 30
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntSize;->constructor-impl(J)J

    move-result-wide v0

    .line 78
    iput-wide v0, p0, Landroidx/compose/ui/layout/OnSizeChangedNode;->previousSize:J

    return-void
.end method


# virtual methods
.method public getShouldAutoInvalidate()Z
    .locals 0

    .line 77
    iget-boolean p0, p0, Landroidx/compose/ui/layout/OnSizeChangedNode;->shouldAutoInvalidate:Z

    return p0
.end method

.method public onRemeasured-ozmzZPI(J)V
    .locals 2

    .line 88
    iget-wide v0, p0, Landroidx/compose/ui/layout/OnSizeChangedNode;->previousSize:J

    invoke-static {v0, v1, p1, p2}, Landroidx/compose/ui/unit/IntSize;->equals-impl0(JJ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    iget-object v0, p0, Landroidx/compose/ui/layout/OnSizeChangedNode;->onSizeChanged:Lkotlin/jvm/functions/Function1;

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntSize;->box-impl(J)Landroidx/compose/ui/unit/IntSize;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iput-wide p1, p0, Landroidx/compose/ui/layout/OnSizeChangedNode;->previousSize:J

    :cond_0
    return-void
.end method

.method public final update(Lkotlin/jvm/functions/Function1;)V
    .locals 6

    .line 81
    iput-object p1, p0, Landroidx/compose/ui/layout/OnSizeChangedNode;->onSizeChanged:Lkotlin/jvm/functions/Function1;

    const/high16 p1, -0x80000000

    int-to-long v0, p1

    const/16 p1, 0x20

    shl-long v2, v0, p1

    const-wide v4, 0xffffffffL

    and-long/2addr v0, v4

    or-long/2addr v0, v2

    .line 30
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntSize;->constructor-impl(J)J

    move-result-wide v0

    .line 84
    iput-wide v0, p0, Landroidx/compose/ui/layout/OnSizeChangedNode;->previousSize:J

    return-void
.end method
