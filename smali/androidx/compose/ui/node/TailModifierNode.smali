.class public final Landroidx/compose/ui/node/TailModifierNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "InnerNodeCoordinator.kt"


# instance fields
.field private attachHasBeenRun:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    const/4 v0, 0x0

    .line 38
    invoke-virtual {p0, v0}, Landroidx/compose/ui/Modifier$Node;->setAggregateChildKindSet$ui_release(I)V

    return-void
.end method


# virtual methods
.method public final getAttachHasBeenRun()Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Landroidx/compose/ui/node/TailModifierNode;->attachHasBeenRun:Z

    return p0
.end method

.method public onAttach()V
    .locals 1

    const/4 v0, 0x1

    .line 51
    iput-boolean v0, p0, Landroidx/compose/ui/node/TailModifierNode;->attachHasBeenRun:Z

    return-void
.end method

.method public onDetach()V
    .locals 1

    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p0, Landroidx/compose/ui/node/TailModifierNode;->attachHasBeenRun:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 47
    const-string p0, "<tail>"

    return-object p0
.end method
