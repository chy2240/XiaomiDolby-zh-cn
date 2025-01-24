.class public final Landroidx/compose/runtime/changelist/Operation$InsertSlotsWithFixups;
.super Landroidx/compose/runtime/changelist/Operation;
.source "Operation.kt"


# static fields
.field public static final INSTANCE:Landroidx/compose/runtime/changelist/Operation$InsertSlotsWithFixups;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Landroidx/compose/runtime/changelist/Operation$InsertSlotsWithFixups;

    invoke-direct {v0}, Landroidx/compose/runtime/changelist/Operation$InsertSlotsWithFixups;-><init>()V

    sput-object v0, Landroidx/compose/runtime/changelist/Operation$InsertSlotsWithFixups;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$InsertSlotsWithFixups;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x3

    .line 640
    invoke-direct {p0, v2, v3, v0, v1}, Landroidx/compose/runtime/changelist/Operation;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public execute(Landroidx/compose/runtime/changelist/OperationArgContainer;Landroidx/compose/runtime/Applier;Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/RememberManager;)V
    .locals 4

    const/4 p0, 0x1

    .line 645
    invoke-static {p0}, Landroidx/compose/runtime/changelist/Operation$ObjectParameter;->constructor-impl(I)I

    move-result v0

    .line 663
    invoke-interface {p1, v0}, Landroidx/compose/runtime/changelist/OperationArgContainer;->getObject-31yXWZQ(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/SlotTable;

    const/4 v1, 0x0

    .line 642
    invoke-static {v1}, Landroidx/compose/runtime/changelist/Operation$ObjectParameter;->constructor-impl(I)I

    move-result v2

    .line 664
    invoke-interface {p1, v2}, Landroidx/compose/runtime/changelist/OperationArgContainer;->getObject-31yXWZQ(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/runtime/Anchor;

    const/4 v3, 0x2

    .line 648
    invoke-static {v3}, Landroidx/compose/runtime/changelist/Operation$ObjectParameter;->constructor-impl(I)I

    move-result v3

    .line 665
    invoke-interface {p1, v3}, Landroidx/compose/runtime/changelist/OperationArgContainer;->getObject-31yXWZQ(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/runtime/changelist/FixupList;

    .line 166
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotTable;->openWriter()Landroidx/compose/runtime/SlotWriter;

    move-result-object v3

    .line 668
    :try_start_0
    invoke-virtual {p1, p2, v3, p4}, Landroidx/compose/runtime/changelist/FixupList;->executeAndFlushAllPendingFixups(Landroidx/compose/runtime/Applier;Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/RememberManager;)V

    .line 669
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    invoke-virtual {v3, p0}, Landroidx/compose/runtime/SlotWriter;->close(Z)V

    .line 670
    invoke-virtual {p3}, Landroidx/compose/runtime/SlotWriter;->beginInsert()V

    .line 673
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/Anchor;->toIndexFor(Landroidx/compose/runtime/SlotTable;)I

    move-result p0

    .line 671
    invoke-virtual {p3, v0, p0, v1}, Landroidx/compose/runtime/SlotWriter;->moveFrom(Landroidx/compose/runtime/SlotTable;IZ)Ljava/util/List;

    .line 676
    invoke-virtual {p3}, Landroidx/compose/runtime/SlotWriter;->endInsert()V

    return-void

    :catchall_0
    move-exception p0

    .line 171
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/SlotWriter;->close(Z)V

    throw p0
.end method

.method public objectParamName-31yXWZQ(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 642
    invoke-static {v0}, Landroidx/compose/runtime/changelist/Operation$ObjectParameter;->constructor-impl(I)I

    move-result v0

    .line 652
    invoke-static {p1, v0}, Landroidx/compose/runtime/changelist/Operation$ObjectParameter;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "anchor"

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 645
    invoke-static {v0}, Landroidx/compose/runtime/changelist/Operation$ObjectParameter;->constructor-impl(I)I

    move-result v0

    .line 653
    invoke-static {p1, v0}, Landroidx/compose/runtime/changelist/Operation$ObjectParameter;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "from"

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    .line 648
    invoke-static {v0}, Landroidx/compose/runtime/changelist/Operation$ObjectParameter;->constructor-impl(I)I

    move-result v0

    .line 654
    invoke-static {p1, v0}, Landroidx/compose/runtime/changelist/Operation$ObjectParameter;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "fixups"

    goto :goto_0

    .line 655
    :cond_2
    invoke-super {p0, p1}, Landroidx/compose/runtime/changelist/Operation;->objectParamName-31yXWZQ(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method
