.class public final Landroidx/compose/ui/Alignment$Companion;
.super Ljava/lang/Object;
.source "Alignment.kt"


# static fields
.field static final synthetic $$INSTANCE:Landroidx/compose/ui/Alignment$Companion;

.field private static final Bottom:Landroidx/compose/ui/Alignment$Vertical;

.field private static final BottomCenter:Landroidx/compose/ui/Alignment;

.field private static final BottomEnd:Landroidx/compose/ui/Alignment;

.field private static final BottomStart:Landroidx/compose/ui/Alignment;

.field private static final Center:Landroidx/compose/ui/Alignment;

.field private static final CenterEnd:Landroidx/compose/ui/Alignment;

.field private static final CenterHorizontally:Landroidx/compose/ui/Alignment$Horizontal;

.field private static final CenterStart:Landroidx/compose/ui/Alignment;

.field private static final CenterVertically:Landroidx/compose/ui/Alignment$Vertical;

.field private static final End:Landroidx/compose/ui/Alignment$Horizontal;

.field private static final Start:Landroidx/compose/ui/Alignment$Horizontal;

.field private static final Top:Landroidx/compose/ui/Alignment$Vertical;

.field private static final TopCenter:Landroidx/compose/ui/Alignment;

.field private static final TopEnd:Landroidx/compose/ui/Alignment;

.field private static final TopStart:Landroidx/compose/ui/Alignment;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroidx/compose/ui/Alignment$Companion;

    invoke-direct {v0}, Landroidx/compose/ui/Alignment$Companion;-><init>()V

    sput-object v0, Landroidx/compose/ui/Alignment$Companion;->$$INSTANCE:Landroidx/compose/ui/Alignment$Companion;

    .line 88
    new-instance v0, Landroidx/compose/ui/BiasAlignment;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-direct {v0, v1, v1}, Landroidx/compose/ui/BiasAlignment;-><init>(FF)V

    sput-object v0, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/Alignment;

    .line 89
    new-instance v0, Landroidx/compose/ui/BiasAlignment;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroidx/compose/ui/BiasAlignment;-><init>(FF)V

    sput-object v0, Landroidx/compose/ui/Alignment$Companion;->TopCenter:Landroidx/compose/ui/Alignment;

    .line 90
    new-instance v0, Landroidx/compose/ui/BiasAlignment;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v3, v1}, Landroidx/compose/ui/BiasAlignment;-><init>(FF)V

    sput-object v0, Landroidx/compose/ui/Alignment$Companion;->TopEnd:Landroidx/compose/ui/Alignment;

    .line 91
    new-instance v0, Landroidx/compose/ui/BiasAlignment;

    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/BiasAlignment;-><init>(FF)V

    sput-object v0, Landroidx/compose/ui/Alignment$Companion;->CenterStart:Landroidx/compose/ui/Alignment;

    .line 92
    new-instance v0, Landroidx/compose/ui/BiasAlignment;

    invoke-direct {v0, v2, v2}, Landroidx/compose/ui/BiasAlignment;-><init>(FF)V

    sput-object v0, Landroidx/compose/ui/Alignment$Companion;->Center:Landroidx/compose/ui/Alignment;

    .line 93
    new-instance v0, Landroidx/compose/ui/BiasAlignment;

    invoke-direct {v0, v3, v2}, Landroidx/compose/ui/BiasAlignment;-><init>(FF)V

    sput-object v0, Landroidx/compose/ui/Alignment$Companion;->CenterEnd:Landroidx/compose/ui/Alignment;

    .line 94
    new-instance v0, Landroidx/compose/ui/BiasAlignment;

    invoke-direct {v0, v1, v3}, Landroidx/compose/ui/BiasAlignment;-><init>(FF)V

    sput-object v0, Landroidx/compose/ui/Alignment$Companion;->BottomStart:Landroidx/compose/ui/Alignment;

    .line 95
    new-instance v0, Landroidx/compose/ui/BiasAlignment;

    invoke-direct {v0, v2, v3}, Landroidx/compose/ui/BiasAlignment;-><init>(FF)V

    sput-object v0, Landroidx/compose/ui/Alignment$Companion;->BottomCenter:Landroidx/compose/ui/Alignment;

    .line 96
    new-instance v0, Landroidx/compose/ui/BiasAlignment;

    invoke-direct {v0, v3, v3}, Landroidx/compose/ui/BiasAlignment;-><init>(FF)V

    sput-object v0, Landroidx/compose/ui/Alignment$Companion;->BottomEnd:Landroidx/compose/ui/Alignment;

    .line 99
    new-instance v0, Landroidx/compose/ui/BiasAlignment$Vertical;

    invoke-direct {v0, v1}, Landroidx/compose/ui/BiasAlignment$Vertical;-><init>(F)V

    sput-object v0, Landroidx/compose/ui/Alignment$Companion;->Top:Landroidx/compose/ui/Alignment$Vertical;

    .line 100
    new-instance v0, Landroidx/compose/ui/BiasAlignment$Vertical;

    invoke-direct {v0, v2}, Landroidx/compose/ui/BiasAlignment$Vertical;-><init>(F)V

    sput-object v0, Landroidx/compose/ui/Alignment$Companion;->CenterVertically:Landroidx/compose/ui/Alignment$Vertical;

    .line 101
    new-instance v0, Landroidx/compose/ui/BiasAlignment$Vertical;

    invoke-direct {v0, v3}, Landroidx/compose/ui/BiasAlignment$Vertical;-><init>(F)V

    sput-object v0, Landroidx/compose/ui/Alignment$Companion;->Bottom:Landroidx/compose/ui/Alignment$Vertical;

    .line 104
    new-instance v0, Landroidx/compose/ui/BiasAlignment$Horizontal;

    invoke-direct {v0, v1}, Landroidx/compose/ui/BiasAlignment$Horizontal;-><init>(F)V

    sput-object v0, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/Alignment$Horizontal;

    .line 105
    new-instance v0, Landroidx/compose/ui/BiasAlignment$Horizontal;

    invoke-direct {v0, v2}, Landroidx/compose/ui/BiasAlignment$Horizontal;-><init>(F)V

    sput-object v0, Landroidx/compose/ui/Alignment$Companion;->CenterHorizontally:Landroidx/compose/ui/Alignment$Horizontal;

    .line 106
    new-instance v0, Landroidx/compose/ui/BiasAlignment$Horizontal;

    invoke-direct {v0, v3}, Landroidx/compose/ui/BiasAlignment$Horizontal;-><init>(F)V

    sput-object v0, Landroidx/compose/ui/Alignment$Companion;->End:Landroidx/compose/ui/Alignment$Horizontal;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBottom()Landroidx/compose/ui/Alignment$Vertical;
    .locals 0

    .line 101
    sget-object p0, Landroidx/compose/ui/Alignment$Companion;->Bottom:Landroidx/compose/ui/Alignment$Vertical;

    return-object p0
