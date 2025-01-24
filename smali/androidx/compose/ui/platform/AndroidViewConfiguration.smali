.class public final Landroidx/compose/ui/platform/AndroidViewConfiguration;
.super Ljava/lang/Object;
.source "AndroidViewConfiguration.android.kt"

# interfaces
.implements Landroidx/compose/ui/platform/ViewConfiguration;


# instance fields
.field private final viewConfiguration:Landroid/view/ViewConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewConfiguration;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/platform/AndroidViewConfiguration;->viewConfiguration:Landroid/view/ViewConfiguration;

    return-void
.end method


# virtual methods
.method public getDoubleTapMinTimeMillis()J
    .locals 2

    .line 0
    const-wide/16 v0, 0x28

    return-wide v0
.end method

.method public getDoubleTapTimeoutMillis()J
    .locals 2

    .line 34
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method public getHandwritingGestureLineMargin()F
    .locals 1

    .line 56
    sget-object v0, Landroidx/compose/ui/platform/AndroidViewConfigurationApi34;->INSTANCE:Landroidx/compose/ui/platform/AndroidViewConfigurationApi34;

    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidViewConfiguration;->viewConfiguration:Landroid/view/ViewConfiguration;

    invoke-virtual {v0, p0}, Landroidx/compose/ui/platform/AndroidViewConfigurationApi34;->getScaledHandwritingGestureLineMargin(Landroid/view/ViewConfiguration;)F

    move-result p0

    return p0
.end method

.method public getHandwritingSlop()F
    .locals 1

    .line 45
    sget-object v0, Landroidx/compose/ui/platform/AndroidViewConfigurationApi34;->INSTANCE:Landroidx/compose/ui/platform/AndroidViewConfigurationApi34;

    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidViewConfiguration;->viewConfiguration:Landroid/view/ViewConfiguration;

    invoke-virtual {v0, p0}, Landroidx/compose/ui/platform/AndroidViewConfigurationApi34;->getScaledHandwritingSlop(Landroid/view/ViewConfiguration;)F

    move-result p0

    return p0
.end method

.method public getLongPressTimeoutMillis()J
    .locals 2

    .line 31
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method public getMaximumFlingVelocity()F
    .locals 0

    .line 51
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidViewConfiguration;->viewConfiguration:Landroid/view/ViewConfiguration;

    invoke-virtual {p0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method public getTouchSlop()F
    .locals 0

    .line 40
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidViewConfiguration;->viewConfiguration:Landroid/view/ViewConfiguration;

    invoke-virtual {p0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p0

    int-to-float p0, p0

    return p0
.end method
