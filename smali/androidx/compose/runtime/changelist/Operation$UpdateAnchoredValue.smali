.class public final Landroidx/compose/runtime/changelist/Operation$UpdateAnchoredValue;
.super Landroidx/compose/runtime/changelist/Operation;
.source "Operation.kt"


# static fields
.field public static final INSTANCE:Landroidx/compose/runtime/changelist/Operation$UpdateAnchoredValue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Landroidx/compose/runtime/changelist/Operation$UpdateAnchoredValue;

    invoke-direct {v0}, Landroidx/compose/runtime/changelist/Operation$UpdateAnchoredValue;-><init>()V

    sput-object v0, Landroidx/compose/runtime/changelist/Operation$UpdateAnchoredValue;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$UpdateAnchoredValue;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 343
    invoke-direct {p0, v2, v0, v1}, Landroidx/compose/runtime/changelist/Operation;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public execute(Landroidx/compose/runtime/changelist/OperationArgContainer;Landroidx/compose/runtime/Applier;Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/RememberManager;)V
    .locals 1

    const/4 p0, 0x0

    .line 345
    invoke-static {p0}, Landroidx/compose/runtime/changelist/Operation$ObjectParameter;->constructor-impl(I)I

    move-result p2

    .line 371
    invoke-interface {p1, p2}, Landroidx/compose/runtime/changelist/OperationArgContainer;->getObject-31yXWZQ(I)Ljava/lang/Object;

    move-result-object p2

    const/4 v0, 0x1

    .line 348
    invoke-static {v0}, Landroidx/compose/runtime/changelist/Operation$ObjectParameter;->constructor-impl(I)I

    move-result v0

    .line 372
    invoke-interface {p1, v0}, Landroidx/compose/runtime/changelist/OperationArgContainer;->getObject-31yXWZQ(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/Anchor;

    .line 351
    invoke-static {p0}, Landroidx/compose/runtime/changelist/Operation$IntParameter;->constructor-impl(I)I

    move-result p0

    .line 373
    invoke-interface {p1, p0}, Landroidx/compose/runtime/changelist/OperationArgContainer;->getInt-w8GmfQM(I)I

    move-result p0

    .line 374
    instance-of p1, p2, Landroidx/compose/runtime/RememberObserverHolder;

    if-eqz p1, :cond_0

    .line 375
    move-object p1, p2

    check-cast p1, Landroidx/compose/runtime/RememberObserverHolder;

    invoke-virtual {p1}, Landroidx/compose/runtime/RememberObserverHolder;->getWrapped()Landroidx/compose/runtime/RememberObserver;

    move-result-object p1

    invoke-interface {p4, p1}, Landroidx/compose/runtime/RememberManager;->remembering(Landroidx/compose/runtime/RememberObserver;)V

    .line 377
    :cond_0
    invoke-virtual {p3, v0}, Landroidx/compose/runtime/SlotWriter;->anchorIndex(Landroidx/compose/runtime/Anchor;)I

    move-result p1

    .line 378
    invoke-virtual {p3, p1, p0, p2}, Landroidx/compose/runtime/SlotWriter;->set(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 379
    instance-of v0, p2, Landroidx/compose/runtime/RememberObserverHolder;

    if-eqz v0, :cond_2

    .line 381
    invoke-virtual {p3}, Landroidx/compose/runtime/SlotWriter;->getSlotsSize()I

    move-result v0

    .line 382
    invoke-virtual {p3, p1, p0}, Landroidx/compose/runtime/SlotWriter;->slotIndexOfGroupSlotIndex(II)I

    move-result p0

    sub-int/2addr v0, p0

    .line 383
    check-cast p2, Landroidx/compose/runtime/RememberObserverHolder;

    invoke-virtual {p2}, Landroidx/compose/runtime/RememberObserverHolder;->getAfter()Landroidx/compose/runtime/Anchor;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 4186
    invoke-virtual {p0}, Landroidx/compose/runtime/Anchor;->getValid()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4187
    invoke-virtual {p3, p0}, Landroidx/compose/runtime/SlotWriter;->anchorIndex(Landroidx/compose/runtime/Anchor;)I

    move-result p0

    .line 4188
    invoke-virtual {p3}, Landroidx/compose/runtime/SlotWriter;->getSlotsSize()I

    move-result p1

    invoke-virtual {p3, p0}, Landroidx/compose/runtime/SlotWriter;->slotsEndAllIndex$runtime_release(I)I

    move-result p3

    sub-int/2addr p1, p3

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    move p1, p0

    .line 385
    :goto_0
    invoke-virtual {p2}, Landroidx/compose/runtime/RememberObserverHolder;->getWrapped()Landroidx/compose/runtime/RememberObserver;

    move-result-object p2

    .line 384
    invoke-interface {p4, p2, v0, p0, p1}, Landroidx/compose/runtime/RememberManager;->forgetting(Landroidx/compose/runtime/RememberObserver;III)V

    goto :goto_1

    .line 392
    :cond_2
    instance-of p0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;

    if-eqz p0, :cond_3

    check-cast p2, Landroidx/compose/runtime/RecomposeScopeImpl;

    invoke-virtual {p2}, Landroidx/compose/runtime/RecomposeScopeImpl;->release()V

    :cond_3
    :goto_1
    return-void
.end method

.method public intParamName-w8GmfQM(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 351
    invoke-static {v0}, Landroidx/compose/runtime/changelist/Operation$IntParameter;->constructor-impl(I)I

    move-result v0

    .line 355
    invoke-static {p1, v0}, Landroidx/compose/runtime/changelist/Operation$IntParameter;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "groupSlotIndex"

    goto :goto_0

    .line 356
    :cond_0
    invoke-super {p0, p1}, Landroidx/compose/runtime/changelist/Operation;->intParamName-w8GmfQM(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public objectParamName-31yXWZQ(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 345
    invoke-static {v0}, Landroidx/compose/runtime/changelist/Operation$ObjectParameter;->constructor-impl(I)I

    move-result v0

    .line 361
    invoke-static {p1, v0}, Landroidx/compose/runtime/changelist/Operation$ObjectParameter;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "value"

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 348
    invoke-static {v0}, Landroidx/compose/runtime/changelist/Operation$ObjectParameter;->constructor-impl(I)I

    move-result v0

    .line 362
    invoke-static {p1, v0}, Landroidx/compose/runtime/changelist/Operation$ObjectParameter;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "anchor"

    goto :goto_0

    .line 363
    :cond_1
    invoke-super {p0, p1}, Landroidx/compose/runtime/changelist/Operation;->objectParamName-31yXWZQ(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method
