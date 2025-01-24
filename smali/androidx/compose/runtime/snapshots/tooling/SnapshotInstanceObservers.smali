.class public final Landroidx/compose/runtime/snapshots/tooling/SnapshotInstanceObservers;
.super Ljava/lang/Object;
.source "SnapshotObserver.kt"


# instance fields
.field private final readObserver:Lkotlin/jvm/functions/Function1;

.field private final writeObserver:Lkotlin/jvm/functions/Function1;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Landroidx/compose/runtime/snapshots/tooling/SnapshotInstanceObservers;->readObserver:Lkotlin/jvm/functions/Function1;

    .line 124
    iput-object p2, p0, Landroidx/compose/runtime/snapshots/tooling/SnapshotInstanceObservers;->writeObserver:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final getReadObserver()Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 110
    iget-object p0, p0, Landroidx/compose/runtime/snapshots/tooling/SnapshotInstanceObservers;->readObserver:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public final getWriteObserver()Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 124
    iget-object p0, p0, Landroidx/compose/runtime/snapshots/tooling/SnapshotInstanceObservers;->writeObserver:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method
