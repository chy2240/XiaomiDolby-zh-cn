.class public final Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement$Companion;
.super Ljava/lang/Object;
.source "LazyLayoutStickyItems.kt"


# static fields
.field static final synthetic $$INSTANCE:Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement$Companion;

.field private static final StickToTopPlacement:Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement$Companion;

    invoke-direct {v0}, Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement$Companion;-><init>()V

    sput-object v0, Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement$Companion;->$$INSTANCE:Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement$Companion;

    .line 75
    new-instance v0, Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement$Companion$StickToTopPlacement$1;

    invoke-direct {v0}, Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement$Companion$StickToTopPlacement$1;-><init>()V

    sput-object v0, Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement$Companion;->StickToTopPlacement:Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getStickToTopPlacement()Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement;
    .locals 0

    .line 74
    sget-object p0, Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement$Companion;->StickToTopPlacement:Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement;

    return-object p0
.end method
