.class public final Landroidx/compose/foundation/contextmenu/ContextMenuState$Status$Open;
.super Landroidx/compose/foundation/contextmenu/ContextMenuState$Status;
.source "ContextMenuState.android.kt"


# instance fields
.field private final offset:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method private constructor <init>(J)V
    .locals 2

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, v0}, Landroidx/compose/foundation/contextmenu/ContextMenuState$Status;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 50
    iput-wide p1, p0, Landroidx/compose/foundation/contextmenu/ContextMenuState$Status$Open;->offset:J

    const-wide v0, 0x7fffffff7fffffffL

    and-long p0, p1, v0

    const-wide v0, 0x7fc000007fc00000L    # 2.247117487993712E307

    cmp-long p0, p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    .line 53
    const-string p0, "ContextMenuState.Status should never be open with an unspecified offset. Use ContextMenuState.Status.Closed instead."

    .line 52
    invoke-static {p0}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public synthetic constructor <init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/contextmenu/ContextMenuState$Status$Open;-><init>(J)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 62
    :cond_0
    instance-of v0, p1, Landroidx/compose/foundation/contextmenu/ContextMenuState$Status$Open;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 63
    :cond_1
    iget-wide v0, p0, Landroidx/compose/foundation/contextmenu/ContextMenuState$Status$Open;->offset:J

    check-cast p1, Landroidx/compose/foundation/contextmenu/ContextMenuState$Status$Open;

    iget-wide p0, p1, Landroidx/compose/foundation/contextmenu/ContextMenuState$Status$Open;->offset:J

    invoke-static {v0, v1, p0, p1}, Landroidx/compose/ui/geometry/Offset;->equals-impl0(JJ)Z

    move-result p0

    return p0
.end method

.method public final getOffset-F1C5BW0()J
    .locals 2

    .line 50
    iget-wide v0, p0, Landroidx/compose/foundation/contextmenu/ContextMenuState$Status$Open;->offset:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    .line 58
    iget-wide v0, p0, Landroidx/compose/foundation/contextmenu/ContextMenuState$Status$Open;->offset:J

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->hashCode-impl(J)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Open(offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/compose/foundation/contextmenu/ContextMenuState$Status$Open;->offset:J

    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Offset;->toString-impl(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
