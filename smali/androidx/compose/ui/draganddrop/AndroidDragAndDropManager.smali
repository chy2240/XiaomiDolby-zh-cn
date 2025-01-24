.class public final Landroidx/compose/ui/draganddrop/AndroidDragAndDropManager;
.super Ljava/lang/Object;
.source "AndroidDragAndDropManager.android.kt"

# interfaces
.implements Landroid/view/View$OnDragListener;
.implements Landroidx/compose/ui/draganddrop/DragAndDropManager;


# instance fields
.field private final interestedTargets:Landroidx/collection/ArraySet;

.field private final modifier:Landroidx/compose/ui/Modifier;

.field private final rootDragAndDropNode:Landroidx/compose/ui/draganddrop/DragAndDropNode;

.field private final startDrag:Lkotlin/jvm/functions/Function3;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function3;)V
    .locals 3

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Landroidx/compose/ui/draganddrop/AndroidDragAndDropManager;->startDrag:Lkotlin/jvm/functions/Function3;

    .line 39
    new-instance p1, Landroidx/compose/ui/draganddrop/DragAndDropNode;

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p1, v1, v1, v0, v1}, Landroidx/compose/ui/draganddrop/DragAndDropNode;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Landroidx/compose/ui/draganddrop/AndroidDragAndDropManager;->rootDragAndDropNode:Landroidx/compose/ui/draganddrop/DragAndDropNode;

    .line 45
    new-instance p1, Landroidx/collection/ArraySet;

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-direct {p1, v0, v2, v1}, Landroidx/collection/ArraySet;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Landroidx/compose/ui/draganddrop/AndroidDragAndDropManager;->interestedTargets:Landroidx/collection/ArraySet;

    .line 48
    new-instance p1, Landroidx/compose/ui/draganddrop/AndroidDragAndDropManager$modifier$1;

    invoke-direct {p1, p0}, Landroidx/compose/ui/draganddrop/AndroidDragAndDropManager$modifier$1;-><init>(Landroidx/compose/ui/draganddrop/AndroidDragAndDropManager;)V

    iput-object p1, p0, Landroidx/compose/ui/draganddrop/AndroidDragAndDropManager;->modifier:Landroidx/compose/ui/Modifier;

    return-void
.end method

.method public static final synthetic access$getRootDragAndDropNode$p(Landroidx/compose/ui/draganddrop/AndroidDragAndDropManager;)Landroidx/compose/ui/draganddrop/DragAndDropNode;
    .locals 0

    .line 30
    iget-object p0, p0, Landroidx/compose/ui/draganddrop/AndroidDragAndDropManager;->rootDragAndDropNode:Landroidx/compose/ui/draganddrop/DragAndDropNode;

    return-object p0
.end method


# virtual methods
.method public getModifier()Landroidx/compose/ui/Modifier;
    .locals 0

    .line 47
    iget-object p0, p0, Landroidx/compose/ui/draganddrop/AndroidDragAndDropManager;->modifier:Landroidx/compose/ui/Modifier;

    return-object p0
.end method

.method public isInterestedTarget(Landroidx/compose/ui/draganddrop/DragAndDropTarget;)Z
    .locals 0

    .line 123
    iget-object p0, p0, Landroidx/compose/ui/draganddrop/AndroidDragAndDropManager;->interestedTargets:Landroidx/collection/ArraySet;

    invoke-virtual {p0, p1}, Landroidx/collection/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 1

    .line 87
    new-instance p1, Landroidx/compose/ui/draganddrop/DragAndDropEvent;

    invoke-direct {p1, p2}, Landroidx/compose/ui/draganddrop/DragAndDropEvent;-><init>(Landroid/view/DragEvent;)V

    .line 88
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result p2

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    goto :goto_1

    .line 106
    :pswitch_0
    iget-object p0, p0, Landroidx/compose/ui/draganddrop/AndroidDragAndDropManager;->rootDragAndDropNode:Landroidx/compose/ui/draganddrop/DragAndDropNode;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/draganddrop/DragAndDropNode;->onExited(Landroidx/compose/ui/draganddrop/DragAndDropEvent;)V

    goto :goto_1

    .line 98
    :pswitch_1
    iget-object p0, p0, Landroidx/compose/ui/draganddrop/AndroidDragAndDropManager;->rootDragAndDropNode:Landroidx/compose/ui/draganddrop/DragAndDropNode;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/draganddrop/DragAndDropNode;->onEntered(Landroidx/compose/ui/draganddrop/DragAndDropEvent;)V

    goto :goto_1

    .line 110
    :pswitch_2
    iget-object p2, p0, Landroidx/compose/ui/draganddrop/AndroidDragAndDropManager;->rootDragAndDropNode:Landroidx/compose/ui/draganddrop/DragAndDropNode;

    invoke-virtual {p2, p1}, Landroidx/compose/ui/draganddrop/DragAndDropNode;->onEnded(Landroidx/compose/ui/draganddrop/DragAndDropEvent;)V

    .line 111
    iget-object p0, p0, Landroidx/compose/ui/draganddrop/AndroidDragAndDropManager;->interestedTargets:Landroidx/collection/ArraySet;

    invoke-virtual {p0}, Landroidx/collection/ArraySet;->clear()V

    goto :goto_1

    .line 95
    :pswitch_3
    iget-object p0, p0, Landroidx/compose/ui/draganddrop/AndroidDragAndDropManager;->rootDragAndDropNode:Landroidx/compose/ui/draganddrop/DragAndDropNode;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/draganddrop/DragAndDropNode;->onDrop(Landroidx/compose/ui/draganddrop/DragAndDropEvent;)Z

    move-result v0

    goto :goto_1

    .line 102
    :pswitch_4
    iget-object p0, p0, Landroidx/compose/ui/draganddrop/AndroidDragAndDropManager;->rootDragAndDropNode:Landroidx/compose/ui/draganddrop/DragAndDropNode;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/draganddrop/DragAndDropNode;->onMoved(Landroidx/compose/ui/draganddrop/DragAndDropEvent;)V

    goto :goto_1

    .line 90
    :pswitch_5
    iget-object p2, p0, Landroidx/compose/ui/draganddrop/AndroidDragAndDropManager;->rootDragAndDropNode:Landroidx/compose/ui/draganddrop/DragAndDropNode;

    invoke-virtual {p2, p1}, Landroidx/compose/ui/draganddrop/DragAndDropNode;->acceptDragAndDropTransfer(Landroidx/compose/ui/draganddrop/DragAndDropEvent;)Z

    move-result v0

    .line 91
    iget-object p0, p0, Landroidx/compose/ui/draganddrop/AndroidDragAndDropManager;->interestedTargets:Landroidx/collection/ArraySet;

    .line 1855
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/compose/ui/draganddrop/DragAndDropTarget;

    .line 91
    invoke-interface {p2, p1}, Landroidx/compose/ui/draganddrop/DragAndDropTarget;->onStarted(Landroidx/compose/ui/draganddrop/DragAndDropEvent;)V

    goto :goto_0

    :cond_0
    :goto_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public registerTargetInterest(Landroidx/compose/ui/draganddrop/DragAndDropTarget;)V
    .locals 0

    .line 119
    iget-object p0, p0, Landroidx/compose/ui/draganddrop/AndroidDragAndDropManager;->interestedTargets:Landroidx/collection/ArraySet;

    invoke-virtual {p0, p1}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method
