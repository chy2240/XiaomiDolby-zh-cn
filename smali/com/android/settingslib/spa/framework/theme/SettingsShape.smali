.class public final Lcom/android/settingslib/spa/framework/theme/SettingsShape;
.super Ljava/lang/Object;
.source "SettingsShape.kt"


# static fields
.field private static final CornerExtraLarge:Landroidx/compose/foundation/shape/RoundedCornerShape;

.field private static final CornerExtraSmall:Landroidx/compose/foundation/shape/RoundedCornerShape;

.field private static final CornerMedium:Landroidx/compose/foundation/shape/RoundedCornerShape;

.field public static final INSTANCE:Lcom/android/settingslib/spa/framework/theme/SettingsShape;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settingslib/spa/framework/theme/SettingsShape;

    invoke-direct {v0}, Lcom/android/settingslib/spa/framework/theme/SettingsShape;-><init>()V

    sput-object v0, Lcom/android/settingslib/spa/framework/theme/SettingsShape;->INSTANCE:Lcom/android/settingslib/spa/framework/theme/SettingsShape;

    const/4 v0, 0x4

    int-to-float v0, v0

    .line 109
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 23
    invoke-static {v0}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/spa/framework/theme/SettingsShape;->CornerExtraSmall:Landroidx/compose/foundation/shape/RoundedCornerShape;

    const/16 v0, 0xc

    int-to-float v0, v0

    .line 109
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 25
    invoke-static {v0}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/spa/framework/theme/SettingsShape;->CornerMedium:Landroidx/compose/foundation/shape/RoundedCornerShape;

    const/16 v0, 0x1c

    int-to-float v0, v0

    .line 109
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 27
    invoke-static {v0}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/spa/framework/theme/SettingsShape;->CornerExtraLarge:Landroidx/compose/foundation/shape/RoundedCornerShape;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCornerExtraLarge()Landroidx/compose/foundation/shape/RoundedCornerShape;
    .locals 0

    .line 27
    sget-object p0, Lcom/android/settingslib/spa/framework/theme/SettingsShape;->CornerExtraLarge:Landroidx/compose/foundation/shape/RoundedCornerShape;

    return-object p0
.end method
