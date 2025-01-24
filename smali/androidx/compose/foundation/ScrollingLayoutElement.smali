.class public final Landroidx/compose/foundation/ScrollingLayoutElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "Scroll.kt"


# instance fields
.field private final isVertical:Z

.field private final reverseScrolling:Z

.field private final scrollState:Landroidx/compose/foundation/ScrollState;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroidx/compose/foundation/ScrollState;ZZ)V
    .locals 0

    .line 299
    invoke-direct {p0}, Landroidx/compose/ui/node/ModifierNodeElement;-><init>()V

    .line 296
    iput-object p1, p0, Landroidx/compose/foundation/ScrollingLayoutElement;->scrollState:Landroidx/compose/foundation/ScrollState;

    .line 297
    iput-boolean p2, p0, Landroidx/compose/foundation/ScrollingLayoutElement;->reverseScrolling:Z

    .line 298
    iput-boolean p3, p0, Landroidx/compose/foundation/ScrollingLayoutElement;->isVertical:Z

    return-void
.end method


# virtual methods
.method public create()Landroidx/compose/foundation/ScrollNode;
    .locals 3

    .line 301
    new-instance v0, Landroidx/compose/foundation/ScrollNode;

    .line 302
    iget-object v1, p0, Landroidx/compose/foundation/ScrollingLayoutElement;->scrollState:Landroidx/compose/foundation/ScrollState;

    .line 303
    iget-boolean v2, p0, Landroidx/compose/foundation/ScrollingLayoutElement;->reverseScrolling:Z

    .line 304
    iget-boolean p0, p0, Landroidx/compose/foundation/ScrollingLayoutElement;->isVertical:Z

    .line 301
    invoke-direct {v0, v1, v2, p0}, Landroidx/compose/foundation/ScrollNode;-><init>(Landroidx/compose/foundation/ScrollState;ZZ)V

    return-object v0
.end method

.method public bridge synthetic create()Landroidx/compose/ui/Modifier$Node;
    .locals 0

    .line 295
    invoke-virtual {p0}, Landroidx/compose/foundation/ScrollingLayoutElement;->create()Landroidx/compose/foundation/ScrollNode;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 322
    instance-of v0, p1, Landroidx/compose/foundation/ScrollingLayoutElement;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 323
    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/ScrollingLayoutElement;->scrollState:Landroidx/compose/foundation/ScrollState;

    check-cast p1, Landroidx/compose/foundation/ScrollingLayoutElement;

    iget-object v2, p1, Landroidx/compose/foundation/ScrollingLayoutElement;->scrollState:Landroidx/compose/foundation/ScrollState;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 324
    iget-boolean v0, p0, Landroidx/compose/foundation/ScrollingLayoutElement;->reverseScrolling:Z

    iget-boolean v2, p1, Landroidx/compose/foundation/ScrollingLayoutElement;->reverseScrolling:Z

    if-ne v0, v2, :cond_1

    .line 325
    iget-boolean p0, p0, Landroidx/compose/foundation/ScrollingLayoutElement;->isVertical:Z

    iget-boolean p1, p1, Landroidx/compose/foundation/ScrollingLayoutElement;->isVertical:Z

    if-ne p0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 315
    iget-object v0, p0, Landroidx/compose/foundation/ScrollingLayoutElement;->scrollState:Landroidx/compose/foundation/ScrollState;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 316
    iget-boolean v1, p0, Landroidx/compose/foundation/ScrollingLayoutElement;->reverseScrolling:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 317
    iget-boolean p0, p0, Landroidx/compose/foundation/ScrollingLayoutElement;->isVertical:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public update(Landroidx/compose/foundation/ScrollNode;)V
    .locals 1

    .line 309
    iget-object v0, p0, Landroidx/compose/foundation/ScrollingLayoutElement;->scrollState:Landroidx/compose/foundation/ScrollState;

    invoke-virtual {p1, v0}, Landroidx/compose/foundation/ScrollNode;->setState(Landroidx/compose/foundation/ScrollState;)V

    .line 310
    iget-boolean v0, p0, Landroidx/compose/foundation/ScrollingLayoutElement;->reverseScrolling:Z

    invoke-virtual {p1, v0}, Landroidx/compose/foundation/ScrollNode;->setReverseScrolling(Z)V

    .line 311
    iget-boolean p0, p0, Landroidx/compose/foundation/ScrollingLayoutElement;->isVertical:Z

    invoke-virtual {p1, p0}, Landroidx/compose/foundation/ScrollNode;->setVertical(Z)V

    return-void
.end method

.method public bridge synthetic update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 0

    .line 295
    check-cast p1, Landroidx/compose/foundation/ScrollNode;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/ScrollingLayoutElement;->update(Landroidx/compose/foundation/ScrollNode;)V

    return-void
.end method
