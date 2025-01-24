.class public final Landroidx/compose/foundation/contextmenu/ContextMenuState;
.super Ljava/lang/Object;
.source "ContextMenuState.android.kt"


# instance fields
.field private final status$delegate:Landroidx/compose/runtime/MutableState;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroidx/compose/foundation/contextmenu/ContextMenuState$Status;)V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 33
    invoke-static {p1, v0, v1, v0}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/contextmenu/ContextMenuState;->status$delegate:Landroidx/compose/runtime/MutableState;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/foundation/contextmenu/ContextMenuState$Status;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 32
    sget-object p1, Landroidx/compose/foundation/contextmenu/ContextMenuState$Status$Closed;->INSTANCE:Landroidx/compose/foundation/contextmenu/ContextMenuState$Status$Closed;

    :cond_0
    invoke-direct {p0, p1}, Landroidx/compose/foundation/contextmenu/ContextMenuState;-><init>(Landroidx/compose/foundation/contextmenu/ContextMenuState$Status;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 41
    :cond_0
    instance-of v0, p1, Landroidx/compose/foundation/contextmenu/ContextMenuState;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 42
    :cond_1
    check-cast p1, Landroidx/compose/foundation/contextmenu/ContextMenuState;

    invoke-virtual {p1}, Landroidx/compose/foundation/contextmenu/ContextMenuState;->getStatus()Landroidx/compose/foundation/contextmenu/ContextMenuState$Status;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/compose/foundation/contextmenu/ContextMenuState;->getStatus()Landroidx/compose/foundation/contextmenu/ContextMenuState$Status;

    move-result-object p0

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final getStatus()Landroidx/compose/foundation/contextmenu/ContextMenuState$Status;
    .locals 0

    .line 33
    iget-object p0, p0, Landroidx/compose/foundation/contextmenu/ContextMenuState;->status$delegate:Landroidx/compose/runtime/MutableState;

    .line 81
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/contextmenu/ContextMenuState$Status;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    .line 37
    invoke-virtual {p0}, Landroidx/compose/foundation/contextmenu/ContextMenuState;->getStatus()Landroidx/compose/foundation/contextmenu/ContextMenuState$Status;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final setStatus(Landroidx/compose/foundation/contextmenu/ContextMenuState$Status;)V
    .locals 0

    .line 33
    iget-object p0, p0, Landroidx/compose/foundation/contextmenu/ContextMenuState;->status$delegate:Landroidx/compose/runtime/MutableState;

    .line 109
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ContextMenuState(status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/compose/foundation/contextmenu/ContextMenuState;->getStatus()Landroidx/compose/foundation/contextmenu/ContextMenuState$Status;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
