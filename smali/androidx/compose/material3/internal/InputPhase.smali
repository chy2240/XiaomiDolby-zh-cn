.class final enum Landroidx/compose/material3/internal/InputPhase;
.super Ljava/lang/Enum;
.source "TextFieldImpl.kt"


# static fields
.field private static final synthetic $VALUES:[Landroidx/compose/material3/internal/InputPhase;

.field public static final enum Focused:Landroidx/compose/material3/internal/InputPhase;

.field public static final enum UnfocusedEmpty:Landroidx/compose/material3/internal/InputPhase;

.field public static final enum UnfocusedNotEmpty:Landroidx/compose/material3/internal/InputPhase;


# direct methods
.method private static final synthetic $values()[Landroidx/compose/material3/internal/InputPhase;
    .locals 3

    .line 0
    sget-object v0, Landroidx/compose/material3/internal/InputPhase;->Focused:Landroidx/compose/material3/internal/InputPhase;

    sget-object v1, Landroidx/compose/material3/internal/InputPhase;->UnfocusedEmpty:Landroidx/compose/material3/internal/InputPhase;

    sget-object v2, Landroidx/compose/material3/internal/InputPhase;->UnfocusedNotEmpty:Landroidx/compose/material3/internal/InputPhase;

    filled-new-array {v0, v1, v2}, [Landroidx/compose/material3/internal/InputPhase;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 467
    new-instance v0, Landroidx/compose/material3/internal/InputPhase;

    const-string v1, "Focused"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/compose/material3/internal/InputPhase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/compose/material3/internal/InputPhase;->Focused:Landroidx/compose/material3/internal/InputPhase;

    .line 470
    new-instance v0, Landroidx/compose/material3/internal/InputPhase;

    const-string v1, "UnfocusedEmpty"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/compose/material3/internal/InputPhase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/compose/material3/internal/InputPhase;->UnfocusedEmpty:Landroidx/compose/material3/internal/InputPhase;

    .line 473
    new-instance v0, Landroidx/compose/material3/internal/InputPhase;

    const-string v1, "UnfocusedNotEmpty"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroidx/compose/material3/internal/InputPhase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/compose/material3/internal/InputPhase;->UnfocusedNotEmpty:Landroidx/compose/material3/internal/InputPhase;

    invoke-static {}, Landroidx/compose/material3/internal/InputPhase;->$values()[Landroidx/compose/material3/internal/InputPhase;

    move-result-object v0

    sput-object v0, Landroidx/compose/material3/internal/InputPhase;->$VALUES:[Landroidx/compose/material3/internal/InputPhase;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 465
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/compose/material3/internal/InputPhase;
    .locals 1

    .line 0
    const-class v0, Landroidx/compose/material3/internal/InputPhase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/compose/material3/internal/InputPhase;

    return-object p0
.end method

.method public static values()[Landroidx/compose/material3/internal/InputPhase;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/material3/internal/InputPhase;->$VALUES:[Landroidx/compose/material3/internal/InputPhase;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/compose/material3/internal/InputPhase;

    return-object v0
.end method
