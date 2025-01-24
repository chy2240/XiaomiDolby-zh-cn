.class final Landroidx/compose/ui/platform/AndroidViewConfigurationApi34;
.super Ljava/lang/Object;
.source "AndroidViewConfiguration.android.kt"


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/platform/AndroidViewConfigurationApi34;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Landroidx/compose/ui/platform/AndroidViewConfigurationApi34;

    invoke-direct {v0}, Landroidx/compose/ui/platform/AndroidViewConfigurationApi34;-><init>()V

    sput-object v0, Landroidx/compose/ui/platform/AndroidViewConfigurationApi34;->INSTANCE:Landroidx/compose/ui/platform/AndroidViewConfigurationApi34;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getScaledHandwritingGestureLineMargin(Landroid/view/ViewConfiguration;)F
    .locals 0

    .line 68
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledHandwritingGestureLineMargin()I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method public final getScaledHandwritingSlop(Landroid/view/ViewConfiguration;)F
    .locals 0

    .line 65
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledHandwritingSlop()I

    move-result p0

    int-to-float p0, p0

    return p0
.end method
