.class Landroidx/recyclerview/widget/GapWorker$Task;
.super Ljava/lang/Object;
.source "GapWorker.java"


# instance fields
.field public distanceToItem:I

.field public neededNextFrame:Z

.field public position:I

.field public view:Landroidx/recyclerview/widget/RecyclerView;

.field public viewVelocity:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Landroidx/recyclerview/widget/GapWorker$Task;->neededNextFrame:Z

    .line 48
    iput v0, p0, Landroidx/recyclerview/widget/GapWorker$Task;->viewVelocity:I

    .line 49
    iput v0, p0, Landroidx/recyclerview/widget/GapWorker$Task;->distanceToItem:I

    const/4 v1, 0x0

    .line 50
    iput-object v1, p0, Landroidx/recyclerview/widget/GapWorker$Task;->view:Landroidx/recyclerview/widget/RecyclerView;

    .line 51
    iput v0, p0, Landroidx/recyclerview/widget/GapWorker$Task;->position:I

    return-void
.end method
