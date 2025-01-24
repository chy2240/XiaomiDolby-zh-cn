.class public final Landroidx/compose/material3/RippleDefaults;
.super Ljava/lang/Object;
.source "Ripple.kt"


# static fields
.field public static final INSTANCE:Landroidx/compose/material3/RippleDefaults;

.field private static final RippleAlpha:Landroidx/compose/material/ripple/RippleAlpha;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroidx/compose/material3/RippleDefaults;

    invoke-direct {v0}, Landroidx/compose/material3/RippleDefaults;-><init>()V

    sput-object v0, Landroidx/compose/material3/RippleDefaults;->INSTANCE:Landroidx/compose/material3/RippleDefaults;

    .line 135
    new-instance v0, Landroidx/compose/material/ripple/RippleAlpha;

    const v1, 0x3dcccccd    # 0.1f

    const v2, 0x3da3d70a    # 0.08f

    const v3, 0x3e23d70a    # 0.16f

    invoke-direct {v0, v3, v1, v2, v1}, Landroidx/compose/material/ripple/RippleAlpha;-><init>(FFFF)V

    sput-object v0, Landroidx/compose/material3/RippleDefaults;->RippleAlpha:Landroidx/compose/material/ripple/RippleAlpha;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getRippleAlpha()Landroidx/compose/material/ripple/RippleAlpha;
    .locals 0

    .line 134
    sget-object p0, Landroidx/compose/material3/RippleDefaults;->RippleAlpha:Landroidx/compose/material/ripple/RippleAlpha;

    return-object p0
.end method
