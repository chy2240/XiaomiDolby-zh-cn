.class public final Landroidx/compose/ui/platform/OutlineVerificationHelper;
.super Ljava/lang/Object;
.source "OutlineResolver.android.kt"


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/platform/OutlineVerificationHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Landroidx/compose/ui/platform/OutlineVerificationHelper;

    invoke-direct {v0}, Landroidx/compose/ui/platform/OutlineVerificationHelper;-><init>()V

    sput-object v0, Landroidx/compose/ui/platform/OutlineVerificationHelper;->INSTANCE:Landroidx/compose/ui/platform/OutlineVerificationHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final setPath(Landroid/graphics/Outline;Landroidx/compose/ui/graphics/Path;)V
    .locals 0

    .line 36
    instance-of p0, p2, Landroidx/compose/ui/graphics/AndroidPath;

    if-eqz p0, :cond_0

    .line 37
    check-cast p2, Landroidx/compose/ui/graphics/AndroidPath;

    invoke-virtual {p2}, Landroidx/compose/ui/graphics/AndroidPath;->getInternalPath()Landroid/graphics/Path;

    move-result-object p0

    .line 319
    invoke-virtual {p1, p0}, Landroid/graphics/Outline;->setPath(Landroid/graphics/Path;)V

    return-void

    .line 39
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Unable to obtain android.graphics.Path"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
