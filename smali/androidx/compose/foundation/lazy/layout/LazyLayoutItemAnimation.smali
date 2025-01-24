.class public abstract Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;
.super Ljava/lang/Object;
.source "LazyLayoutItemAnimation.kt"


# static fields
.field public static final $stable:I

.field public static final Companion:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation$Companion;

.field private static final NotInitialized:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->Companion:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation$Companion;

    const/16 v0, 0x8

    sput v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->$stable:I

    const v0, 0x7fffffff

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long v2, v0, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v0, v4

    or-long/2addr v0, v2

    .line 32
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->constructor-impl(J)J

    move-result-wide v0

    .line 239
    sput-wide v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->NotInitialized:J

    return-void
.end method

.method public static final synthetic access$getNotInitialized$cp()J
    .locals 2

    .line 41
    sget-wide v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->NotInitialized:J

    return-wide v0
.end method


# virtual methods
.method public abstract animatePlacementDelta-ar5cAso(JZ)V
.end method

.method public abstract cancelPlacementAnimation()V
.end method

.method public abstract getFinalOffset-nOcc-ac()J
.end method

.method public abstract getLayer()Landroidx/compose/ui/graphics/layer/GraphicsLayer;
.end method

.method public abstract getLookaheadOffset-nOcc-ac()J
.end method

.method public abstract getPlacementDelta-nOcc-ac()J
.end method

.method public abstract getRawOffset-nOcc-ac()J
.end method

.method public abstract isRunningMovingAwayAnimation()Z
.end method

.method public abstract release()V
.end method

.method public abstract setFinalOffset--gyyYBs(J)V
.end method

.method public abstract setLookaheadOffset--gyyYBs(J)V
.end method

.method public abstract setRawOffset--gyyYBs(J)V
.end method
