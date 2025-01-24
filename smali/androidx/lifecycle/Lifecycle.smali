.class public abstract Landroidx/lifecycle/Lifecycle;
.super Ljava/lang/Object;
.source "Lifecycle.kt"


# instance fields
.field private internalScopeRef:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/lifecycle/Lifecycle;->internalScopeRef:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public abstract addObserver(Landroidx/lifecycle/LifecycleObserver;)V
.end method

.method public abstract getCurrentState()Landroidx/lifecycle/Lifecycle$State;
.end method

.method public abstract removeObserver(Landroidx/lifecycle/LifecycleObserver;)V
.end method
