.class public final Landroidx/compose/foundation/PlatformMagnifierFactory$Companion;
.super Ljava/lang/Object;
.source "PlatformMagnifier.android.kt"


# static fields
.field static final synthetic $$INSTANCE:Landroidx/compose/foundation/PlatformMagnifierFactory$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Landroidx/compose/foundation/PlatformMagnifierFactory$Companion;

    invoke-direct {v0}, Landroidx/compose/foundation/PlatformMagnifierFactory$Companion;-><init>()V

    sput-object v0, Landroidx/compose/foundation/PlatformMagnifierFactory$Companion;->$$INSTANCE:Landroidx/compose/foundation/PlatformMagnifierFactory$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getForCurrentPlatform()Landroidx/compose/foundation/PlatformMagnifierFactory;
    .locals 2

    const/4 p0, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 57
    invoke-static {v1, p0, v0}, Landroidx/compose/foundation/Magnifier_androidKt;->isPlatformMagnifierSupported$default(IILjava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 63
    sget-object p0, Landroidx/compose/foundation/PlatformMagnifierFactoryApi29Impl;->INSTANCE:Landroidx/compose/foundation/PlatformMagnifierFactoryApi29Impl;

    return-object p0

    .line 58
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 59
    const-string v0, "Magnifier is only supported on API level 28 and higher."

    .line 58
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
