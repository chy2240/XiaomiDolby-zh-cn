.class public final Landroidx/compose/ui/platform/ViewCompositionStrategy$Companion;
.super Ljava/lang/Object;
.source "ViewCompositionStrategy.android.kt"


# static fields
.field static final synthetic $$INSTANCE:Landroidx/compose/ui/platform/ViewCompositionStrategy$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Landroidx/compose/ui/platform/ViewCompositionStrategy$Companion;

    invoke-direct {v0}, Landroidx/compose/ui/platform/ViewCompositionStrategy$Companion;-><init>()V

    sput-object v0, Landroidx/compose/ui/platform/ViewCompositionStrategy$Companion;->$$INSTANCE:Landroidx/compose/ui/platform/ViewCompositionStrategy$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDefault()Landroidx/compose/ui/platform/ViewCompositionStrategy;
    .locals 0

    .line 71
    sget-object p0, Landroidx/compose/ui/platform/ViewCompositionStrategy$DisposeOnDetachedFromWindowOrReleasedFromPool;->INSTANCE:Landroidx/compose/ui/platform/ViewCompositionStrategy$DisposeOnDetachedFromWindowOrReleasedFromPool;

    return-object p0
.end method
