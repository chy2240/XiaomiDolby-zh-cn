.class public final Landroidx/compose/ui/text/TextInclusionStrategy$Companion;
.super Ljava/lang/Object;
.source "TextInclusionStrategy.kt"


# static fields
.field static final synthetic $$INSTANCE:Landroidx/compose/ui/text/TextInclusionStrategy$Companion;

.field private static final AnyOverlap:Landroidx/compose/ui/text/TextInclusionStrategy;

.field private static final ContainsAll:Landroidx/compose/ui/text/TextInclusionStrategy;

.field private static final ContainsCenter:Landroidx/compose/ui/text/TextInclusionStrategy;


# direct methods
.method public static synthetic $r8$lambda$2X1CuRkunX7FBBmytqSKk6vS6sQ(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/compose/ui/text/TextInclusionStrategy$Companion;->ContainsAll$lambda$1(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$SHDbA_wDSJbtBuVzHOW4V5oymjs(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/compose/ui/text/TextInclusionStrategy$Companion;->ContainsCenter$lambda$2(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$mp9rjJu0uaONMo14IZlDWVI4Ljc(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/compose/ui/text/TextInclusionStrategy$Companion;->AnyOverlap$lambda$0(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/text/TextInclusionStrategy$Companion;

    invoke-direct {v0}, Landroidx/compose/ui/text/TextInclusionStrategy$Companion;-><init>()V

    sput-object v0, Landroidx/compose/ui/text/TextInclusionStrategy$Companion;->$$INSTANCE:Landroidx/compose/ui/text/TextInclusionStrategy$Companion;

    .line 43
    new-instance v0, Landroidx/compose/ui/text/TextInclusionStrategy$Companion$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/compose/ui/text/TextInclusionStrategy$Companion$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroidx/compose/ui/text/TextInclusionStrategy$Companion;->AnyOverlap:Landroidx/compose/ui/text/TextInclusionStrategy;

    .line 49
    new-instance v0, Landroidx/compose/ui/text/TextInclusionStrategy$Companion$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroidx/compose/ui/text/TextInclusionStrategy$Companion$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Landroidx/compose/ui/text/TextInclusionStrategy$Companion;->ContainsAll:Landroidx/compose/ui/text/TextInclusionStrategy;

    .line 61
    new-instance v0, Landroidx/compose/ui/text/TextInclusionStrategy$Companion$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroidx/compose/ui/text/TextInclusionStrategy$Companion$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Landroidx/compose/ui/text/TextInclusionStrategy$Companion;->ContainsCenter:Landroidx/compose/ui/text/TextInclusionStrategy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final AnyOverlap$lambda$0(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;)Z
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Landroidx/compose/ui/geometry/Rect;->overlaps(Landroidx/compose/ui/geometry/Rect;)Z

    move-result p0

    return p0
.end method

.method private static final ContainsAll$lambda$1(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;)Z
    .locals 2

    .line 50
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v0

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 52
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    move-result v0

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 53
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v0

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 54
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    move-result p0

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    move-result p1

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static final ContainsCenter$lambda$2(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;)Z
    .locals 2

    .line 62
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getCenter-F1C5BW0()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroidx/compose/ui/geometry/Rect;->contains-k-4lQ0M(J)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final getAnyOverlap()Landroidx/compose/ui/text/TextInclusionStrategy;
    .locals 0

    .line 43
    sget-object p0, Landroidx/compose/ui/text/TextInclusionStrategy$Companion;->AnyOverlap:Landroidx/compose/ui/text/TextInclusionStrategy;

    return-object p0
.end method

.method public final getContainsCenter()Landroidx/compose/ui/text/TextInclusionStrategy;
    .locals 0

    .line 61
    sget-object p0, Landroidx/compose/ui/text/TextInclusionStrategy$Companion;->ContainsCenter:Landroidx/compose/ui/text/TextInclusionStrategy;

    return-object p0
.end method
