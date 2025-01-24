.class public final Landroidx/compose/runtime/changelist/Operation$TrimParentValues;
.super Landroidx/compose/runtime/changelist/Operation;
.source "Operation.kt"


# static fields
.field public static final INSTANCE:Landroidx/compose/runtime/changelist/Operation$TrimParentValues;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Landroidx/compose/runtime/changelist/Operation$TrimParentValues;

    invoke-direct {v0}, Landroidx/compose/runtime/changelist/Operation$TrimParentValues;-><init>()V

    sput-object v0, Landroidx/compose/runtime/changelist/Operation$TrimParentValues;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$TrimParentValues;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 261
    invoke-direct {p0, v2, v3, v0, v1}, Landroidx/compose/runtime/changelist/Operation;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public execute(Landroidx/compose/runtime/changelist/OperationArgContainer;Landroidx/compose/runtime/Applier;Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/RememberManager;)V
    .locals 6

    const/4 p0, 0x0

    .line 263
    invoke-static {p0}, Landroidx/compose/runtime/changelist/Operation$IntParameter;->constructor-impl(I)I

    move-result p0

    .line 276
    invoke-interface {p1, p0}, Landroidx/compose/runtime/changelist/OperationArgContainer;->getInt-w8GmfQM(I)I

    move-result p0

    .line 277
    invoke-virtual {p3}, Landroidx/compose/runtime/SlotWriter;->getSlotsSize()I

    move-result p1

    .line 278
    invoke-virtual {p3}, Landroidx/compose/runtime/SlotWriter;->getParent()I

    move-result p2

    .line 1670
    invoke-virtual {p3, p2}, Landroidx/compose/runtime/SlotWriter;->slotsStartIndex$runtime_release(I)I

    move-result v0

    .line 1671
    invoke-virtual {p3, p2}, Landroidx/compose/runtime/SlotWriter;->slotsEndIndex$runtime_release(I)I

    move-result p2

    sub-int v1, p2, p0

    .line 1672
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    if-ge v0, p2, :cond_3

    .line 1673
    invoke-static {p3}, Landroidx/compose/runtime/SlotWriter;->access$getSlots$p(Landroidx/compose/runtime/SlotWriter;)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {p3, v0}, Landroidx/compose/runtime/SlotWriter;->access$dataIndexToDataAddress(Landroidx/compose/runtime/SlotWriter;I)I

    move-result v2

    aget-object v1, v1, v2

    .line 280
    instance-of v2, v1, Landroidx/compose/runtime/RememberObserverHolder;

    if-eqz v2, :cond_1

    sub-int v2, p1, v0

    .line 284
    check-cast v1, Landroidx/compose/runtime/RememberObserverHolder;

    invoke-virtual {v1}, Landroidx/compose/runtime/RememberObserverHolder;->getAfter()Landroidx/compose/runtime/Anchor;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4186
    invoke-virtual {v3}, Landroidx/compose/runtime/Anchor;->getValid()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4187
    invoke-virtual {p3, v3}, Landroidx/compose/runtime/SlotWriter;->anchorIndex(Landroidx/compose/runtime/Anchor;)I

    move-result v3

    .line 4188
    invoke-virtual {p3}, Landroidx/compose/runtime/SlotWriter;->getSlotsSize()I

    move-result v4

    invoke-virtual {p3, v3}, Landroidx/compose/runtime/SlotWriter;->slotsEndAllIndex$runtime_release(I)I

    move-result v5

    sub-int/2addr v4, v5

    goto :goto_1

    :cond_0
    const/4 v3, -0x1

    move v4, v3

    .line 286
    :goto_1
    invoke-virtual {v1}, Landroidx/compose/runtime/RememberObserverHolder;->getWrapped()Landroidx/compose/runtime/RememberObserver;

    move-result-object v1

    .line 285
    invoke-interface {p4, v1, v2, v3, v4}, Landroidx/compose/runtime/RememberManager;->forgetting(Landroidx/compose/runtime/RememberObserver;III)V

    goto :goto_2

    .line 293
    :cond_1
    instance-of v2, v1, Landroidx/compose/runtime/RecomposeScopeImpl;

    if-eqz v2, :cond_2

    check-cast v1, Landroidx/compose/runtime/RecomposeScopeImpl;

    invoke-virtual {v1}, Landroidx/compose/runtime/RecomposeScopeImpl;->release()V

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 296
    :cond_3
    invoke-virtual {p3, p0}, Landroidx/compose/runtime/SlotWriter;->trimTailSlots(I)V

    return-void
.end method

.method public intParamName-w8GmfQM(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 263
    invoke-static {v0}, Landroidx/compose/runtime/changelist/Operation$IntParameter;->constructor-impl(I)I

    move-result v0

    .line 267
    invoke-static {p1, v0}, Landroidx/compose/runtime/changelist/Operation$IntParameter;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "count"

    goto :goto_0

    .line 268
    :cond_0
    invoke-super {p0, p1}, Landroidx/compose/runtime/changelist/Operation;->intParamName-w8GmfQM(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method
