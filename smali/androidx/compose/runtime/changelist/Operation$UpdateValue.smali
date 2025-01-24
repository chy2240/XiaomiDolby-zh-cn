.class public final Landroidx/compose/runtime/changelist/Operation$UpdateValue;
.super Landroidx/compose/runtime/changelist/Operation;
.source "Operation.kt"


# static fields
.field public static final INSTANCE:Landroidx/compose/runtime/changelist/Operation$UpdateValue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Landroidx/compose/runtime/changelist/Operation$UpdateValue;

    invoke-direct {v0}, Landroidx/compose/runtime/changelist/Operation$UpdateValue;-><init>()V

    sput-object v0, Landroidx/compose/runtime/changelist/Operation$UpdateValue;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$UpdateValue;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 300
    invoke-direct {p0, v0, v0, v1}, Landroidx/compose/runtime/changelist/Operation;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public execute(Landroidx/compose/runtime/changelist/OperationArgContainer;Landroidx/compose/runtime/Applier;Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/RememberManager;)V
    .locals 1

    const/4 p0, 0x0

    .line 302
    invoke-static {p0}, Landroidx/compose/runtime/changelist/Operation$ObjectParameter;->constructor-impl(I)I

    move-result p2

    .line 324
    invoke-interface {p1, p2}, Landroidx/compose/runtime/changelist/OperationArgContainer;->getObject-31yXWZQ(I)Ljava/lang/Object;

    move-result-object p2

    .line 305
    invoke-static {p0}, Landroidx/compose/runtime/changelist/Operation$IntParameter;->constructor-impl(I)I

    move-result p0

    .line 325
    invoke-interface {p1, p0}, Landroidx/compose/runtime/changelist/OperationArgContainer;->getInt-w8GmfQM(I)I

    move-result p0

    .line 326
    instance-of p1, p2, Landroidx/compose/runtime/RememberObserverHolder;

    if-eqz p1, :cond_0

    .line 327
    move-object p1, p2

    check-cast p1, Landroidx/compose/runtime/RememberObserverHolder;

    invoke-virtual {p1}, Landroidx/compose/runtime/RememberObserverHolder;->getWrapped()Landroidx/compose/runtime/RememberObserver;

    move-result-object p1

    invoke-interface {p4, p1}, Landroidx/compose/runtime/RememberManager;->remembering(Landroidx/compose/runtime/RememberObserver;)V

    .line 329
    :cond_0
    invoke-virtual {p3, p0, p2}, Landroidx/compose/runtime/SlotWriter;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 330
    instance-of p2, p1, Landroidx/compose/runtime/RememberObserverHolder;

    if-eqz p2, :cond_1

    .line 332
    invoke-virtual {p3}, Landroidx/compose/runtime/SlotWriter;->getSlotsSize()I

    move-result p2

    .line 333
    invoke-virtual {p3}, Landroidx/compose/runtime/SlotWriter;->getCurrentGroup()I

    move-result v0

    invoke-virtual {p3, v0, p0}, Landroidx/compose/runtime/SlotWriter;->slotIndexOfGroupSlotIndex(II)I

    move-result p0

    sub-int/2addr p2, p0

    .line 336
    check-cast p1, Landroidx/compose/runtime/RememberObserverHolder;

    invoke-virtual {p1}, Landroidx/compose/runtime/RememberObserverHolder;->getWrapped()Landroidx/compose/runtime/RememberObserver;

    move-result-object p0

    const/4 p1, -0x1

    invoke-interface {p4, p0, p2, p1, p1}, Landroidx/compose/runtime/RememberManager;->forgetting(Landroidx/compose/runtime/RememberObserver;III)V

    goto :goto_0

    .line 338
    :cond_1
    instance-of p0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;

    if-eqz p0, :cond_2

    check-cast p1, Landroidx/compose/runtime/RecomposeScopeImpl;

    invoke-virtual {p1}, Landroidx/compose/runtime/RecomposeScopeImpl;->release()V

    :cond_2
    :goto_0
    return-void
.end method

.method public intParamName-w8GmfQM(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 305
    invoke-static {v0}, Landroidx/compose/runtime/changelist/Operation$IntParameter;->constructor-impl(I)I

    move-result v0

    .line 309
    invoke-static {p1, v0}, Landroidx/compose/runtime/changelist/Operation$IntParameter;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "groupSlotIndex"

    goto :goto_0

    .line 310
    :cond_0
    invoke-super {p0, p1}, Landroidx/compose/runtime/changelist/Operation;->intParamName-w8GmfQM(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public objectParamName-31yXWZQ(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 302
    invoke-static {v0}, Landroidx/compose/runtime/changelist/Operation$ObjectParameter;->constructor-impl(I)I

    move-result v0

    .line 315
    invoke-static {p1, v0}, Landroidx/compose/runtime/changelist/Operation$ObjectParameter;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "value"

    goto :goto_0

    .line 316
    :cond_0
    invoke-super {p0, p1}, Landroidx/compose/runtime/changelist/Operation;->objectParamName-31yXWZQ(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method
