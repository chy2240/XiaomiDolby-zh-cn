.class final Landroidx/compose/ui/SessionMutex$Session;
.super Ljava/lang/Object;
.source "SessionMutex.kt"


# instance fields
.field private final job:Lkotlinx/coroutines/Job;

.field private final value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/Job;Ljava/lang/Object;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/SessionMutex$Session;->job:Lkotlinx/coroutines/Job;

    iput-object p2, p0, Landroidx/compose/ui/SessionMutex$Session;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getJob()Lkotlinx/coroutines/Job;
    .locals 0

    .line 72
    iget-object p0, p0, Landroidx/compose/ui/SessionMutex$Session;->job:Lkotlinx/coroutines/Job;

    return-object p0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 0

    .line 72
    iget-object p0, p0, Landroidx/compose/ui/SessionMutex$Session;->value:Ljava/lang/Object;

    return-object p0
.end method
