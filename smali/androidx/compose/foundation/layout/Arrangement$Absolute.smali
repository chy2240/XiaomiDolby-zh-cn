.class public final Landroidx/compose/foundation/layout/Arrangement$Absolute;
.super Ljava/lang/Object;
.source "Arrangement.kt"


# static fields
.field private static final Center:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

.field public static final INSTANCE:Landroidx/compose/foundation/layout/Arrangement$Absolute;

.field private static final Left:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

.field private static final Right:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

.field private static final SpaceAround:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

.field private static final SpaceBetween:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

.field private static final SpaceEvenly:Landroidx/compose/foundation/layout/Arrangement$Horizontal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/foundation/layout/Arrangement$Absolute;

    invoke-direct {v0}, Landroidx/compose/foundation/layout/Arrangement$Absolute;-><init>()V

    sput-object v0, Landroidx/compose/foundation/layout/Arrangement$Absolute;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement$Absolute;

    .line 367
    new-instance v0, Landroidx/compose/foundation/layout/Arrangement$Absolute$Left$1;

    invoke-direct {v0}, Landroidx/compose/foundation/layout/Arrangement$Absolute$Left$1;-><init>()V

    sput-object v0, Landroidx/compose/foundation/layout/Arrangement$Absolute;->Left:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    .line 389
    new-instance v0, Landroidx/compose/foundation/layout/Arrangement$Absolute$Center$1;

    invoke-direct {v0}, Landroidx/compose/foundation/layout/Arrangement$Absolute$Center$1;-><init>()V

    sput-object v0, Landroidx/compose/foundation/layout/Arrangement$Absolute;->Center:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    .line 412
    new-instance v0, Landroidx/compose/foundation/layout/Arrangement$Absolute$Right$1;

    invoke-direct {v0}, Landroidx/compose/foundation/layout/Arrangement$Absolute$Right$1;-><init>()V

    sput-object v0, Landroidx/compose/foundation/layout/Arrangement$Absolute;->Right:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    .line 435
    new-instance v0, Landroidx/compose/foundation/layout/Arrangement$Absolute$SpaceBetween$1;

    invoke-direct {v0}, Landroidx/compose/foundation/layout/Arrangement$Absolute$SpaceBetween$1;-><init>()V

    sput-object v0, Landroidx/compose/foundation/layout/Arrangement$Absolute;->SpaceBetween:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    .line 458
    new-instance v0, Landroidx/compose/foundation/layout/Arrangement$Absolute$SpaceEvenly$1;

    invoke-direct {v0}, Landroidx/compose/foundation/layout/Arrangement$Absolute$SpaceEvenly$1;-><init>()V

    sput-object v0, Landroidx/compose/foundation/layout/Arrangement$Absolute;->SpaceEvenly:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    .line 482
    new-instance v0, Landroidx/compose/foundation/layout/Arrangement$Absolute$SpaceAround$1;

    invoke-direct {v0}, Landroidx/compose/foundation/layout/Arrangement$Absolute$SpaceAround$1;-><init>()V

    sput-object v0, Landroidx/compose/foundation/layout/Arrangement$Absolute;->SpaceAround:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLeft()Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .locals 0

    .line 366
    sget-object p0, Landroidx/compose/foundation/layout/Arrangement$Absolute;->Left:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    return-object p0
.end method

.method public final getRight()Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .locals 0

    .line 411
    sget-object p0, Landroidx/compose/foundation/layout/Arrangement$Absolute;->Right:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    return-object p0
.end method
