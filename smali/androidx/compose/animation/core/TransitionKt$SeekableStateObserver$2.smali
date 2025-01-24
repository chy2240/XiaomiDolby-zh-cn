.class final Landroidx/compose/animation/core/TransitionKt$SeekableStateObserver$2;
.super Lkotlin/jvm/internal/Lambda;
.source "Transition.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# static fields
.field public static final INSTANCE:Landroidx/compose/animation/core/TransitionKt$SeekableStateObserver$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Landroidx/compose/animation/core/TransitionKt$SeekableStateObserver$2;

    invoke-direct {v0}, Landroidx/compose/animation/core/TransitionKt$SeekableStateObserver$2;-><init>()V

    sput-object v0, Landroidx/compose/animation/core/TransitionKt$SeekableStateObserver$2;->INSTANCE:Landroidx/compose/animation/core/TransitionKt$SeekableStateObserver$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroidx/compose/runtime/snapshots/SnapshotStateObserver;
    .locals 1

    .line 206
    new-instance p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    sget-object v0, Landroidx/compose/animation/core/TransitionKt$SeekableStateObserver$2$1;->INSTANCE:Landroidx/compose/animation/core/TransitionKt$SeekableStateObserver$2$1;

    invoke-direct {p0, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->start()V

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 206
    invoke-virtual {p0}, Landroidx/compose/animation/core/TransitionKt$SeekableStateObserver$2;->invoke()Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    move-result-object p0

    return-object p0
.end method
