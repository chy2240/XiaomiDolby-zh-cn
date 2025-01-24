.class public final Landroidx/compose/ui/focus/FocusTransactionManager;
.super Ljava/lang/Object;
.source "FocusTransactionManager.kt"


# instance fields
.field private final cancellationListener:Landroidx/compose/runtime/collection/MutableVector;

.field private ongoingTransaction:Z

.field private final states:Landroidx/collection/MutableScatterMap;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {}, Landroidx/collection/ScatterMapKt;->mutableScatterMapOf()Landroidx/collection/MutableScatterMap;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/focus/FocusTransactionManager;->states:Landroidx/collection/MutableScatterMap;

    .line 1130
    new-instance v0, Landroidx/compose/runtime/collection/MutableVector;

    const/16 v1, 0x10

    new-array v1, v1, [Lkotlin/jvm/functions/Function0;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 30
    iput-object v0, p0, Landroidx/compose/ui/focus/FocusTransactionManager;->cancellationListener:Landroidx/compose/runtime/collection/MutableVector;

    return-void
.end method

.method public static final synthetic access$beginTransaction(Landroidx/compose/ui/focus/FocusTransactionManager;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroidx/compose/ui/focus/FocusTransactionManager;->beginTransaction()V

    return-void
.end method

.method public static final synthetic access$cancelTransaction(Landroidx/compose/ui/focus/FocusTransactionManager;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroidx/compose/ui/focus/FocusTransactionManager;->cancelTransaction()V

    return-void
.end method

.method public static final synthetic access$commitTransaction(Landroidx/compose/ui/focus/FocusTransactionManager;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroidx/compose/ui/focus/FocusTransactionManager;->commitTransaction()V

    return-void
.end method

.method public static final synthetic access$getCancellationListener$p(Landroidx/compose/ui/focus/FocusTransactionManager;)Landroidx/compose/runtime/collection/MutableVector;
    .locals 0

    .line 28
    iget-object p0, p0, Landroidx/compose/ui/focus/FocusTransactionManager;->cancellationListener:Landroidx/compose/runtime/collection/MutableVector;

    return-object p0
.end method

.method public static final synthetic access$getOngoingTransaction$p(Landroidx/compose/ui/focus/FocusTransactionManager;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Landroidx/compose/ui/focus/FocusTransactionManager;->ongoingTransaction:Z

    return p0
.end method

.method private final beginTransaction()V
    .locals 1

    const/4 v0, 0x1

    .line 85
    iput-boolean v0, p0, Landroidx/compose/ui/focus/FocusTransactionManager;->ongoingTransaction:Z

    return-void
.end method

.method private final cancelTransaction()V
    .locals 4

    .line 96
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusTransactionManager;->states:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v0}, Landroidx/collection/MutableScatterMap;->clear()V

    const/4 v0, 0x0

    .line 97
    iput-boolean v0, p0, Landroidx/compose/ui/focus/FocusTransactionManager;->ongoingTransaction:Z

    .line 98
    iget-object v1, p0, Landroidx/compose/ui/focus/FocusTransactionManager;->cancellationListener:Landroidx/compose/runtime/collection/MutableVector;

    .line 434
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v2

    if-lez v2, :cond_1

    .line 437
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v1

    .line 439
    :cond_0
    aget-object v3, v1, v0

    check-cast v3, Lkotlin/jvm/functions/Function0;

    .line 98
    invoke-interface {v3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    if-lt v0, v2, :cond_0

    .line 99
    :cond_1
    iget-object p0, p0, Landroidx/compose/ui/focus/FocusTransactionManager;->cancellationListener:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->clear()V

    return-void
.end method

.method private final commitTransaction()V
    .locals 14

    .line 89
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusTransactionManager;->states:Landroidx/collection/MutableScatterMap;

    .line 365
    iget-object v1, v0, Landroidx/collection/ScatterMap;->keys:[Ljava/lang/Object;

    .line 329
    iget-object v0, v0, Landroidx/collection/ScatterMap;->metadata:[J

    .line 330
    array-length v2, v0

    add-int/lit8 v2, v2, -0x2

    const/4 v3, 0x0

    if-ltz v2, :cond_3

    move v4, v3

    .line 333
    :goto_0
    aget-wide v5, v0, v4

    not-long v7, v5

    const/4 v9, 0x7

    shl-long/2addr v7, v9

    and-long/2addr v7, v5

    const-wide v9, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v7, v9

    cmp-long v7, v7, v9

    if-eqz v7, :cond_2

    sub-int v7, v4, v2

    not-int v7, v7

    ushr-int/lit8 v7, v7, 0x1f

    const/16 v8, 0x8

    rsub-int/lit8 v7, v7, 0x8

    move v9, v3

    :goto_1
    if-ge v9, v7, :cond_1

    const-wide/16 v10, 0xff

    and-long/2addr v10, v5

    const-wide/16 v12, 0x80

    cmp-long v10, v10, v12

    if-gez v10, :cond_0

    shl-int/lit8 v10, v4, 0x3

    add-int/2addr v10, v9

    .line 367
    aget-object v10, v1, v10

    check-cast v10, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 89
    invoke-virtual {v10}, Landroidx/compose/ui/focus/FocusTargetNode;->commitFocusState$ui_release()V

    :cond_0
    shr-long/2addr v5, v8

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    if-ne v7, v8, :cond_3

    :cond_2
    if-eq v4, v2, :cond_3

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 90
    :cond_3
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusTransactionManager;->states:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v0}, Landroidx/collection/MutableScatterMap;->clear()V

    .line 91
    iput-boolean v3, p0, Landroidx/compose/ui/focus/FocusTransactionManager;->ongoingTransaction:Z

    .line 92
    iget-object p0, p0, Landroidx/compose/ui/focus/FocusTransactionManager;->cancellationListener:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->clear()V

    return-void
.end method


# virtual methods
.method public final getUncommittedFocusState(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/FocusStateImpl;
    .locals 0

    .line 79
    iget-object p0, p0, Landroidx/compose/ui/focus/FocusTransactionManager;->states:Landroidx/collection/MutableScatterMap;

    invoke-virtual {p0, p1}, Landroidx/collection/ScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/focus/FocusStateImpl;

    return-object p0
.end method

.method public final setUncommittedFocusState(Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/ui/focus/FocusStateImpl;)V
    .locals 0

    .line 81
    iget-object p0, p0, Landroidx/compose/ui/focus/FocusTransactionManager;->states:Landroidx/collection/MutableScatterMap;

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1, p2}, Landroidx/collection/MutableScatterMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string p0, "requires a non-null focus state"

    .line 65
    invoke-static {p0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateExceptionForNullCheck(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method
