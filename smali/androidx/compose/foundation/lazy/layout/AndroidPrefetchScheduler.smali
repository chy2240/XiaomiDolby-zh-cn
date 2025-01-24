.class public final Landroidx/compose/foundation/lazy/layout/AndroidPrefetchScheduler;
.super Ljava/lang/Object;
.source "PrefetchScheduler.android.kt"

# interfaces
.implements Landroidx/compose/foundation/lazy/layout/PrefetchScheduler;
.implements Landroidx/compose/runtime/RememberObserver;
.implements Ljava/lang/Runnable;
.implements Landroid/view/Choreographer$FrameCallback;


# static fields
.field public static final $stable:I

.field public static final Companion:Landroidx/compose/foundation/lazy/layout/AndroidPrefetchScheduler$Companion;

.field private static frameIntervalNs:J


# instance fields
.field private final choreographer:Landroid/view/Choreographer;

.field private frameStartTimeNanos:J

.field private isActive:Z

.field private final prefetchRequests:Landroidx/compose/runtime/collection/MutableVector;

.field private prefetchScheduled:Z

.field private final view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Landroidx/compose/foundation/lazy/layout/AndroidPrefetchScheduler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/foundation/lazy/layout/AndroidPrefetchScheduler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/foundation/lazy/layout/AndroidPrefetchScheduler;->Companion:Landroidx/compose/foundation/lazy/layout/AndroidPrefetchScheduler$Companion;

    const/16 v0, 0x8

    sput v0, Landroidx/compose/foundation/lazy/layout/AndroidPrefetchScheduler;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/AndroidPrefetchScheduler;->view:Landroid/view/View;

    .line 1130
    new-instance v0, Landroidx/compose/runtime/collection/MutableVector;

    const/16 v1, 0x10

    new-array v1, v1, [Landroidx/compose/foundation/lazy/layout/PrefetchRequest;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 88
    iput-object v0, p0, Landroidx/compose/foundation/lazy/layout/AndroidPrefetchScheduler;->prefetchRequests:Landroidx/compose/runtime/collection/MutableVector;

    .line 90
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/lazy/layout/AndroidPrefetchScheduler;->choreographer:Landroid/view/Choreographer;

    .line 98
    sget-object p0, Landroidx/compose/foundation/lazy/layout/AndroidPrefetchScheduler;->Companion:Landroidx/compose/foundation/lazy/layout/AndroidPrefetchScheduler$Companion;

    invoke-static {p0, p1}, Landroidx/compose/foundation/lazy/layout/AndroidPrefetchScheduler$Companion;->access$calculateFrameIntervalIfNeeded(Landroidx/compose/foundation/lazy/layout/AndroidPrefetchScheduler$Companion;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$getFrameIntervalNs$cp()J
    .locals 2

    .line 80
    sget-wide v0, Landroidx/compose/foundation/lazy/layout/AndroidPrefetchScheduler;->frameIntervalNs:J

    return-wide v0
.end method

.method public static final synthetic access$setFrameIntervalNs$cp(J)V
    .locals 0

    .line 80
    sput-wide p0, Landroidx/compose/foundation/lazy/layout/AndroidPrefetchScheduler;->frameIntervalNs:J

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 1

    .line 148
    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/layout/AndroidPrefetchScheduler;->isActive:Z

    if-eqz v0, :cond_0

    .line 149
    iput-wide p1, p0, Landroidx/compose/foundation/lazy/layout/AndroidPrefetchScheduler;->frameStartTimeNanos:J

    .line 150
    iget-object p1, p0, Landroidx/compose/foundation/lazy/layout/AndroidPrefetchScheduler;->view:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onAbandoned()V
    .locals 0

    .line 0
    return-void
.end method

.method public onForgotten()V
    .locals 1

    const/4 v0, 0x0

    .line 168
    iput-boolean v0, p0, Landroidx/compose/foundation/lazy/layout/AndroidPrefetchScheduler;->isActive:Z

    .line 169
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/AndroidPrefetchScheduler;->view:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 170
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/AndroidPrefetchScheduler;->choreographer:Landroid/view/Choreographer;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method

.method public onRemembered()V
    .locals 1

    const/4 v0, 0x1

    .line 164
    iput-boolean v0, p0, Landroidx/compose/foundation/lazy/layout/AndroidPrefetchScheduler;->isActive:Z

    return-void
.end method

.method public run()V
    .locals 7

    .line 107
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/AndroidPrefetchScheduler;->prefetchRequests:Landroidx/compose/runtime/collection/MutableVector;

    .line 542
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_2

    .line 108
    :cond_0
    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/layout/AndroidPrefetchScheduler;->prefetchScheduled:Z

    if-eqz v0, :cond_6

    .line 109
    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/layout/AndroidPrefetchScheduler;->isActive:Z

    if-eqz v0, :cond_6

    .line 110
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/AndroidPrefetchScheduler;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    .line 116
    :cond_1
    iget-wide v2, p0, Landroidx/compose/foundation/lazy/layout/AndroidPrefetchScheduler;->frameStartTimeNanos:J

    sget-wide v4, Landroidx/compose/foundation/lazy/layout/AndroidPrefetchScheduler;->frameIntervalNs:J

    add-long/2addr v2, v4

    .line 117
    new-instance v0, Landroidx/compose/foundation/lazy/layout/AndroidPrefetchScheduler$PrefetchRequestScopeImpl;

    invoke-direct {v0, v2, v3}, Landroidx/compose/foundation/lazy/layout/AndroidPrefetchScheduler$PrefetchRequestScopeImpl;-><init>(J)V

    move v2, v1

    .line 119
    :goto_0
    iget-object v3, p0, Landroidx/compose/foundation/lazy/layout/AndroidPrefetchScheduler;->prefetchRequests:Landroidx/compose/runtime/collection/MutableVector;

    .line 545
    invoke-virtual {v3}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v3

    if-eqz v3, :cond_4

    if-nez v2, :cond_4

    .line 120
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/layout/AndroidPrefetchScheduler$PrefetchRequestScopeImpl;->availableTimeNanos()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    const/4 v4, 0x1

    if-lez v3, :cond_2

    .line 121
    iget-object v3, p0, Landroidx/compose/foundation/lazy/layout/AndroidPrefetchScheduler;->prefetchRequests:Landroidx/compose/runtime/collection/MutableVector;

    .line 489
    invoke-virtual {v3}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v3

    aget-object v3, v3, v1

    .line 121
    check-cast v3, Landroidx/compose/foundation/lazy/layout/PrefetchRequest;

    .line 122
    invoke-interface {v3, v0}, Landroidx/compose/foundation/lazy/layout/PrefetchRequest;->execute(Landroidx/compose/foundation/lazy/layout/PrefetchRequestScope;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v2, v4

    goto :goto_0

    .line 126
    :cond_3
    iget-object v3, p0, Landroidx/compose/foundation/lazy/layout/AndroidPrefetchScheduler;->prefetchRequests:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {v3, v1}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    if-eqz v2, :cond_5

    .line 136
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/AndroidPrefetchScheduler;->choreographer:Landroid/view/Choreographer;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    goto :goto_1

    .line 138
    :cond_5
    iput-boolean v1, p0, Landroidx/compose/foundation/lazy/layout/AndroidPrefetchScheduler;->prefetchScheduled:Z

    :goto_1
    return-void

    .line 113
    :cond_6
    :goto_2
    iput-boolean v1, p0, Landroidx/compose/foundation/lazy/layout/AndroidPrefetchScheduler;->prefetchScheduled:Z

    return-void
.end method

.method public schedulePrefetch(Landroidx/compose/foundation/lazy/layout/PrefetchRequest;)V
    .locals 1

    .line 155
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/AndroidPrefetchScheduler;->prefetchRequests:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 156
    iget-boolean p1, p0, Landroidx/compose/foundation/lazy/layout/AndroidPrefetchScheduler;->prefetchScheduled:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 157
    iput-boolean p1, p0, Landroidx/compose/foundation/lazy/layout/AndroidPrefetchScheduler;->prefetchScheduled:Z

    .line 159
    iget-object p1, p0, Landroidx/compose/foundation/lazy/layout/AndroidPrefetchScheduler;->view:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
