.class public final Landroidx/room/concurrent/CloseBarrier;
.super Ljava/lang/Object;
.source "CloseBarrier.kt"


# instance fields
.field private final blockers:Lkotlinx/atomicfu/AtomicInt;

.field private final closeAction:Lkotlin/jvm/functions/Function0;

.field private final closeInitiated:Lkotlinx/atomicfu/AtomicBoolean;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;)V
    .locals 1

    const-string v0, "closeAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/concurrent/CloseBarrier;->closeAction:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x0

    .line 43
    invoke-static {p1}, Lkotlinx/atomicfu/AtomicFU;->atomic(I)Lkotlinx/atomicfu/AtomicInt;

    move-result-object v0

    iput-object v0, p0, Landroidx/room/concurrent/CloseBarrier;->blockers:Lkotlinx/atomicfu/AtomicInt;

    .line 44
    invoke-static {p1}, Lkotlinx/atomicfu/AtomicFU;->atomic(Z)Lkotlinx/atomicfu/AtomicBoolean;

    move-result-object p1

    iput-object p1, p0, Landroidx/room/concurrent/CloseBarrier;->closeInitiated:Lkotlinx/atomicfu/AtomicBoolean;

    return-void
.end method
