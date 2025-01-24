.class public final Landroidx/compose/foundation/contextmenu/ContextMenuPopupPositionProvider;
.super Ljava/lang/Object;
.source "ContextMenuPopupPositionProvider.android.kt"

# interfaces
.implements Landroidx/compose/ui/window/PopupPositionProvider;


# instance fields
.field private final localPosition:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method private constructor <init>(J)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-wide p1, p0, Landroidx/compose/foundation/contextmenu/ContextMenuPopupPositionProvider;->localPosition:J

    return-void
.end method

.method public synthetic constructor <init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/contextmenu/ContextMenuPopupPositionProvider;-><init>(J)V

    return-void
.end method


# virtual methods
.method public calculatePosition-llwVHH4(Landroidx/compose/ui/unit/IntRect;JLandroidx/compose/ui/unit/LayoutDirection;J)J
    .locals 8

    .line 60
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->getLeft()I

    move-result v0

    iget-wide v1, p0, Landroidx/compose/foundation/contextmenu/ContextMenuPopupPositionProvider;->localPosition:J

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0x20

    shr-long v2, p5, v1

    long-to-int v2, v2

    shr-long v3, p2, v1

    long-to-int v3, v3

    .line 63
    sget-object v4, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne p4, v4, :cond_0

    const/4 p4, 0x1

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    .line 59
    :goto_0
    invoke-static {v0, v2, v3, p4}, Landroidx/compose/foundation/contextmenu/ContextMenuPopupPositionProvider_androidKt;->alignPopupAxis(IIIZ)I

    move-result p4

    .line 67
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->getTop()I

    move-result p1

    iget-wide v2, p0, Landroidx/compose/foundation/contextmenu/ContextMenuPopupPositionProvider;->localPosition:J

    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result p0

    add-int v2, p1, p0

    const-wide p0, 0xffffffffL

    and-long/2addr p5, p0

    long-to-int v3, p5

    and-long/2addr p2, p0

    long-to-int v4, p2

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 66
    invoke-static/range {v2 .. v7}, Landroidx/compose/foundation/contextmenu/ContextMenuPopupPositionProvider_androidKt;->alignPopupAxis$default(IIIZILjava/lang/Object;)I

    move-result p2

    int-to-long p3, p4

    shl-long/2addr p3, v1

    int-to-long p5, p2

    and-long/2addr p0, p5

    or-long/2addr p0, p3

    .line 32
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/IntOffset;->constructor-impl(J)J

    move-result-wide p0

    return-wide p0
.end method
