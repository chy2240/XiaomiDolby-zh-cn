.class final enum Landroidx/compose/material3/SliderComponents;
.super Ljava/lang/Enum;
.source "Slider.kt"


# static fields
.field private static final synthetic $VALUES:[Landroidx/compose/material3/SliderComponents;

.field public static final enum THUMB:Landroidx/compose/material3/SliderComponents;

.field public static final enum TRACK:Landroidx/compose/material3/SliderComponents;


# direct methods
.method private static final synthetic $values()[Landroidx/compose/material3/SliderComponents;
    .locals 2

    .line 0
    sget-object v0, Landroidx/compose/material3/SliderComponents;->THUMB:Landroidx/compose/material3/SliderComponents;

    sget-object v1, Landroidx/compose/material3/SliderComponents;->TRACK:Landroidx/compose/material3/SliderComponents;

    filled-new-array {v0, v1}, [Landroidx/compose/material3/SliderComponents;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1868
    new-instance v0, Landroidx/compose/material3/SliderComponents;

    const-string v1, "THUMB"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/compose/material3/SliderComponents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/compose/material3/SliderComponents;->THUMB:Landroidx/compose/material3/SliderComponents;

    .line 1869
    new-instance v0, Landroidx/compose/material3/SliderComponents;

    const-string v1, "TRACK"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/compose/material3/SliderComponents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/compose/material3/SliderComponents;->TRACK:Landroidx/compose/material3/SliderComponents;

    invoke-static {}, Landroidx/compose/material3/SliderComponents;->$values()[Landroidx/compose/material3/SliderComponents;

    move-result-object v0

    sput-object v0, Landroidx/compose/material3/SliderComponents;->$VALUES:[Landroidx/compose/material3/SliderComponents;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1867
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/compose/material3/SliderComponents;
    .locals 1

    .line 0
    const-class v0, Landroidx/compose/material3/SliderComponents;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/compose/material3/SliderComponents;

    return-object p0
.end method

.method public static values()[Landroidx/compose/material3/SliderComponents;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/material3/SliderComponents;->$VALUES:[Landroidx/compose/material3/SliderComponents;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/compose/material3/SliderComponents;

    return-object v0
.end method
