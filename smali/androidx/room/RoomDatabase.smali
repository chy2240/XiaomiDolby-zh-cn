.class public abstract Landroidx/room/RoomDatabase;
.super Ljava/lang/Object;
.source "RoomDatabase.android.kt"


# static fields
.field public static final Companion:Landroidx/room/RoomDatabase$Companion;


# instance fields
.field private final closeBarrier:Landroidx/room/concurrent/CloseBarrier;

.field private coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field private final suspendingTransactionId:Ljava/lang/ThreadLocal;

.field private final typeConverters:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Landroidx/room/RoomDatabase$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/room/RoomDatabase$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/room/RoomDatabase;->Companion:Landroidx/room/RoomDatabase$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    new-instance v0, Landroidx/room/concurrent/CloseBarrier;

    new-instance v1, Landroidx/room/RoomDatabase$closeBarrier$1;

    invoke-direct {v1, p0}, Landroidx/room/RoomDatabase$closeBarrier$1;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Landroidx/room/concurrent/CloseBarrier;-><init>(Lkotlin/jvm/functions/Function0;)V

    iput-object v0, p0, Landroidx/room/RoomDatabase;->closeBarrier:Landroidx/room/concurrent/CloseBarrier;

    .line 175
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Landroidx/room/RoomDatabase;->suspendingTransactionId:Ljava/lang/ThreadLocal;

    .line 177
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroidx/room/RoomDatabase;->typeConverters:Ljava/util/Map;

    return-void
.end method

.method public static final synthetic access$onClosed(Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 101
    invoke-direct {p0}, Landroidx/room/RoomDatabase;->onClosed()V

    return-void
.end method

.method private final onClosed()V
    .locals 3

    .line 558
    iget-object v0, p0, Landroidx/room/RoomDatabase;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "coroutineScope"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/CoroutineScopeKt;->cancel$default(Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 559
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    throw v1
.end method


# virtual methods
.method public getInvalidationTracker()Landroidx/room/InvalidationTracker;
    .locals 0

    .line 145
    const-string p0, "internalTracker"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
