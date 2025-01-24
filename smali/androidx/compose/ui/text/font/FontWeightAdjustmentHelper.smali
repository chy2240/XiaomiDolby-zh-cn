.class public final Landroidx/compose/ui/text/font/FontWeightAdjustmentHelper;
.super Ljava/lang/Object;
.source "AndroidFontResolveInterceptor.android.kt"


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/text/font/FontWeightAdjustmentHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Landroidx/compose/ui/text/font/FontWeightAdjustmentHelper;

    invoke-direct {v0}, Landroidx/compose/ui/text/font/FontWeightAdjustmentHelper;-><init>()V

    sput-object v0, Landroidx/compose/ui/text/font/FontWeightAdjustmentHelper;->INSTANCE:Landroidx/compose/ui/text/font/FontWeightAdjustmentHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getFontWeightAdjustment(Landroid/content/Context;)I
    .locals 0

    .line 65
    sget-object p0, Landroidx/compose/ui/text/font/FontWeightAdjustmentHelperApi31;->INSTANCE:Landroidx/compose/ui/text/font/FontWeightAdjustmentHelperApi31;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/font/FontWeightAdjustmentHelperApi31;->fontWeightAdjustment(Landroid/content/Context;)I

    move-result p0

    return p0
.end method
