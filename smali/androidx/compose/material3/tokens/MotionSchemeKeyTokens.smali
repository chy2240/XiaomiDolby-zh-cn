.class public final enum Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;
.super Ljava/lang/Enum;
.source "MotionSchemeKeyTokens.kt"


# static fields
.field private static final synthetic $VALUES:[Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;

.field public static final enum DefaultEffects:Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;

.field public static final enum DefaultSpatial:Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;

.field public static final enum FastEffects:Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;

.field public static final enum FastSpatial:Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;

.field public static final enum SlowEffects:Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;

.field public static final enum SlowSpatial:Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;


# direct methods
.method private static final synthetic $values()[Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;
    .locals 6

    .line 0
    sget-object v0, Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;->DefaultSpatial:Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;

    sget-object v1, Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;->FastSpatial:Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;

    sget-object v2, Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;->SlowSpatial:Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;

    sget-object v3, Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;->DefaultEffects:Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;

    sget-object v4, Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;->FastEffects:Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;

    sget-object v5, Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;->SlowEffects:Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;

    filled-new-array/range {v0 .. v5}, [Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 21
    new-instance v0, Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;

    const-string v1, "DefaultSpatial"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;->DefaultSpatial:Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;

    .line 22
    new-instance v0, Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;

    const-string v1, "FastSpatial"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;->FastSpatial:Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;

    .line 23
    new-instance v0, Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;

    const-string v1, "SlowSpatial"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;->SlowSpatial:Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;

    .line 24
    new-instance v0, Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;

    const-string v1, "DefaultEffects"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;->DefaultEffects:Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;

    .line 25
    new-instance v0, Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;

    const-string v1, "FastEffects"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;->FastEffects:Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;

    .line 26
    new-instance v0, Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;

    const-string v1, "SlowEffects"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;->SlowEffects:Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;

    invoke-static {}, Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;->$values()[Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;

    move-result-object v0

    sput-object v0, Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;->$VALUES:[Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;
    .locals 1

    .line 0
    const-class v0, Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;

    return-object p0
.end method

.method public static values()[Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;->$VALUES:[Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;

    return-object v0
.end method