.end method

.method public final getBottomCenter()Landroidx/compose/ui/Alignment;
    .locals 0

    .line 95
    sget-object p0, Landroidx/compose/ui/Alignment$Companion;->BottomCenter:Landroidx/compose/ui/Alignment;

    return-object p0
.end method

.method public final getBottomEnd()Landroidx/compose/ui/Alignment;
    .locals 0

    .line 96
    sget-object p0, Landroidx/compose/ui/Alignment$Companion;->BottomEnd:Landroidx/compose/ui/Alignment;

    return-object p0
.end method

.method public final getBottomStart()Landroidx/compose/ui/Alignment;
    .locals 0

    .line 94
    sget-object p0, Landroidx/compose/ui/Alignment$Companion;->BottomStart:Landroidx/compose/ui/Alignment;

    return-object p0
.end method

.method public final getCenter()Landroidx/compose/ui/Alignment;
    .locals 0

    .line 92
    sget-object p0, Landroidx/compose/ui/Alignment$Companion;->Center:Landroidx/compose/ui/Alignment;

    return-object p0
.end method

.method public final getCenterEnd()Landroidx/compose/ui/Alignment;
    .locals 0

    .line 93
    sget-object p0, Landroidx/compose/ui/Alignment$Companion;->CenterEnd:Landroidx/compose/ui/Alignment;

    return-object p0
.end method

.method public final getCenterHorizontally()Landroidx/compose/ui/Alignment$Horizontal;
    .locals 0

    .line 105
    sget-object p0, Landroidx/compose/ui/Alignment$Companion;->CenterHorizontally:Landroidx/compose/ui/Alignment$Horizontal;

    return-object p0
.end method

.method public final getCenterStart()Landroidx/compose/ui/Alignment;
    .locals 0

    .line 91
    sget-object p0, Landroidx/compose/ui/Alignment$Companion;->CenterStart:Landroidx/compose/ui/Alignment;

    return-object p0
.end method

.method public final getCenterVertically()Landroidx/compose/ui/Alignment$Vertical;
    .locals 0

    .line 100
    sget-object p0, Landroidx/compose/ui/Alignment$Companion;->CenterVertically:Landroidx/compose/ui/Alignment$Vertical;

    return-object p0
.end method

.method public final getEnd()Landroidx/compose/ui/Alignment$Horizontal;
    .locals 0

    .line 106
    sget-object p0, Landroidx/compose/ui/Alignment$Companion;->End:Landroidx/compose/ui/Alignment$Horizontal;

    return-object p0
.end method

.method public final getStart()Landroidx/compose/ui/Alignment$Horizontal;
    .locals 0

    .line 104
    sget-object p0, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/Alignment$Horizontal;

    return-object p0
.end method

.method public final getTop()Landroidx/compose/ui/Alignment$Vertical;
    .locals 0

    .line 99
    sget-object p0, Landroidx/compose/ui/Alignment$Companion;->Top:Landroidx/compose/ui/Alignment$Vertical;

    return-object p0
.end method

.method public final getTopCenter()Landroidx/compose/ui/Alignment;
    .locals 0

    .line 89
    sget-object p0, Landroidx/compose/ui/Alignment$Companion;->TopCenter:Landroidx/compose/ui/Alignment;

    return-object p0
.end method

.method public final getTopEnd()Landroidx/compose/ui/Alignment;
    .locals 0

    .line 90
    sget-object p0, Landroidx/compose/ui/Alignment$Companion;->TopEnd:Landroidx/compose/ui/Alignment;

    return-object p0
.end method

.method public final getTopStart()Landroidx/compose/ui/Alignment;
    .locals 0

    .line 88
    sget-object p0, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/Alignment;

    return-object p0
.end method
