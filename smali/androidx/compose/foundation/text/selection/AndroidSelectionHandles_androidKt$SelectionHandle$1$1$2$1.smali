.class final Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt$SelectionHandle$1$1$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AndroidSelectionHandles.android.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $offsetProvider:Landroidx/compose/foundation/text/selection/OffsetProvider;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/text/selection/OffsetProvider;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt$SelectionHandle$1$1$2$1;->$offsetProvider:Landroidx/compose/foundation/text/selection/OffsetProvider;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Boolean;
    .locals 4

    .line 113
    iget-object p0, p0, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt$SelectionHandle$1$1$2$1;->$offsetProvider:Landroidx/compose/foundation/text/selection/OffsetProvider;

    invoke-interface {p0}, Landroidx/compose/foundation/text/selection/OffsetProvider;->provide-F1C5BW0()J

    move-result-wide v0

    const-wide v2, 0x7fffffff7fffffffL

    and-long/2addr v0, v2

    const-wide v2, 0x7fc000007fc00000L    # 2.247117487993712E307

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 273
    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 113
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt$SelectionHandle$1$1$2$1;->invoke()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
